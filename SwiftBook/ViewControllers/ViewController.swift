//
//  ViewController.swift
//  SwiftBook
//
//  Created by igor s on 05.08.2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Private Properties
    private let link = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=negroni"
    
    //MARK: - IB Actions
    @IBAction func getJsonTapped() {
        fetchDrinks()
    }
    
    //MARK: - Private Methods
    private func fetchDrinks() {
        guard let url = URL(string: link) else { return }
        
        URLSession.shared.dataTask(with: url) { [unowned self] data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let drinks = try JSONDecoder().decode(Drink.self, from: data)
                print(drinks.description)
                self.successAlert()
            } catch let error {
                print(error)
                self.failedAlert()
            }
        }.resume()
    }
    
    
}

//MARK: - AlertController
extension ViewController {
    private func successAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Success",
                message: "You can see the results in the Debug aria",
                preferredStyle: .alert
            )
            
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
    }
    
    private func failedAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Failed",
                message: "You can see error in the Debug aria",
                preferredStyle: .alert
            )
            
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
    }
}

