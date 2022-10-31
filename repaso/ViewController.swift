//
//  ViewController.swift
//  repaso
//
//  Created by MaestroD1 on 10/31/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToVerde" {
            let destino = segue.destination as! VerdeController
            destino.informacion = "Cosas verdes: árboles, ranas"
            destino.callback = asignarTextoEtiqueta
        } else if segue.identifier == "goToAmarillo" {
            let destino = segue.destination as! AmarilloController
            destino.informacion = "Cosas amarillas: Sol, mantequilla"
        }
        
        
    }
    
    func asignarTextoEtiqueta(texto: String) {
        lblInfo.text = texto
    }

}

