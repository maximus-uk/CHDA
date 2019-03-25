<%@ Page Language="C#" masterpagefile="../_catalogs/masterpage/CHDA/test.master" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">  
    
    <div id="thisContent">
        hello this is a test
    </div>

    <!-- SCRIPTS -->
    <script type="text/javascript" src="/Style%20Library/maxuk/js/siteSlider.js"></script>
    <script type="text/javascript"> 	            

        $(document).ready(function(){
            
            contentCode=jQuery('#thisContent').html(); 
            //$('#newContent').append(contentCode);
        });

    </script>
</asp:Content> 