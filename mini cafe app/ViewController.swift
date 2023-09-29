//
//  ViewController.swift
//  mini cafe app
//
//  Created by OLIVER MURRAY on 9/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quantOutlet: UITextField!
    
    @IBOutlet weak var cartOutlet: UITextField!
    
    @IBOutlet weak var priceOutler: UILabel!
    
    @IBOutlet weak var menuOutler: UILabel!
    
    @IBOutlet weak var totalPriceOutlet: UILabel!
    
    @IBOutlet weak var cartInventory: UILabel!
    
    @IBOutlet weak var errorOutlet: UITextField!
    
    var foods : [String] = ["steak", "chicken", "cake", "burger", "fish"]
    var prices : [Double] = [19.99, 12.99, 14.99, 5.99, 4.99]
    var cart = [String: Double]()
    
    var price = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 var list = ""
        for blah in foods{
            list += "\n\(blah)"
            
        }
        menuOutler.text = list
        
        
        
        var pList = ""
               for x in prices{
                   pList += "\n\(x)$"
                   
               }
        priceOutler.text = pList
    }
   
    
    
    @IBAction func cartAddAction(_ sender: Any) {
        var quant : Int?
        let item = cartOutlet.text!
        var count = 0
        var check = 0;
        for y in foods{
         if y == item
            {
             errorOutlet.text = ""
             if cart.keys.contains(item){
                 errorOutlet.text = "Already have"
             }
             
             cart[item] = prices[count]
             check = 1;
             if let q = quant{
             price += q * Int(prices[count])
             }
             totalPriceOutlet.text = "\(price)$"
             }
            
        
          count += 1
        }
        if check == 0{
            errorOutlet.text = "invalid option"
        }
        check = 0
        var cList = ""
        for key in cart.keys {
            cList += "\n\(key)"
                   }
        cartInventory.text = cList
       // print(cList)
    
        
        
       // for value in
        
       // price +=
        
    }
    
    
    
    
    
}
