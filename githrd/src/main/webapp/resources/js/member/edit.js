$(document).ready(function(){
	$('#hbtn').click(function(){
		$(location).attr('href', '/www/');
	});
	
	$('#rbtn').click(function(){
		document.frm.reset();
	});
	
	$('#ebtn').click(function(){
		$('#frm').attr('action', '/www/member/infoEditProc.blp');
		$('#frm').submit();
	});
});