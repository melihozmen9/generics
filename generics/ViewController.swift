//
//  ViewController.swift
//  generics
//
//  Created by Kullanici on 5.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var username = "ozmen"
        var password = "12345"
        
        print("username = \(username)", "password = \(password)")
        let result = swap(item1: &username, item2: &password)
        
        
        print("username = \(username)", "password = \(password)")
        
        
        var veri1 = 1234
        var veri2 = 2345
        
        print(veri1,veri2)
        
        let result1 = swap(item1: &veri1, item2: &veri2)
        print(veri1,veri2)
        
        var oran1 = 10.2
        var oran2 = 3.5
        print(oran1,oran2)
        
        let sonuc = swap(item1: &oran1, item2: &oran2)
        print(oran1,oran2)
        
    }
// yer değiştirme metodu hem string için hem de Int için
    
    func swap<T>(item1: inout T, item2: inout T){
       let temp = item1
       item1 = item2
        item2 = temp
   }
    // func swap(item1: inout Int, item2: inout Int){
    //  let temp = item1
    //  item1 = item2
    //  item2 = temp
    //}
    //func swap(item1: inout Double, item2: inout Double){
    //  let temp = item1
    //  item1 = item2
    //        item2 = temp
    //}
}

