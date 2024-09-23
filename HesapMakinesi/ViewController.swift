//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Mürşide Gökçe on 23.09.2024.
//

import UIKit

class ViewController: UIViewController {
    var hesap:[String] = []

    @IBOutlet weak var islem: UILabel!
    @IBOutlet weak var sonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func esittir(_ sender: Any) {
        
        // Önce hesap dizisindeki tüm öğeleri birleştiriyoruz
            let hesapString = hesap.joined(separator: "+") // "1+2+3" gibi bir string oluşturur
            
            // Sonra bu string'i split(separator:) ile ayırıyoruz
            let full = hesapString.split(separator: "+") // [Substring] döner
            
            // Substring'leri String'e çevirip bir Array'e dönüştürelim.
            let fullArray = full.map { String($0) }
            
            print(fullArray) // ["1", "2", "3"] gibi bir çıktı verecek
            
        // Stringleri Int'e çevirip toplamı hesaplayalım
            let toplam = fullArray.compactMap { Int($0) }.reduce(0, +)
            
        print(toplam)
        sonuc.text = "\(toplam)"
        

    }
    
    @IBAction func topla(_ sender: Any) {
        if let veri = islem.text{
            hesap.append(veri)
            sonuc.text = hesap.joined(separator: "+")
        }
    }
    @IBAction func sifirla(_ sender: Any) {
        sonuc.text = ""
        hesap.removeAll()
    }
    @IBAction func bir(_ sender: Any) {
        islem.text = "1"
    }
    
    @IBAction func iki(_ sender: Any) {
        islem.text = "2"
    }
    @IBAction func üc(_ sender: Any) {
        islem.text = "3"
    }
    @IBAction func dort(_ sender: Any) {
        
    }
    @IBAction func bes(_ sender: Any) {
    }
    @IBAction func alti(_ sender: Any) {
    }
    @IBAction func yedi(_ sender: Any) {
    }
    @IBAction func sekiz(_ sender: Any) {
    }
    @IBAction func dokuz(_ sender: Any) {
    }
}

