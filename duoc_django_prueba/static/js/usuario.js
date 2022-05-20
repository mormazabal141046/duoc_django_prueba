
function print_errors(errors){
    let lista = document.querySelector(".errors-list-users");
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

function validar_inputs(nombre,apellidos,fec_nac, email, telefono, categoria){
    let lista_errores = {
        nombre:"",
        apellidos:"",
        fec_nac:"",
        email:"",
        telefono:"",
        categoria:""
    };
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
    if(fec_nac == ""){
        lista_errores.fec_nac = "Debe agregar un Fecha Nacimiento";
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
    if(categoria == ""){
        lista_errores.categoria = "Debe agregar un Categoria";
    }else{
        lista_errores.categoria = "";
    }

    print_errors(lista_errores)
}

function enviar_usuario(){
    let fec_nac = document.querySelector("#inp-fecnac").value;
    let nombre = document.querySelector("#inp-nombre").value;
    let apellidos = document.querySelector("#inp-apellidos").value;
    let email = document.querySelector("#inp-email").value;
    let telefono = document.querySelector("#inp-tel").value;
    let categoria = document.querySelector("#inp-categoria").value;

    validar_inputs(nombre,apellidos,fec_nac, email, telefono, categoria);
}