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

    var options = Option.getAnimationOption().first

    //MARK: - View Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
//MARK: - IBActions

    @IBAction func runButtonPressed(_ sender: SpringButton) {

        guard let preset = options?.preset else { return }
        animationSpringView.animation = preset.rawValue

        guard let curve = options?.curve else { return }
        animationSpringView.curve = curve.rawValue

        guard let force = options?.force else { return }
        animationSpringView.force = force

        guard let duration = options?.duration else { return }
        animationSpringView.duration = duration

        guard let delay = options?.delay else { return }
        animationSpringView.delay = delay
        animationSpringView.animate()

    }
}

