<%@ Page Language="C#" masterpagefile="../_catalogs/masterpage/CHDA/CHDA.master" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- **************************************************
     Site   	: CHDA Intranet
     Page   	: Home
     Author 	: Jason Clark     
     Date   	: March 2016
     
     Modified By: Jonathan Hinchliffe
     Date		: 14th and 15th June 2017
     Notes		: Added OOTB Performance list as a temporary solution

     Modified By: Jason Clark 
     Date		: Aug 2018
     Notes		: Redeveloped and redesigned to new branding and template.
     
     Modified By: Jason Clark
     Date		: Mar 2019
     Notes		: Updated page to work on SPO and Bootstrap 4
     ************************************************** --%>

<%@ Register TagPrefix="WpNs2" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WpNs1" Namespace="Microsoft.SharePoint.Portal.WebControls" Assembly="Microsoft.SharePoint.Portal, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="PlaceHolderAdditionalPageHead">

    <!-- STYLES -->
    <style type="text/css">

    </style> 

</asp:Content>

<%-- ***** For content to be added to the left container ***** --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageContent" runat="server"> 
    <div id="thisContent">
    </div>
</asp:Content>

<%-- ***** For code to be added at the end of the page body ***** --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageCode" runat="server">  

    <!-- SCRIPTS -->    
    <script type="text/javascript" src="/Style%20Library/maxuk/js/siteSlider.js"></script>    
    <script type="text/javascript"> 	            

        $(function(){
            $('#slideshow').append('<div class="carousel slide" id="slideshowApp" data-ride="carousel">' +                                    
                                '<div class="carousel-inner">' +
                                    '<div id="slideItems"></div>'+
                                    '<ul class="carousel-indicators" id="indicators">'+
                                    '</ul>'+                                       
                                    '<a class="carousel-control-prev" href="#slideshowApp" role="button" data-slide="prev">'+
                                        '<span class="carousel-control-prev-icon" aria-hidden="true"></span>'+
                                        '<span class="sr-only">Previous</span>'+
                                    '</a>'+
                                    '<a class="carousel-control-next" href="#slideshowApp" role="button" data-slide="next">'+
                                        '<span class="carousel-control-next-icon" aria-hidden="true"></span>'+
                                        '<span class="sr-only">Next</span>'+
                                    '</a>'+                                                                                                  
                                '</div>'+	
                            '</div>');            

            getSlideData();
        });
        
        $(window).on('load',function () {           					 	                 	
        });

    </script>
</asp:Content>                      