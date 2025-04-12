using WebMVC.Configuration;
using WebMVC.Middleware;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllersWithViews();

builder.Services.InjectDbContexts();
builder.Services.InjectServices();
builder.Services.InjectUtilities();
builder.Services.ConfigureAuthentication(builder.Configuration);

var app = builder.Build();

app.UseHsts();

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseMiddleware<JwtCookieMiddleware>();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller}/{action}/{id?}");

app.Run();
