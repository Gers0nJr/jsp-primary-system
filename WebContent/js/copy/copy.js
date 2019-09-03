function copyElement(id) 
{
	var element = document.getElementById(id);
	var range = document.createRange();
	range.selectNode(element);
	window.getSelection().removeAllRanges();
	window.getSelection().addRange(range);
	document.execCommand('Copy');
}