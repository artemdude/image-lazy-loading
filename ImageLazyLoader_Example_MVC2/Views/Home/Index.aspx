<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="ImageLazyLoader" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image lazy loader</title>

    <script src="../../ImageLazyLoader/Script/jquery-1.4.1.js" type="text/javascript"></script>

    <script src="../../ImageLazyLoader/Script/ImageLazyLoader.js" type="text/javascript"></script>

    <style type="text/css">
        .img-lazy-bg
        {
            border: solid 1px #ccc;
            padding: 3px;
            background: #fff url(../ImageLazyLoader/Img/loader.gif) no-repeat scroll center center;
        }
    </style>
</head>
<body>

<h1 style="text-align:center">Image lazy loader</h1>

    <div style="width: 600px; margin: 0 auto">
       
        Simple loading images   <br /><br />
        <% for (int i = 1; i < 16; i++)
           {  %>
        <%= Html.Image("/Images/" + i + ".jpg", new {width = "100", height = "100", id = "testImg", @class = "img-lazy-bg"}) %>
        <% }%>
         <br /><br />
        Lazy loading images  <br /><br />
        <% for (int i = 1; i < 26; i++)
           {  %>
        <%= Html.ImageLazy("/Images/" + i + ".jpg", new {width = "100", height = "100", id = "testImg", @class = "img-lazy-bg"}) %>
        <% }%>
        <% for (int i = 1; i < 26; i++)
           {  %>
        <%= Html.ImageLazy("/Images/" + i + ".jpg", new {width = "100", height = "100", id = "testImg", @class = "img-lazy-bg"}) %>
        <% }%>
    </div>
</body>
</html>
