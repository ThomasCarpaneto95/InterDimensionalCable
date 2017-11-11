using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(InterDimensionalCable.Startup))]
namespace InterDimensionalCable
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
