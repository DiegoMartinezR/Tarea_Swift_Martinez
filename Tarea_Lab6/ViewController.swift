//
//  ViewController.swift
//  Tarea_Lab6
//
//  Created by Diego Martinez Rayme on 9/20/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let nota = notas[indexPath.row]
        cell.textLabel?.text = nota.nombre
        return cell
    }
    
  
    
    @IBAction func agregarCursos(_ sender: Any) {
        
        performSegue(withIdentifier: "agregarSegue", sender: <#T##Any?#>)
    }
    
    @IBOutlet weak var tableView: UITableView!
    var notas:[Notas] = []
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    
/*    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }*/
    
    
    
    

}

