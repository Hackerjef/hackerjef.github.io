/*!
 * redirect Thing by Hacker jeff
 * http://hackerjef.github.io/
 * <input type="text" id="(ID)" />
 * <input type="submit" value="submit" onclick="goToPage();" />
 */

function google() {
    var google = document.getElementById('google').value;
    window.location = "https://www.google.com/search?q=" + google;
}
function steamrep() {
    var steamrep = document.getElementById('steamrep').value;
    window.location = "https://steamrep.com/search?q=" + steamrep;
}
function nhsbans() {
    var nhsbans = document.getElementById('nhsbans').value;
    window.location = "http://bans.neonheightsservers.ca/index.php?p=banlist&searchText=" + nhsbans;
}
function nhscomms() {
    var nhscomms = document.getElementById('nhscomms').value;
    window.location = "http://bans.neonheightsservers.ca/index.php?p=commslist&searchText=" + nhscomms;
}
function steam() {
    var steam = document.getElementById('steam').value;
    window.location = "https://steamcommunity.com/search/users/#filter=users&text=" + steam;
}
function youtube() {
    var youtube = document.getElementById('youtube').value;
    window.location = "https://www.youtube.com/results?search_query=" + youtube;
}
function reptf() {
    var reptf = document.getElementById('reptf').value;
    window.location = "https://rep.tf/" + reptf;
}
function download() {
    var download = document.getElementById('download').value;
    window.location = "http://hackerjef.github.io/downloads.html" + download;
}
