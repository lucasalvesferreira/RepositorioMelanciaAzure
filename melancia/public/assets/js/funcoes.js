// sessão
function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USUARIO;
    var razaoEmp = sessionStorage.razaoEmp_USUARIO;
    var responsavel = sessionStorage.responsavel_USUARIO;
    var id = sessionStorage.ID_EMPRESA;
    console.log("email: "+email+"\n razao: "+razaoEmp+"\n responsavel: "+responsavel+"\n id: "+id);
    if (email != null && razaoEmp != null && responsavel != null && id != null) {
        b_usuario.innerHTML = nome;       
        // finalizarAguardar();  
    } else {
        window.location = "../Acesso.html";
    }
}
   
function limparSessao() {
    // aguardar();
    sessionStorage.clear();
   // finalizarAguardar();
    window.location = "../Acesso.html";
}

// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex"; 
}

function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";
    
    var divErrosLogin = document.getElementById("div_erros_login");
    if(texto) {
        divErrosLogin.innerHTML = texto;
    }
}


// modal
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "flex";
}

function fecharModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "none";
}

