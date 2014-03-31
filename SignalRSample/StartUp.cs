using System.Reflection;
using Microsoft.Owin;
using Owin;
using SignalRSample;

[assembly: OwinStartup(typeof(Startup))]
namespace SignalRSample
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();
        }
    }
}
