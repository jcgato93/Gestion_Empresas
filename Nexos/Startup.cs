using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Nexos.Startup))]
namespace Nexos
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
