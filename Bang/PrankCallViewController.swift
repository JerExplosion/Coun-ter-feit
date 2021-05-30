//
//  PrankCallViewController.swift
//  Bang
//
//  Created by Jerry Ren on 5/9/21.
//

import UIKit
import NaturalLanguage

final class PrankCallViewController: UIViewController {
    
    private var prcViewModel: PrankCallViewModel = PrankCallViewModel()

    @IBOutlet weak var wallpaperImagery: UIImageView? {
        didSet {
            wallpaperImagery?.contentMode = .scaleAspectFill
            wallpaperImagery?.image = UIImage(named: ConstantsForBang.Wallpapers.cuatro)
            wallpaperImagery?.animationImages = prcViewModel.wallpaperImagesLinkup()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


