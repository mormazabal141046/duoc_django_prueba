

function print_errors(errors){
    console.log("Errors", typeof(errors))
    let lista = document.querySelector(".errors-list");
    lista.innerHTML = "";
    let show = false;
    Object.entries(errors).forEach((item,v) => {
        if(item[1] != ""){
            show = true;
            lista.innerHTML += `<li>${item[1]}</li>`
        }
    })

    if(show){
        lista.classList.remove('d-none');
        lista.classList.add('d-block');
    }

}

function validar_inputs(asunto,nombre,apellidos,  email, telefono, mensaje){
    let lista_errores = {
        asunto:"",
        nombre:"",
        apellidos:"",
        email:"",
        telefono:"",
        mensaje:""
    };
   
    if(asunto == ""){
        lista_errores.asunto = "Debe agregar un Asunto";
    }else{
        lista_errores.asunto = "";
    }
    if(nombre == ""){
        lista_errores.nombre = "Debe agregar un Nombre";
    }else{
        lista_errores.nombre = "";
    }
    if(apellidos == ""){
        lista_errores.apellidos = "Debe agregar sus Apellidos";
    }else{
        lista_errores.apellidos = "";
    }
    if(email == ""){
        lista_errores.email = "Debe agregar un Email";
    }else{
        lista_errores.email = "";
    }
    if(telefono == ""){
        lista_errores.telefono = "Debe agregar un Telefono";
    }else{
        lista_errores.telefono = "";
    }
    if(mensaje == ""){
        lista_errores.mensaje = "Debe agregar un Mensaje";
    }else{
        lista_errores.mensaje = "";
    }

    print_errors(lista_errores)
}

function enviar_contacto(){
    let asunto = document.querySelector("#inp-asunto").value;
    let nombre = document.querySelector("#inp-nombre").value;
    let apellidos = document.querySelector("#inp-apellidos").value;
    let email = document.querySelector("#inp-email").value;
    let telefono = document.querySelector("#inp-tel").value;
    let copia = document.querySelector("#inp-copia").value;
    let mensaje = document.querySelector("#inp-mensaje").value;

    validar_inputs(asunto,nombre,apellidos, email, telefono, mensaje);
}