//
//  OptionData.swift
//  RandomAnimation
//
//  Created by Maxim on 14.09.2022.
//

import Foundation
import SpringAnimation

class DataManager {

    static let shared = DataManager()

    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases

    private init() {}
}
