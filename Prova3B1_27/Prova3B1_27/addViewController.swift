//
//  addViewController.swift
//  Prova3B1_27
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class addViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtDescricao: UITextField!
    @IBOutlet weak var txtPreco: UITextField!
    var mainVc: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnSalvar(_ sender: Any) {
        if txtNome.text!.isEmpty || txtDescricao.text!.isEmpty || txtPreco.text!.isEmpty {
            let alert = UIAlertController(title: "Erro", message: "Preencha todos os campos", preferredStyle: .alert)
            let actions = UIAlertAction(title: "Ok", style: .destructive)
            alert.addAction(actions)
            present(alert, animated: true, completion: nil)
        }else {
            let p = produto(
                nome: txtNome.text!,
                preco: Double(txtPreco.text!) ?? 0,
                descricao: txtDescricao.text!
            )
            mainVc?.appendValue(product: p)
            navigationController?.popToViewController(mainVc!, animated: true)
        }
    }
}
