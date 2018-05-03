//
//  SwitchViewController.swift
//  FoodRecipe
//
//  Created by Tuiran, Diana E on 5/1/18.
//  Copyright © 2018 Tuiran, Diana E. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    
    
    
  

    
     var bitter:Int = 0
     var salty:Int = 0
     var sweet:Int = 0
     var sour:Int = 0
     var pungent:Int = 0
    var pizza:Int = 0
    var tacos:Int = 0
    var pancakes:Int = 0
    var brownies:Int = 0
    var sweetfood:Int = 0
    var saltyfood:Int = 0
    var combination:Int = 0
    
   

    
    
    
    @IBAction func Selectbitter(_ sender: UISwitch) {
        
        
        
        
        if sender.isOn {
            bitter = 1
        }
        else {
            bitter = 0
        }
    }
    
    
    
    
    
    
    @IBAction func Selectsalty(_ sender: UISwitch) {
        
        
        
        
        if sender.isOn {
            salty = 1
        }
        else {
            salty = 0
        }
    }

    
    
    
    
    

    @IBAction func Selectsweet(_ sender: UISwitch) {
        
        
        
        
        if sender.isOn {
            sweet = 1
        }
        else {
            sweet = 0
        }
    }
    
    
    
    
    @IBAction func Selectsour(_ sender: UISwitch) {
        
        
        
        if sender.isOn {
            sour = 1
        }
        else {
            sour = 0
        }
    }
    
    
    
    
    
    
    @IBAction func Selectpungent(_ sender: UISwitch) {
        
        
        
        if sender.isOn {
            pungent = 1
        }
        else {
            pungent = 0
        }
    }
    
    
    
    
    
    
    @IBAction func Selectbrownies(_ sender: UISwitch) {
        
        if sender.isOn {
            brownies = 1
        }
        else {
            brownies = 0
        }
    }
    
    
    
    
    @IBAction func Selecttacos(_ sender: UISwitch) {
        
        if sender.isOn {
            tacos = 1
        }
        else {
            tacos = 0
        }
    }
    
    
    
    
    @IBAction func Selectpizza(_ sender: UISwitch) {
        
        
        
        if sender.isOn {
            pizza = 1
        }
        else {
            pizza = 0
        }
    }
    
    
    
    @IBAction func Selectpancakes(_ sender: UISwitch) {
        
        
        if sender.isOn {
            pancakes = 1
        }
        else {
            pancakes = 0
        }
    }
    

    
    @IBOutlet weak var myTotal: UILabel!
    
    
    @IBAction func submit(_ sender: Any) {
        sweetfood = sweet + brownies + pancakes
        saltyfood = salty + pizza + tacos
        combination = sour + pungent + brownies + pizza + pancakes + tacos + sweet + salty + bitter
        
        
        
        
        
        
        
        if (sweetfood == 2){
            myTotal.text = "You are a sweet person"
            
        }
            
        else if(saltyfood == 2){
            
            myTotal.text = "You are a salty person"
            
        }
            
            
        else if(combination == 2){
}
        
            myTotal.text = "You like a lot of flavors"
            
        }
    
    
    

    
    
    
    
    

    
    

    
  

    
    
override func viewDidLoad() {
  super.viewDidLoad()

    // Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
   super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.

}
}








    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


