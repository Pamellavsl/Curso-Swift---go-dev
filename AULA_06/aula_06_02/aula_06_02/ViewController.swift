//
//  ViewController.swift
//  aula_06_02
//
//  Created by Pamella Lima on 15/03/22.
//

import UIKit

struct Livros {
    var logo: String
    var nome: String
    var autor: String
    var descricao: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var livros: [Livros] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Livros"
        
        delegate()
        LivrosData()
        
    }
    
    private func LivrosData() {
        
        livros = [Livros(logo: "cinderela", nome: "Cinderela Pop", autor: "Paula Pimenta", descricao: "Cintia Dorella é uma adolescente que descobre uma traição no casamento dos pais. Descrente no amor, vai morar na casa da tia e passa a trabalhar como DJ, se tornando a Cinderela Pop. Mas não esperava que um príncipe encantado pudesse se apaixonar por ela."), Livros(logo: "eleanor", nome: "Eleanor & Park", autor: "Rainbow Rowell", descricao: "Eleanor é nova na cidade. Com roupas inusitadas, cachos ruivos indomáveis e uma família problemática, ela sente que nunca vai conseguir se encaixar. Park senta sozinho no ônibus da escola. Sempre de camiseta preta, fones de ouvido e a cabeça enfiada num livro, acha que consegue passar despercebido. Mas não para Eleanor. Aos poucos, entre fitas cassetes gravadas, pilhas de histórias em quadrinhos e conversas até tarde da noite, Eleanor e Park se apaixonam. Narrada durante o ano letivo de 1986, essa é a história de dois jovens de dezesseis anos que, mesmo sabendo que o primeiro amor quase nunca é para sempre, têm coragem e esperança suficientes para tentar."), Livros(logo: "neve", nome: "Deixe a neve cair", autor: "John Green", descricao: "Um forte nevasca atinge a cidade de Gracetown na véspera de Natal e a transforma em um inesperado refúgio romântico. Um trem retido no meio do nada, uma corrida com os amigos no frio congelante e lidar com a tristeza da perda do namorado ideal. Três histórias de amor distintas que se conectam entre si."), Livros(logo: "quem", nome: "Quem é você, Alaska", autor: "John Green", descricao: "Miles Halter é um adolescente fissurado por célebres últimas palavras. Cansado de sua vidinha pacata e sem graça em casa, vai estudar num colégio interno à procura daquilo que o poeta François Rabelais, quando estava à beira da morte, chamou de o Grande Talvez"), Livros(logo: "teorema", nome: "O teorema de Katherine", autor: "John Green", descricao: "Colin é um menino prodígio que sente a pressão de seu talento. Mas, no amor ele já levou o fora de 19 Katherines. Então, para amenizar a sua última desilusão amorosa resolve fazer uma viagem e criar um teorema pra explicar a probabilidade dos relacionamentos darem errado."), Livros(logo: "fan_girl", nome: "FanGirl", autor: "Rainbow Rowell", descricao: "Telulah é uma menina de 15 anos, apaixonada por cinema e que idolatra Alex, líder de uma banda de rock. Em meio a rotina escolar, ela busca uma ideia original para um projeto final que una as duas paixões."), Livros(logo: "pequeno_principe", nome: "O pequeno príncipe", autor: "Antoine de Saint Exupéry", descricao: "O livro conta a história do complexo Pequeno Príncipe. Ao narrar a evolução da instituição, seus personagens e o contexto de cada tempo, o livro resgata a memória do cuidado e do amor ao ser humano, devolve a cada um o mistério da infância. De repente retornam os sonhos. Reaparece a lembrança de questionamentos, desvelam-se incoerências acomodadas, quase já imperceptíveis na pressa do dia-a-dia. Voltam ao coração escondidas recordações... O reencontro, o homem-menino."), Livros(logo: "depois_dos_quinze", nome: "Depois dos quinze", autor: "Bruna Vieira", descricao: "Neste livro você encontra histórias, desabafos e segredos de Bruna Vieira, garota de 18 anos, colunista da revista Capricho e dona do blog Depois dos Quinze, um dos mais influentes em moda, comportamento e internet para o público adolescente. Bruna apresenta aqui sua história em belíssimas crônicas que já conquistaram milhares de fãs, leitores e leitoras em sua coluna em suas redes sociais e em seu blog."), Livros(logo: "sol_para_todos", nome: "O sol é para todos", autor: "Beatriz Horta", descricao: "Um livro emblemático sobre racismo e injustiça: a história de um advogado que defende um homem negro acusado de estuprar uma mulher branca nos Estados Unidos dos anos 1930 e enfrenta represálias da comunidade racista. O livro é narrado pela sensível Scout, filha do advogado."), Livros(logo: "o_pequeno_principe_preto", nome: "O pequeno príncipe preto", autor: "Rodrigo França", descricao: "Em um minúsculo planeta, vive o Pequeno Príncipe Preto. Além dele, existe apenas uma árvore Baobá, sua única companheira. Quando chegam as ventanias, o menino viaja por diferentes planetas, espalhando o amor e a empatia. O texto é originalmente uma peça infantil que já rodou o país inteiro. Agora, Rodrigo França traz essa delicada história no formato de conto, presenteando o jovem leitor com uma narrativa que fala da importância de valorizarmos quem somos e de onde viemos - além de nos mostrar a força de termos laços de carinho e afeto."), Livros(logo: "quando_a_noite_cai", nome: "Quando a noite cai", autor: "Carina Rissi", descricao: "Em Quando a noite cai, Carina Rissi nos presenteia com uma história envolta em mistérios, maldições e paixão. Com uma doce e atrapalhada protagonista, seremos transportados a um mundo cheio de lendas, magia e, claro, muito romance. Briana Pinheiro sabe que não é a pessoa mais sortuda do mundo."), Livros(logo: "no_mundo_da_luna", nome: "No mundo da Luna", autor: "Carina Rissi", descricao: "A vida de Luna está uma bagunça! O namorado a traiu com a vizinha, seu carro passa mais tempo na oficina do que com ela e seu chefe vive trocando seu nome.Recém-formada em jornalismo, ela trabalha como recepcionista na renomada Fatos&Furos. Mas, em tempos de internet e notícias instantâneas, a revista enfrenta problemas e o quadro de jornalistas diminuiu drasticamente. É assim que a coluna do horóscopo semanal cai no colo dela. Embora não tenha a menor ideia de como fazer um mapa astral e não acredite em nenhum tipo de magia, Luna aceita o desafio sem pestanejar. Afinal, quão complicado pode ser criar um texto em que ninguém presta atenção?Mas a garota nem desconfia dos perigos que a aguardam e, entre muitas confusões, surge uma indesejada, porém irresistível paixão que vai abalar o seu mundo.")]
    }
    
    private func delegate(){
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CustomTableViewCell.altura
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let user = livros[indexPath.row]
        
        performSegue(withIdentifier: "secondViewController", sender: user)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondViewController" {
            if let secondViewController = segue.destination as? SecondViewController {
                secondViewController.property = sender as? Livros
                print("Prepare acionado")
                
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return livros.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        let livro = livros[indexPath.row]
        cell.setup(logo: livro.logo, name: livro.nome, description: livro.autor)
        
        return cell
    }
    
    
}



