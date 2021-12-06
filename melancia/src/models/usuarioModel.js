var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = 
    // local
    // `SELECT * FROM usuario;`;

    // nuvem
    `SELECT * FROM [dbo].[usuario];`;


    console.log("Executando a instrução SQL: \n"+instrucao);
    return database.executar(instrucao);
}


function entrar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao =
    // local
    //  `SELECT * FROM Empresa WHERE email = '${email}' AND senha = '${senha}';`;

    //  nuvem
     `SELECT * FROM [dbo].[Empresa] WHERE email = '${email}' AND senha = '${senha}';`;


    console.log("Executando a instrução SQL: \n"+instrucao);
    return database.executar(instrucao);
}


function cadastrar(cnpj, razao, responsavel, email, senha) {

    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", cnpj, razao, responsavel, email, senha);
    var instrucao = 

    // local
    // `INSERT INTO Empresa (CNPJ, razaoEmp, responsavel, email, senha) VALUES ('${cnpj}', '${razao}', '${responsavel}', '${email}', '${senha}');`;

    // nuvem
    `INSERT INTO [dbo].[Empresa] (CNPJ, razaoEmp, responsavel, email, senha) VALUES ('${cnpj}', '${razao}', '${responsavel}', '${email}', '${senha}');`;

    console.log("Executando a instrução SQL: \n"+instrucao);
    return database.executar(instrucao);

}

function cadastrarFazenda(nomeFazenda,estado, cidade, logradouro, numero, complemento, qtd_canteiros, idEmpresa) {

    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", estado, cidade, logradouro, numero, complemento, qtd_canteiros, idEmpresa);
    var instrucao = 
    
    // local
    // `INSERT INTO fazenda (estado, cidade, logradouro, numero, complemento, qtd_canteiros, fkEmpresa) VALUES
    //      ('${estado}', '${cidade}', '${logradouro}', ${numero}, '${complemento}', ${qtd_canteiros}, ${idEmpresa});`;

    // nuvem
    `INSERT INTO [dbo].[fazenda] (nomeFazenda,estado, cidade, logradouro, numero, complemento, qtd_canteiros, fkEmpresa) VALUES
         ('${nomeFazenda}','${estado}', '${cidade}', '${logradouro}', ${numero}, '${complemento}', ${qtd_canteiros}, ${idEmpresa});`;



    console.log("Executando a instrução SQL: \n"+instrucao);
    return database.executar(instrucao);


}

function cadastrarFuncionario(nome_f, senha_f, email_f, tel_f, fkfaz_f, idEmpresa) {

    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome_f, senha_f, email_f, tel_f, fkfaz_f, idEmpresa);

    var instrucao = 
        // local
    // `INSERT INTO funcionario (nomeFunc, senhaFunc, emailFunc, telefone, fkFazenda) VALUES
    //          ('${nome_f}', '${senha_f}', '${email_f}', '${tel_f}', ${fkfaz_f});`;

        // nuvem
    `INSERT INTO [dbo].[funcionario] (nomeFunc, senhaFunc, emailFunc, telefone, fkFazenda) VALUES
             ('${nome_f}', '${senha_f}', '${email_f}', '${tel_f}', ${fkfaz_f});`;



    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    entrar,
    cadastrar,
    listar,
    cadastrarFazenda,
    cadastrarFuncionario
};