const express = require('express');
const cors = require('cors');
const consulta = require('./database');

const app = express(); 

app.use(cors());

app.use(express.json());

app.get('/fornecedores', function(requisicao, resposta){

    consulta.query('select * from fornecedores;', function(error, result){

        if(error){
            resposta.send('Fornecedor Não Cadastrado');
        }
        else{
            resposta.send(result.rows);
        }

    });

});

app.post('/fornecedores', function(requisicao, resposta){

    const descricao = requisicao.body.descricao;
    const categoria = requisicao.body.categoria;
    const contato = requisicao.body.contato;
    const nome_anunciante = requisicao.body.nome_anunciante;
    const cpf_cnpj = requisicao.body.cpf_cnpj;
    const hora_inicio = requisicao.body.hora_inicio;
    const hora_fim = requisicao.body.hora_fim;
    // const data_criacao = requisicao.body.data_criacao;
    // const ativo = requisicao.body.ativo

    consulta.query(`insert into fornecedores (descricao, categoria, contato, nome_anunciante, cpf_cnpj, hora_inicio, hora_fim) values ('${descricao}', '${categoria}', '${contato}', '${nome_anunciante}', '${cpf_cnpj}', '${hora_inicio}', '${hora_fim}')`, function(error, result){

        if(error){
                resposta.status(500).json({ erro: 'Não foi possível cadastrar o fornecedor', detalhes: error.message });
            }
        else{
                resposta.status(201).json({ mensagem: 'Fornecedor cadastrado com sucesso!' });
            }
    });


});

app.listen(3000, function(){
    console.log('Servidor iniciado na porta 3000!')});






    
