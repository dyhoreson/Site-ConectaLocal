  var todosFornecedores = [];

  function carregarFornecedores() {
    fetch("http://localhost:3000/fornecedores")
      .then(res => res.json())
      .then(data => {
        todosFornecedores = data;
        mostrarFornecedores(todosFornecedores); // mostra todos no início
        configurarBusca();
        configurarFiltro(); // ativa filtro por categoria
      })
      .catch(err => console.error("Erro:", err));
  }

  function mostrarFornecedores(fornecedores) {
    var container = document.getElementById("fornecedores-container");
    container.innerHTML = "";

    if (!fornecedores || fornecedores.length === 0) {
      container.innerHTML = "<p>Nenhum profissional encontrado</p>";
      return;
    }

    fornecedores.forEach(fornecedor => {
      var cartao = document.createElement("div");
      cartao.className = "cartao-prestador";

      var categoria = fornecedor.categoria || "Geral";
      var nome = fornecedor.nome_anunciante || "Nome não informado";
      var descricao = fornecedor.descricao || "Descrição não disponível";


      cartao.innerHTML = `
        <div class="cabecalho-cartao">
          <div class="etiqueta-prestador">${categoria}</div>
        </div>
        <h3 class="titulo-prestador">${nome}</h3>
        <p class="descricao-prestador">${descricao}</p>
        <div class="detalhes-prestador">

        </div>
      `;

      var botao = document.createElement("button");
      botao.textContent = "Entrar em Contato";
      botao.onclick = () => mostrarContato(fornecedor);

      cartao.appendChild(botao);
      container.appendChild(cartao);
    });
  }

  function mostrarContato(fornecedor) {
    document.getElementById("popupTitulo").textContent = fornecedor.nome_anunciante;
    document.getElementById("popupDescricao").textContent = fornecedor.descricao;
    document.getElementById("popupContato").textContent = fornecedor.contato;
    document.getElementById("popupHorario").textContent = fornecedor.hora_inicio + " às " + fornecedor.hora_fim;
    document.getElementById("overlay").style.display = "flex";
  }

  document.addEventListener("DOMContentLoaded", () => {
    carregarFornecedores();

    document.getElementById("fecharPopup").addEventListener("click", () => {
      document.getElementById("overlay").style.display = "none";
    });
  });

  // 🔎 Filtro por nome
  function configurarBusca() {
    var campoBusca = document.getElementById("busca-nome");
    if (!campoBusca) return;

    campoBusca.addEventListener("input", function () {
      var texto = this.value.toLowerCase();
      var filtrados = todosFornecedores.filter(f => (f.nome_anunciante || "").toLowerCase().includes(texto));
      mostrarFornecedores(filtrados);
    });
  }

  // 📂 Filtro por categoria
  function configurarFiltro() {
    var select = document.getElementById("filtro-categoria");
    select.addEventListener("change", function () {
      var categoria = this.value;
      if (categoria === "todos") {
        mostrarFornecedores(todosFornecedores);
      } else {
        var filtrados = todosFornecedores.filter(f => f.categoria === categoria);
        mostrarFornecedores(filtrados);
      }
    });
  }