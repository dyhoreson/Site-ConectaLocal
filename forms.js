const formulario = document.getElementById("form-fornecedor");

formulario.addEventListener('submit', function(evento) {
    evento.preventDefault();

    const dados = {
        nome_anunciante: document.getElementById('nome_anunciante').value,
        descricao: document.getElementById('descricao').value,
        categoria: document.getElementById('categoria').value,
        contato: document.getElementById('contato').value,
        cpf_cnpj: document.getElementById('cpf_cnpj').value,
        hora_inicio: document.getElementById('hora_inicio').value,
        hora_fim: document.getElementById('hora_fim').value,
    };

    fetch('http://localhost:3000/fornecedores', {
        method: 'POST',
        headers: {'Content-Type':'application/json'},
        body: JSON.stringify(dados)
    })
    .then(resposta => resposta.json())
    .then(resposta => {
        const mensagem = document.getElementById("resposta");
        mensagem.innerText = 'Fornecedor cadastrado: ' + JSON.stringify(resposta);
    })
    .catch(error => {
        const mensagem = document.getElementById("resposta");
        mensagem.innerText = 'Falha ao cadastrar: ' + error;
    });
});
