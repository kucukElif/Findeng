using DAL.Entity;
using DAL.Entity.Base;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;

namespace DAL.Context
{
  public  class AppDbContext : IdentityDbContext<AppUser, AppUserRole,Guid>
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        
        {
            

        }
        public DbSet<AppUserWork> AppUserWorks { get; set; }
        public DbSet<CVFile> CVFiles { get; set; }
        public DbSet<Post> Posts { get; set; }
        public DbSet<AppUserCV> AppUserCV { get; set; }
        public object AppUser { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<AppUser>()
                .HasOne(a => a.AppUserCV)
                .WithOne(b => b.AppUser)
                .HasForeignKey<AppUserCV>();



            base.OnModelCreating(modelBuilder);
        }
        public override int SaveChanges()
        {
            var modifiedEntries = ChangeTracker.Entries().Where(x => x.State == EntityState.Modified || x.State == EntityState.Added).ToList();
            string identity = WindowsIdentity.GetCurrent().Name;
            string computerName = Environment.MachineName;
            DateTime dateTime = DateTime.Now;
            string user = "admin";
            string ip = CoreEntity.GetHostName();
            foreach (var item in modifiedEntries)
            {
                CoreEntity coreEntity = item.Entity as CoreEntity;
                if (item != null)
                {
                    if (item.State == EntityState.Added)
                    {
                        coreEntity.CreatedAdUserName = identity;
                        coreEntity.CreatedComputerName = computerName;
                        coreEntity.CreatedDate = dateTime;
                        coreEntity.CreatedIP = ip;
                        coreEntity.CreatedBy = user;

                    }
                    else if (item.State==EntityState.Modified)
                    {
                        coreEntity.ModifiedAdComputerName = identity;
                        coreEntity.ModifiedComputerName = computerName;
                        coreEntity.ModifiedDate = dateTime;
                        coreEntity.ModifiedIP = ip;
                        coreEntity.ModifiedBy = user;
                    }

                }

            }
            return base.SaveChanges();
        }
    }
}
