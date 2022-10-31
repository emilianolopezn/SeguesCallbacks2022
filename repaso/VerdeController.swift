//
//  VerdeController.swift
//  repaso
//
//  Created by MaestroD1 on 10/31/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class VerdeController : UIViewController {
    @IBOutlet weak var lblInformacion: UILabel!
    
    var callback : ((String) -> Void)?
    var informacion : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if informacion != nil {
            lblInformacion.text = informacion
        }
    }
    
    @IBAction func doTapEnviarInfoRosa(_ sender: Any) {
        if callback != nil {
            callback!("Info desde la pantalla verde")
        }
    }
}
