<%@ Application Language="C#" %>

<script runat="server">
    void Application_BeginRequest(object sender, EventArgs e)
    {
        HttpApplication app = sender as HttpApplication;
        if (app.Request.Path.IndexOf("FriendlyPage.html") > 0)
        {
            app.Context.RewritePath("/Default.aspx");
        }
    }
    void Application_Start(object sender, EventArgs e) 
    {
      

    }
    
    void Application_End(object sender, EventArgs e) 
    {
       

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
     

    }

    void Session_Start(object sender, EventArgs e) 
    {
        Session["User"] = "";
        Session["Admin"] = "";
        Session["Role"] = "";
        Session["ASPNETShoppingCart"] = null;
    }

    void Session_End(object sender, EventArgs e) 
    {
  

    }
       
</script>
