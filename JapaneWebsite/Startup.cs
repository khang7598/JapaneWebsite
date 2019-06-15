using JapaneWebsite.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JapaneWebsite.Startup))]
namespace JapaneWebsite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
           
            ConfigureAuth(app);
            createRolesandUsers();
        }
        private void createRolesandUsers()
        {
            ApplicationDbContext context = new ApplicationDbContext();
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            if (!roleManager.RoleExists("ADMIN"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "ADMIN";
                roleManager.Create(role);
                var user = new ApplicationUser();
                user.UserName = "admin@tkt.com";
                user.FirstName = "Admin";
                user.LastName = "Position";
                user.Email = "admin@tkt.com";
                string userPWD = "qweasd";
                var chkUser = userManager.Create(user, userPWD);
                if (chkUser.Succeeded)
                {
                    var result = userManager.AddToRole(user.Id, "ADMIN");
                }
            }
            if (!roleManager.RoleExists("MANAGER"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "MANAGER";
                roleManager.Create(role);
                var uManager = new ApplicationUser();
                uManager.UserName = "manager@tkt.com";
                uManager.FirstName = "Manager";
                uManager.LastName = "Position";
                uManager.Email = "manager@tkt.com";
                string userManagerPWD = "qweasd";
                var chkUserManager = userManager.Create(uManager, userManagerPWD);
                if (chkUserManager.Succeeded)
                {
                    var result = userManager.AddToRole(uManager.Id, "MANAGER");
                }
            }
            if (!roleManager.RoleExists("MEMBER"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "MEMBER";
                roleManager.Create(role);
            }
        }
    }
}
