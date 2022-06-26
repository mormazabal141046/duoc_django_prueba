
function print_errors(errors){
    let lista = document.querySelector(".errors-list-users");
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

    return send;
}

function validar_inputs(rut, nombre,apellidos,fec_nac, email, telefono, membresia){
    let lista_errores = {
        rut:"",
        nombre:"",
        apellidos:"",
        fec_nac:"",
        email:"",
        telefono:"",
        membresia:""
    };
    let send = true;
    if(rut == ""){
        lista_errores.rut = "Debe agregar un RUT";
    }else{
        lista_errores.rut = "";
    }
    if(nombre == ""){
        lista_errores.nombre = "Debe agregar sus Nombres";
    }else{
        lista_errores.nombre = "";
    }
    if(apellidos == ""){
        lista_errores.apellidos = "Debe agregar sus Apellidos";
    }else{
        lista_errores.apellidos = "";
    }
    if(fec_nac == ""){
        lista_errores.fec_nac = "Debe Seleccionar su Fecha Nacimiento";
    }else{
        lista_errores.fec_nac = "";
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
    if(membresia == ""){
        lista_errores.membresia = "Debe Seleccionar una Membresia";
    }else{
        lista_errores.membresia = "";
    }

    send = print_errors(lista_errores)
    return send
}

function enviar_usuario(){
    let rut = document.querySelector("#inp-run").value;
    let nombre = document.querySelector("#inp-nombres").value;
    let apellidos = document.querySelector("#inp-apellidos").value;
    let fec_nac = document.querySelector("#inp-fecnac").value;
    let email = document.querySelector("#inp-email").value;
    let telefono = document.querySelector("#inp-tel").value;
    let membresia = document.querySelector("#inp-membresia").value;

    let send = validar_inputs(rut, nombre,apellidos,fec_nac, email, telefono, membresia);
    if(send){
        let frm_registro =  document.querySelector('#frm-registro-usuario')
        frm_registro.submit();
    }
}