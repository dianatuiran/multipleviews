//
//  pickerViewController.swift
//  FoodRecipe
//
//  Created by Tuiran, Diana E on 5/2/18.
//  Copyright © 2018 Tuiran, Diana E. All rights reserved.
//


import UIKit

struct Events: Decodable {
    let id: Int
    let name: String
    let month: String
    let day: String
}


class pickerViewController: UIViewController,
UIPickerViewDataSource, UIPickerViewDelegate  {
    
    
    
    var selection: String!
    
    
    
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    //establishes the number of components (columns)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //establishes the number of rows in the json
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    //establishes selection of each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    //this is the function that runs when you select a row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selection = items[row]
        let yrMonth = selection!
        theEvents.text! = "You picked \(yrMonth):\n"
        
        // url for json file. Must be https and hosted on a secure server. Change the location to your json file on your server
        
        let json = "https://cindyroyal.name/json/events.json"
        
        // guard statements protect the app if there is no response
        guard let url = URL(string: json)
            else { return }
        
        // this area sets up a urlsession with the json
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data
                else { return }
            
            // use do, try, catch to deal with errors
            do {
                
                // JSONDecoder decodes json array
                let events = try JSONDecoder().decode([Events].self, from: data)
                //enumerated adds the index to the array
                for (i, event) in events.enumerated() {
                    if(event.month == yrMonth) {
                        //must use this to change the ui element outside of the urlsession. Use of += to append to the TextView
                        DispatchQueue.main.sync {
                            self.theEvents.text! += ("\(event.month) \(event.day) - \(event.name) \n")
                        }
                    }
                }
            }
                
            catch let jsonErr {
                print("Error", jsonErr)
            }
            
            }.resume()
        
        
    }
    
    
    
    
    
    
    
    
    @IBOutlet weak var theEvents: UITextView!
    
    
    let items = ["Select A Month", "April", "May"]
    
    
    
    
    
    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


