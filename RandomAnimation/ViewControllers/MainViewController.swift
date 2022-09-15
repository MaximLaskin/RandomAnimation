//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Maxim on 14.09.2022.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    //MARK: - IBOutlets

    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!

    @IBOutlet weak var animationSpringView: SpringView!


    //MARK: - View Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
//MARK: - IBActions

    @IBAction func runButtonPressed(_ sender: SpringButton) {

        var options = Option.getAnimationOption().first


        animationSpringView.animation = options?.preset ?? "pop"

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

