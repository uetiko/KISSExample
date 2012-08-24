/**
 * @author Angel Barrientos
 */

function initEvents() {
	insert();
	consulta();
	consultaTodos();
}

function insert(){
	$('#botonMaligno').click(function() {
		var usr = {
				idMember : $('#mebrecia').val(),
				pais : $('#pais').val(),
				userName : $('#userName').val(),
				nombre : $('#name').val
		}
		$.ajax({
			url : '../src/com.silent.kiss.cgi/cgi.php',
			dataType : 'json',
			type : "POST",
			data : {
				peticion : true,
				action : 'insertar',
				datos : usr
			},
			complete : function(response) {
				
			},
			success : function(response, textStatus, jqXHR){
				alert(response.mensaje);
			},
			error : function(response, textStatus, jqXHR) {
				alert(textStatus);
			}
		});

	});
}

function consultaTodos(){
	$('#botonAll').click(function() {
		$.ajax({
			url : '../src/com.silent.kiss.cgi/cgi.php',
			dataType : 'json',
			type : "POST",
			data : {
				peticion : true,
				action : 'ConsultaUsuarios'
			},
			complete : function(response) {
				
			},
			success : function(response, textStatus, jqXHR){
				for ( var int = 0; int < response.usuarios.length; int++) {
					$('#showUsuarios').append('id: ' + response.usuarios[int].id_usr + '<br />');
					$('#showUsuarios').append('membrecia: ' + response.usuarios[int].membrecia + '<br />');
					$('#showUsuarios').append('pais: ' + response.usuarios[int].pais + '<br />');
					$('#showUsuarios').append('nombre de usuario: ' + response.usuarios[int].username + '<br />');
					$('#showUsuarios').append('nombre: ' + res.usuarios.nombre + '<br />');
					$('#showUsuarios').append('<br />');
				}
			},
			error : function(response, textStatus, jqXHR) {
				alert(textStatus);
			}
		});

	});
}


function consulta(){
	$('#botonConsulta').click(function() {
		var usr = {
				idUsuario : $('#idUsuario').val()
		}
		$.ajax({
			url : '../src/com.silent.kiss.cgi/cgi.php',
			dataType : 'json',
			type : "POST",
			data : {
				peticion : true,
				action : 'consutaUsuario',
				usuario : usr
			},
			complete : function(response) {
				
			},
			success : function(response, textStatus, jqXHR){
				var usuario = response.usuario;
				for ( var int = 0; int < response.usuarios.length; int++) {
					$('#showUsuarios').append('membrecia: ' + response.usuarios[int].membrecia + '<br />');
					$('#showUsuarios').append('pais: ' + response.usuarios[int].pais + '<br />');
					$('#showUsuarios').append('nombre de usuario: ' + response.usuarios[int].usuario + '<br />');
					$('#showUsuarios').append('nombre: ' + response.usuarios[int].orden + '<br />');
					$('#showUsuarios').append('nombre: ' + response.usuarios[int].sucursal + '<br />');
					$('#showUsuarios').append('nombre: ' + response.usuarios[int].producto + '<br />');
					$('#showUsuarios').append('<br />');					
				}

			},
			error : function(response, textStatus, jqXHR) {
				alert(textStatus);
			}
		});

	});
}

