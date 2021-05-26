//
//  PrankCallViewModel.swift
//  Bang
//
//  Created by Jerry Ren on 5/9/21.
//

import UIKit

protocol PrankCallViewModelProtocol {
    func wallpaperImagesLinkup() -> [UIImage]
}

struct PrankCallViewModel: PrankCallViewModelProtocol {
    
    internal func wallpaperImagesLinkup() -> [UIImage] {
        let wpconsta = ConstantsForBang.Wallpapers.self
        let wallpaperImagesStrings = [wpconsta.uno, wpconsta.dos, wpconsta.tres, wpconsta.cero]
//        let wpImages = wallpaperImagesStrings.map {
//            UIImage(named: $0) ?? UIImage(named: wpconsta.uno)
//        }
        var wpImages = [UIImage].init()
        wallpaperImagesStrings.forEach { (str) in
            if let imge = UIImage(named: str) {
                wpImages.append(imge)
            }
        }
       return wpImages
    }
}

@IBDesignable class CurvedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
}
