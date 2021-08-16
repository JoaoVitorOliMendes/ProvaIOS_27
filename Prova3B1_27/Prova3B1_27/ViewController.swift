//
//  ViewController.swift
//  Prova3B1_27
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class ViewController: UIViewController {

    /**
     *AUTOR DO PROJETO
     *MATRICULA: 21900680
     *NUMERO DE CHAMADA: 27
     *NOME: JOAO VITOR DE OLIVEIRA MENDES
     **/
    @IBOutlet weak var tableView: UITableView!
    
    var arrayProdutos: [produto] = [
        produto(
            nome: "Garrafa",
            preco: 59.99,
            descricao: "Garrafa de 1 litro")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        addButtons()
    }
    func addButtons() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add, target: self, action: #selector(nextPage)
        )
    }
    @objc func nextPage() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "addViewController") as! addViewController
        vc.mainVc = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func appendValue(product: produto) {
        arrayProdutos.append(product)
        self.tableView.reloadData()
    }

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProdutos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CelulaTableViewCell
        let p = arrayProdutos[indexPath.row]
        cell.lblNome.text = p.nome
        cell.lblPreco.text = "R$ " + String(p.preco)
        cell.lblDescricao.text = p.descricao
        return cell
    }
    
    
}
