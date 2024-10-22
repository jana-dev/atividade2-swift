// Estrutura Produto
struct Produto {
    var nome: String
    var quantidade: Int
    var preco: Double
}

class GerenciadorDeInventario{
    private var produtos: [Produto] = []
    
    // Adiciona um novo produto à lista
    func adicionarProduto(produto: Produto) {
        produtos.append(produto)
        print("Produto \(produto.nome) adicionado ao inventário.")
    }

    // Calcula e retorna o valor total do inventário
    func calcularValorTotal() -> Double {
        var valorTotal: Double = 0.0
        for produto in produtos {
            valorTotal += Double(produto.quantidade) * produto.preco
        }
        return valorTotal
    }

    // Retorna uma lista de produtos com quantidade abaixo de um valor especificado
    func listarProdutosAbaixoDe(quantidade: Int) -> [Produto] {
        return produtos.filter { $0.quantidade < quantidade }
    }

    // Exibe as informações do produto
    func exibirInformacoesProduto(produto: Produto) {
        print("Nome: \(produto.nome)")
        print("Quantidade: \(produto.quantidade)")
        print("Preço: \(produto.preco)")
        print("---------")
    }
}

// Criando uma instância de GerenciadorDeInventario
let gerenciador = GerenciadorDeInventario()

let produto1 = Produto(nome: "Celular Xiaomi", quantidade: 10, preco: 1500.00)
let produto2 = Produto(nome: "Notebook", quantidade: 5, preco: 5500.00)
let produto3 = Produto(nome: "Teclado Gamer", quantidade: 2, preco: 250.00)

// Adicionando produtos ao inventário
gerenciador.adicionarProduto(produto: produto1)
gerenciador.adicionarProduto(produto: produto2)
gerenciador.adicionarProduto(produto: produto3)

// Calculando o valor total do inventário
let valorTotal = gerenciador.calcularValorTotal()
print("Valor total do inventário: R$ \(valorTotal)")

// Listando produtos com quantidade abaixo de 3
let produtosAbaixoDeTres = gerenciador.listarProdutosAbaixoDe(quantidade: 3)
print("Produtos com quantidade abaixo de 3:")
for produto in produtosAbaixoDeTres {
    gerenciador.exibirInformacoesProduto(produto: produto)
}

// Exibindo as informações de todos os produtos
print("Informações de todos os produtos no inventário:")
gerenciador.exibirInformacoesProduto(produto: produto1)
gerenciador.exibirInformacoesProduto(produto: produto2)
gerenciador.exibirInformacoesProduto(produto: produto3)