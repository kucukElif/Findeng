﻿using DAL.Entity;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.CustomTagHelper
{
    [HtmlTargetElement("td", Attributes = "user-roles")]
    public class UserRolesName: TagHelper
    {
        public UserManager<AppUser> UserManager { get; set; }
        public UserRolesName(UserManager<AppUser> userManager)
        {
            this.UserManager = userManager;
        }
        [HtmlAttributeName("user-roles")]
        public string UserId { get; set; }
        

        public override async Task ProcessAsync(TagHelperContext context, TagHelperOutput output)
        {
            AppUser user = await UserManager.FindByIdAsync(UserId);
            IList<string> roles = await UserManager.GetRolesAsync(user);
            string html = string.Empty;
            roles.ToList().ForEach(x =>
            {
                html += $"<span class='badge bagde-info'>{x}</span>";
            });
            output.Content.SetHtmlContent(html);
        }
    }
}
