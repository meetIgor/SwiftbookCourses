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
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var runButton: UIButton!
    
    //MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabeles(with: animation)
        print(animation.description())
    }
    
    //MARK: - IB Actions
    @IBAction func runButtonPressed(_ sender: UIButton) {
        setAnimationValues(for: animation)
        setLabeles(with: animation)
        springView.animate()
        animation = Animation.getRandomAnimation()
        runButton.setTitle("Run: \(animation.title)", for: .normal)
    }
    
    //MARK: - Private Properties
    private func setLabeles(with animation: Animation) {
        presetLabel.text = animation.title
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.1f", animation.force)
        durationLabel.text = String(format: "%.1f", animation.duration)
        delayLabel.text = String(format: "%.1f", animation.delay)
    }
    
    private func setAnimationValues(for animation: Animation) {
        springView.animation = animation.title
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
    }
}

