//
//  Localization.swift
//  LocalizationFramework
//
//  Created by Yahya Saddiq on 6/3/20.
//  Copyright © 2020 Yahya Saddiq. All rights reserved.
//

extension String {
    func localized(withComment comment: String = "") -> String {
        let currentLanguage = String(Locale.current.identifier.prefix(2))
        guard let bundlePath = Bundle.localizationFramework.path(forResource: currentLanguage,
                                                                 ofType: "lproj") else {
                                                                    return ""
        }
        let languageBundle = Bundle(path: bundlePath)
        return languageBundle?.localizedString(forKey: self,
                                               value: "**\(self)**",
            table: nil) ?? "**\(self)**"

    }
}

public enum Localization {
    public static let title = "title".localized()
    public static let description = "description".localized()
}
