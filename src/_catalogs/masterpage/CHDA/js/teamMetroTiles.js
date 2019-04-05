'use strict';

function getTeamTiles(appURL) {
    
    var method = "GetListItems";
    var list = "metrotiles";
    var count = 1;
    var rowNum = 1;
    var fields = "<ViewFields>" +
        "<FieldRef Name='ID' />" +
        "<FieldRef Name='TileOrder' />" +
        "<FieldRef Name='Title' />" +
        "<FieldRef Name='Description' />" +
        "<FieldRef Name='LinkURL' />" +
        "<FieldRef Name='ImageURL' />" +
        "<FieldRef Name='LaunchBehaviour' />" +
        "</ViewFields>";
    var query = "<Query><OrderBy><FieldRef Name='TileOrder' Ascending='TRUE'/></OrderBy></Query>";

    $('#metrotiles').append('<div class="row" id="row' + rowNum + '"></div>');
    
    $().SPServices({
        operation: method,
        async: false,
        webURL: appURL,
        listName: list,
        CAMLViewFields: fields,
        CAMLQuery: query,
        completefunc: function (xData, Status) {
            $(xData.responseXML).SPFilterNode("z:row").each(function () {

                // assign SP list item                                             
                var tileTitle = $(this).attr("ows_Title");
                var tileDesc = $(this).attr("ows_Description");
                var tileLink = $(this).attr("ows_LinkURL").split(',')[0];
                var tileImage = $(this).attr("ows_ImageURL").split(',')[0];
                var tileTarget = $(this).attr("ows_LaunchBehaviour");

                if (tileDesc === undefined) { tileDesc = "" };

                $('#row' + rowNum).append('<a href="' + tileLink + '" target="' + tileTarget + '" class="metrotile text-decoration-none text-center">' +
                    '<img class="img-responsive rounded" src="' + tileImage + '">' +
                    '<div class="overlay">' +
                    '<h5 class="font-weight-bolder text-decoration-none text-uppercase text-white text-center">' + tileTitle + '</h5>' +
                    '<p class="info text-decoration-none text-white font-weight-normal rounded">' + tileDesc + '</p>' +
                    '</div>' +
                    '</a>');
                if (count % 3 === 0) {
                    rowNum++;
                    $('#metrotiles').append('<div class="row" id="row' + rowNum + '"></div>');
                }
                count++;
            });
        }
    });
}
