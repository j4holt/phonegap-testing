/****************************************************** 
		Local Storage and Database Code 
*******************************************************/
/* Create Database */
var db = openDatabase('stratus', '1.0', 'Application DB', 32 * 1024 * 1024);

/* Initialize DB */
function initDB() {
	db.transaction(function (tx) {  
		tx.executeSql('CREATE TABLE IF NOT EXISTS LOGS (id unique, log)');
		tx.executeSql('INSERT INTO LOGS (id, log) VALUES (1, "foobar")');
		tx.executeSql('INSERT INTO LOGS (id, log) VALUES (2, "logmsg")');
	});
}