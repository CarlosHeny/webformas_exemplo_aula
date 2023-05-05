const carregaCidades = function (obj) {
    // Pega o valor selecionado no DropDownList.
    const estadoId = obj.value;

    // Chama a rota "cidades" usando o método fetch.
    fetch(`/cidades?id_estado=${estadoId}`).then(response => {
        // Verifica se a resposta foi bem sucedida.
        if (!response.ok) {
            alert('Não foi possível carregar as cidades.');
        }

        // Converte a resposta em um objeto JSON.
        return response.text()
    })
    .then(data => {
        // Limpa as opções existentes no segundo DropDownList.
        const ddlCidades = document.getElementById('MainContent_ddlCidade');

        // Expressão regular para extrair somente os elementos <option>.
        const regex = /<option.*?<\/option>/gs;

        // Usa o método match() com a expressão regular para obter somente os elementos <option>.
        const options = data.match(regex);

        ddlCidades.innerHTML = options;
            
    })
    .catch(error => {
        alert('Erro:', error);
    });
}

const carregaCidadesJquery = function (obj) {
    // Pega o valor selecionado no DropDownList.
    const estadoId = obj.value;

    // Chama a rota "cidades" usando o método ajax do jQuery.
    $.ajax({
        url: `/cidades?id_estado=${estadoId}`,
        type: 'GET',
        dataType: 'html',
        success: function (data) {
            // Expressão regular para extrair somente os elementos <option>.
            const regex = /<option.*?<\/option>/gs;

            // Usa o método match() com a expressão regular para obter somente os elementos <option>.
            const options = data.match(regex);

            // Limpa as opções existentes no segundo DropDownList.
            $('#MainContent_ddlCidade').html(options);
        },
        error: function (error) {
            alert('Não foi possível carregar as cidades.');
        }
    });
};
