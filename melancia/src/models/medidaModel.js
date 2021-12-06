var database = require("../database/config");

function buscarUltimasMedidas(idCanteiro, limite_linhas) {
    
//local
    // instrucaoSql = `select 
    //                     temperatura_lm35, 
    //                     umidade, 
    //                     hr_medida,
    //                     DATE_FORMAT(hr_medida,'%H:%i:%s') as momento_grafico
    //                     from medidas
    //                     where fkcanteiro = ${idCanteiro}
    //                     order by idMedidas desc limit ${limite_linhas}`;


//nuvem
    instrucaoSql = `select      
                        temperatura_lm35, 
                        umidade, 
                        hr_medida,
                        convert(varchar, getdate(),13) as momento_grafico
                        from [dbo].[medidas]
                        where fkcanteiro = ${idCanteiro}
                        order by hr_medida`;



console.log("Executando a instrução SQL: \n" + instrucaoSql);
return database.executar(instrucaoSql);
    
}

function buscarMedidasEmTempoReal(idCanteiro) {

    //local
    // instrucaoSql = `select temperatura_lm35, 
    //                         umidade, 
    //                         DATE_FORMAT(hr_medida,'%H:%i:%s') as momento_grafico, 
    //                         fkcanteiro
    //                         from medidas where fkcanteiro = ${idCanteiro} 
    //                         order by idMedidas desc limit 1`;

//nuvem
    instrucaoSql = `select temperatura_lm35, 
                            umidade, 
                            convert(varchar, getdate(),13) as momento_grafico,
                            fkcanteiro
                            from [dbo].[medidas] where fkcanteiro = ${idCanteiro} 
                            order by hr_medida`;


console.log("Executando a instrução SQL: \n" + instrucaoSql);
return database.executar(instrucaoSql);

}


function buscarMediaUmidade(idCanteiro) {
// //local
    // instrucaoSql = ` select round( avg(umidade),2) as mediaUmi from medidas ;`;

    //nuvem
    instrucaoSql = ` select round( avg(umidade),2) as mediaUmi from [dbo].[medidas] ;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



function buscarMediaTemperatura(idCanteiro) {
   // //local
    // instrucaoSql = ` select round( avg(temperatura_lm35),2) as mediaTemp from medidas ;`;
    
     //nuvem
     instrucaoSql = ` select round( avg(temperatura_lm35),2) as mediaTemp from [dbo].[medidas] ;`;

     console.log("Executando a instrução SQL: \n" + instrucaoSql);
     return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal,
    buscarMediaUmidade,
    buscarMediaTemperatura
}