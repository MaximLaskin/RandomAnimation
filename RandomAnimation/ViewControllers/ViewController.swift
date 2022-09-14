//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Maxim on 14.09.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    //MARK: - IBOutlets

    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!

    @IBOutlet weak var animationSpringView: SpringView!

    var option = Option.getAnimationOption()

    

    //MARK: - View Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
//MARK: - IBActions

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        var option = Option.getAnimationOption()

        animationSpringView.force


    }
}

