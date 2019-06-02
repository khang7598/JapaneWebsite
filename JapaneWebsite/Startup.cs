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
        }
    }
}
