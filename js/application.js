/*******************************************
		Application Functions
*******************************************/

/**** Init Application ****/
function initApplication() {
	$('#login_submit').on('click',function(){
		localStorage.logged_in = true;
		alert('log in');
	});
}