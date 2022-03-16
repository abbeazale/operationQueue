//
//  ViewController.swift
//  OperationQueue
//
//  Created by Abbe Azale on 2022-03-15.
//

import UIKit

class ViewController: UIViewController {

    private let onetothirtythree = UILabel()
    private let thirtyfourtosixtysix = UILabel()
    private let sixtyseventonightynine = UILabel()
    
    
    func viewDidLoad() async {
        super.viewDidLoad()
        //await didLoadSetup()
        // Do any additional setup after loading the view.
    }


}

private extension ViewController{
    
    func didLoadSetup() async{
        view.addSubview(onetothirtythree)
        view.addSubview(thirtyfourtosixtysix)
        view.addSubview(sixtyseventonightynine)
        await setupCount()
    }
    
    func setuponetothirty() async{
        onetothirtythree.translatesAutoresizingMaskIntoConstraints = false
        onetothirtythree.text = "1-33"
        
        NSLayoutConstraint.activate([
            onetothirtythree.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        ])
    }
    
    func setupthrityfourtosixtysix() async {
        thirtyfourtosixtysix.translatesAutoresizingMaskIntoConstraints = false
        thirtyfourtosixtysix.text = "34-66"
        
        NSLayoutConstraint.activate([
        
            thirtyfourtosixtysix.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirtyfourtosixtysix.topAnchor.constraint(equalTo: onetothirtythree.bottomAnchor, constant: 20)
        
        ])
    }
    
    func setupsixtyseventonightynine() async{
        sixtyseventonightynine.translatesAutoresizingMaskIntoConstraints = false
        sixtyseventonightynine.text = "67-99"
        
        NSLayoutConstraint.activate([
            sixtyseventonightynine.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sixtyseventonightynine.topAnchor.constraint(equalTo: thirtyfourtosixtysix.bottomAnchor, constant: 20)
        ])
    }
    
    
    func setupCount() async{
        await setuponetothirty()
        await setupthrityfourtosixtysix()
        await setupsixtyseventonightynine()
        
    }
    
    
    
}

