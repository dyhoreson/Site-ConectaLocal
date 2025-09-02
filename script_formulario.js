
const form = document.getElementById("formFornecedor");
const resposta = document.getElementById("resposta");

form.addEventListener("submit", function(e) {
  e.preventDefault();

  const dados = Object.fromEntries(new FormData(form));

  fetch("htt://localhost:300/fornecedores", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(dados)
  })
  .then(r => r.text())
  .then(txt => {
    resposta.textContent = txt;
    resposta.className = "mensagem sucesso";
  })
  .catch(err => {
    resposta.textContent = "Erro: " + err;
    resposta.className = "mensagem erro";
  });
});