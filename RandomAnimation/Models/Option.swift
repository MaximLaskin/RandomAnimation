//
//  AnimationValues.swift
//  RandomAnimation
//
//  Created by Maxim on 14.09.2022.
//

import Foundation
import SpringAnimation

struct Option {
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
}

extension Option {
    static func getAnimationOption() -> [Option] {
        let dataManager = DataManager.shared
        var options: [Option] = []

        let presets = dataManager.presets.shuffled()
        let curves = dataManager.curves.shuffled()
        let forces = Double.random(in: 0...2)
        let durations = Double.random(in: 0...1.5)
        let delays = Double.random(in: 0...1)

//        let iterationCount = min(
//            presets.count,
//            curves.count
//        )

        for index in 0...5 { // iterationCount вылетает c ошибкой "Index out of range"
            let option = Option(
                preset: presets[index],
                curve: curves[index],
                force: forces,
                duration: durations,
                delay: delays
            )
            options.append(option)
        }

        return options
    }
}
