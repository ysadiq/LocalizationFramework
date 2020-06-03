//
//  LocalizationFramework+Bundle.swift
//  LocalizationFramework
//
//  Created by Yahya Saddiq on 6/3/20.
//  Copyright © 2020 Yahya Saddiq. All rights reserved.
//

extension Bundle {
    static var localizationFramework: Bundle {
        var currentLanguage = String(Locale.current.identifier.prefix(2))
        
        guard
            let bundleById = Bundle(identifier: "org.cocoapods.LocalizationFramework"),
            let bundlePath = bundleById.path(forResource: currentLanguage,
                                             ofType: "lproj"),
            let bundle = Bundle(path: bundlePath) else { return .main }

        return bundle
    }
}
