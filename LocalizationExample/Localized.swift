// Autogenerated at 20:18 Sat, 12 Oct 2024
//

import Foundation

final class Localized {
    static var bundle: Bundle {
        let bundle = Bundle(for: Localized.self)
        
        if let currentLanguage = (UserDefaults.standard.object(forKey: "AppleLanguages") as? [String])?.first?.prefix(2),
           let path = bundle.path(forResource: String(currentLanguage), ofType: "lproj"),
           let bundleWithPath = Bundle(path: path) {
            return bundleWithPath
        } else {
            return bundle
        }
    }
}