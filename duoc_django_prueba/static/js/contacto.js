

function print_errors(errors){
    let lista = document.querySelector(".errors-list");
    lista.innerHTML = "";
    let send = true;
    Object.entries(errors).forEach((item,v) => {
        if(item[1] != ""){
            send = false;
            lista.innerHTML += `<li>${item[1]}</li>`
        }
    })

    if(!send){
        lista.classList.remove('d-none');
        lista.classList.add('d-block');
    }
    return send
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
   let send = true;
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

    send = print_errors(lista_errores)
    return send
}

function enviar_contacto(){
    let asunto = document.querySelector("#inp-asunto").value;
    let nombre = document.querySelector("#inp-nombres").value;
    let apellidos = document.querySelector("#inp-apellidos").value;
    let email = document.querySelector("#inp-email").value;
    let telefono = document.querySelector("#inp-tel").value;
    let mensaje = document.querySelector("#inp-mensaje").value;

    let send = validar_inputs(asunto,nombre,apellidos, email, telefono, mensaje);
    if(send){
        let frm_contacto =  document.querySelector('#frm-contacto')
        frm_contacto.submit();
    }

}