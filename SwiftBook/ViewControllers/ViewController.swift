//
//  ViewController.swift
//  SwiftBook
//
//  Created by igor s on 05.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var infoLabel: UILabel! {
        didSet {
            infoLabel.text = animation.description
        }
    }
    
    //MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - IB Actions
    @IBAction func runButtonPressed(_ sender: UIButton) {
        setAnimationValues()
        infoLabel.text = animation.description
        springView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run: \(animation.title)", for: .normal)
    }
    
    //MARK: - Private Properties
    private func setAnimationValues() {
        springView.animation = animation.title
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
    }
}

