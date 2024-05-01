//
//  secondViewController.swift
//  rutvik_ricky_assignment-2
//
//  Created by user212565 on 9/30/22.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        
        let tab = tabBarController as! detailsBarController
        
        view.subviews.forEach({ $0.removeFromSuperview() })
        let label = createLabel()
        
        
        if !tab.gas_Array.isEmpty && !tab.source_Array.isEmpty && !tab.destination_Array.isEmpty{
            
            label.text = "Trip from \(tab.source_Array.first ?? "nil") to \(tab.destination_Array.last ?? "nil") used \(tab.Gallon_Sum) gallons of gas"
            
        }else{
            label.text =  ""
            
        }
    }
    func createLabel() -> UILabel{
        let summary = UILabel()
        
        summary.frame = CGRect(x: 0, y: 0, width: 310, height: 175)
        summary.numberOfLines = 0
        self.view.addSubview(summary)
        
        summary.center = self.view.center
        summary.textAlignment = .natural
        
        summary.textColor = UIColor.black
        summary.font = summary.font.withSize(24)

        
        return summary
    }

}

