using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BLL.Abstract;
using BLL.Repository;
using DAL.Context;
using DAL.Entity;
using FindengWinUI.CutsomValidation;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NETCore.MailKit.Extensions;
using NETCore.MailKit.Infrastructure.Internal;

namespace FindengWinUI
{
    public class Startup
    {
        private readonly IConfiguration configuration;

        public Startup(IConfiguration configuration)
        {
            this.configuration = configuration;
        }
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddScoped<IClaimsTransformation, ClaimProvider.ClaimProvider>();
            services.AddMvc(x => x.EnableEndpointRouting = false);

            services.AddDbContext<AppDbContext>(options =>
            options.UseSqlServer(configuration.GetConnectionString("DefaultConnection"),
            b => b.MigrationsAssembly("FindengWinUI")));

            services.AddTransient<IAppUserWorkService, AppUserWorkRepository>();
            services.AddTransient<IPostService, PostRepository>();
            services.AddTransient<IAppUserCV, AppUserCVRepository>();
            services.AddTransient<ICVFileService, CVFileRepository>();
            services.AddTransient<IAuthorizationHandler, ExpireDateExchangeHandler>();
            services.AddAuthorization(opts =>
            {
                opts.AddPolicy("AnkaraPolicy", policy =>
                {
                    policy.RequireClaim("city", "ankara");
                });
                opts.AddPolicy("ViolancePolicy", policy =>
                {
                    policy.RequireClaim("violance");
                });
                opts.AddPolicy("ExchangePolicy", policy =>
                {
                    policy.AddRequirements(new ExpireDateExchangeRequirement());
                });

            });




            services.AddAuthentication().AddFacebook(opts =>
            {
                opts.AppId = configuration["Authentication:Facebook:AppId"];
                opts.AppSecret = configuration["Authentication:Facebook:AppSecret"];

            }).AddGoogle(opts =>
            {

                opts.ClientId = configuration["Authentication:Google:ClientID"];
                opts.ClientSecret = configuration["Authentication:Google:ClientSecret"];
            });





            services.AddIdentity<AppUser, AppUserRole>(options =>
            {
                options.User.RequireUniqueEmail = true;
                options.User.AllowedUserNameCharacters =
           "abcçdefgðhýijklmnoöpqrsþtuüvwxyzABCÇDEFGÐHIÝJKLMNOÖPQRSÞTUVWXYZ0123456789-._@+";
                options.Password.RequiredLength = 8;
                options.Password.RequireNonAlphanumeric = true;
                options.Password.RequireLowercase = true;
                options.Password.RequireUppercase = true;
                options.Password.RequireDigit = true;

            }).AddPasswordValidator<CustomPasswordValidator>().AddErrorDescriber<CustomIdentityErrorDescriber>()
            .AddEntityFrameworkStores<AppDbContext>().AddDefaultTokenProviders();


            services.AddMvc(x => x.EnableEndpointRouting = false);

            CookieBuilder cookieBuilder = new CookieBuilder();
            cookieBuilder.Name = "LoginCookie";
            cookieBuilder.HttpOnly = false;
            cookieBuilder.SameSite = SameSiteMode.Lax;
            cookieBuilder.SecurePolicy = CookieSecurePolicy.SameAsRequest;


            services.ConfigureApplicationCookie(x =>
            {
                x.LoginPath = new PathString("/Account/Login");
                x.Cookie = cookieBuilder;
                x.ExpireTimeSpan = TimeSpan.FromDays(60);
                x.AccessDeniedPath = new PathString("/Account/AccessDenied");
                x.SlidingExpiration = true;
            });

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            app.UseAuthentication();
            app.UseAuthorization();
            app.UseRouting();
            app.UseStaticFiles();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                  name: "areas",
                  template: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
                );

                routes.MapRoute(
               name: "default",
               template: "{controller=Home}/{action=Index}/{id?}"
             );


            });


        }
    }
}
