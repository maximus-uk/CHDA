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
        #usefulLinksGroup1, #usefulLinksSiteContacts{display:none}
    </style> 

</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">  
    
    <!-- SCRIPTS -->
    <script type="text/javascript" src="/Style%20Library/maxuk/js/siteSlider.js"></script>
    <script type="text/javascript"> 	            

        $(function () {
            $('#slideshowApp').removeClass('hidden');
            //getLinkData('Home');    	
            getSlideData();
        });
        
        $(window).on('load',function () {           					 	                 	
        });
        
        $('#slideshow').append('<div class="carousel slide hidden" id="slideshowApp" data-ride="carousel">' +                                    
                                    '<div class="carousel-inner">' +
                                        '<div class="carousel-item active">' +
                                            '<img src="/sites/chda/PublishingImages/News/Connections-01.svg" alt="First Slide">' +
                                            '<div class="carousel-caption">' +
                                                '<h4 class="display-4 text-white font-weight-bolder">This is the 1st Slide</h4>' +
                                                '<p>some text goes here...</p>' +
                                            '</div>' +                                        
                                        '</div>' +
                                        '<div class="carousel-item">' +
                                            '<img src="/sites/chda//PublishingImages/News/CY4%20Incentive%20Programme.svg" alt="Second Slide">' +
                                            '<div class="carousel-caption">' +
                                                '<h4 class="display-4 text-white font-weight-bolder">This is the 2nd Slide</h4>' +
                                                '<p>some text goes here...</p>' +
                                            '</div>' +                                             
                                        '</div>' +
                                        '<ul class="carousel-indicators">'+
                                            '<li data-target="#slideshowApp" data-slide-to="0" class="active"></li>'+
                                            '<li data-target="#slideshowApp" data-slide-to="1"></li>'+
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
                                '</div>')
    </script>

<!--
    <div class="carousel-item">
                                            <img src="/sites/chda/PublishingImages/News/ExpensesNew.svg" alt="Third Slide">
                                            <div class="carousel-caption">
                                                <h4 class="display-4 text-white font-weight-bolder">This is the 3rd Slide</h4>
                                                <p>some text goes here...</p>
                                            </div>                                             
                                        </div>
                                        <div class="carousel-item">
                                            <img src="/sites/chda//PublishingImages/News/MAX%20Foundation.svg" alt="Fourth Slide">
                                            <div class="carousel-caption">
                                                <h4 class="display-4 text-white font-weight-bolder">This is the 4th Slide</h4>
                                                <p>some text goes here...</p>
                                            </div>                                             
                                        </div> 
                                        <div class="carousel-item">
                                            <img src="/sites/chda/PublishingImages/News/Volume%20Update%20-%2011%20Feb-04.svg" alt="Fifth Slide">
                                            <div class="carousel-caption">
                                                <h4 class="display-4 text-white font-weight-bolder">This is the 5th Slide</h4>
                                                <p>some text goes here...</p>
                                            </div> 
                                        </div>  
                                        <div class="carousel-item">
                                            <img src="/sites/CHDA/PublishingImages/News/Weekly%20Draw.svg" alt="Sixth Slide">
                                            <div class="carousel-caption">
                                                <h4 class="display-4 text-white font-weight-bolder">This is the 6th Slide</h4>
                                                <p>some text goes here...</p>
                                            </div> 
                                        </div>                                          

-->
</asp:Content>                      