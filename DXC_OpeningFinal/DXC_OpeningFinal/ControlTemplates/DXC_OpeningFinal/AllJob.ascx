<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllJob.ascx.cs" Inherits="DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal.AllJob" %>
<link href="/_layouts/15/Style/CSS.css" rel="stylesheet" type="text/css" />
<script src="~SiteCollection/_layouts/15/JScript/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="~SiteCollection/_layouts/15/JScript/jquery.dataTables.min.js" type="text/javascript"></script>
<link href="/_layouts/15/Style/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {
        $('#tablealljob').dataTable({
        });
    });
</script>

<table id="tablealljob">
    <tbody>
        <asp:Repeater ID="rptdatatable" runat="server">
            <ItemTemplate>
                <section id="dataAllJob">
                    <div class="<%# DataBinder.Eval(Container.DataItem, "Status").ToString()%>">
                        <%# DataBinder.Eval(Container.DataItem, "Status") %>
                    </div>
                    <div id="jobtitle">
                        <h2><%# DataBinder.Eval(Container.DataItem, "_JobTitle") %> </h2>
                    </div>

                    <div id="shortdescription">
                        <%# DataBinder.Eval(Container.DataItem, "ShortDescription") %>
                    </div>
                    <a href="#">read more</a>
                    <hr width="50%" />
                </section>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
