using Microsoft.Owin;
using Owin;
using System;
using System.Threading.Tasks;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;

[assembly: OwinStartup(typeof(Emmas_ProjectWebApp.Startup1))]

namespace Emmas_ProjectWebApp
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                CookieName = "EmmasCookie",
                LoginPath = new PathString("/LogIn"),
                LogoutPath = new PathString("/LogIn"),
                ExpireTimeSpan = System.TimeSpan.FromMinutes(5)
            });
        }
    }
}
