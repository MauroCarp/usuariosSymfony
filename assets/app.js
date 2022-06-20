/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import './styles/app.css';

import 'datatables.net-dt/css/jquery.dataTables.css'

import $ from 'jquery';

// start the Stimulus application
import './bootstrap';

import 'datatables.net/js/jquery.dataTables'


//NUEVO USUARIO
$('#btn-agregar-usuario').on('click',()=>{

    $('#form-nuevo-usuario').toggleClass('d-none')

    $('#form-editar-usuario').addClass('d-none')



})

//ELIMINAR USUARIO
$('.tablaUsuarios').on('click','.btnEliminarUsuario',function () {

    let idUsuario = $(this).attr('idusuario')

    window.location = `EliminarUsuario/${idUsuario}`

})

//EDITAR USUARIO
$('.tablaUsuarios').on('click','.btnEditarUsuario',function () {

    let idUsuario = $(this).attr('idusuario')

    console.log(idUsuario)

    $('#form-nuevo-usuario').addClass('d-none')

    $('#form-editar-usuario').toggleClass('d-none')

    console.log('gola')

    $.ajax({
    type: 'POST',
    url: "/VerUsuario",
    data: ({id: idUsuario}),
    async: true,
    dataType: "json",
    success: function (data) {
    console.log(data)
    }
    });

})

//TABLA USUARIOS
$('.tablaUsuarios').DataTable({
    "deferRender": true,
    "retrieve": true,
    "processing": true,
    "searching": false,
    "info": false,
    "bLengthChange": false,
    "pageLength": 10,
    "language": {
        "sProcessing": "Procesando...",
        "sLengthMenu": "Mostrar _MENU_ registros",
        "sZeroRecords": "No se encontraron resultados",
        "sEmptyTable": "Ningún dato disponible en esta tabla",
        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0",
        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
        "sInfoPostFix": "",
        "sSearch": "Buscar:",
        "sUrl": "",
        "sInfoThousands": ",",
        "sLoadingRecords": "Cargando...",
        "oPaginate": {
            "sFirst": "Primero",
            "sLast": "Último",
            "sNext": "Siguiente",
            "sPrevious": "Anterior"
        }
    }
});

//CAMBIAR ESTADO USUARIO

$('.tablaUsuarios').on('click','.btnEstado',function(){

    let id = $(this).attr('idUsuario')

    window.location = `DarAltaBaja/${id}`

})