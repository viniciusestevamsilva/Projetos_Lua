contatos = {}

function adicionar_contato(nome, telefone)
    table.insert(contatos, {nome = nome, telefone = telefone})
end

function listar_contatos()
    print("Lista de contatos:")
    for i, contato in ipairs(contatos) do
        print(i .. ". " .. contato.nome .. " - " .. contato.telefone)
    end
end

function buscar_contato(nome)
    for _, contato in ipairs(contatos) do
        if contato.nome:lower() == nome:lower() then
            print("Contato encontrado: " .. contato.nome .. " - " .. contato.telefone)
            return
        end
    end
    print("Contato não encontrado.")
end

adicionar_contato("João", "1234-5678")
adicionar_contato("Maria", "9876-5432")
adicionar_contato("Pedro", "5555-5555")


listar_contatos()

-- Buscar um contato
print("Digite o nome para buscar:")
nome_busca = io.read()
buscar_contato(nome_busca)
print("-"*70)