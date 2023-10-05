//
//  ViewController.swift
//  DocumentScanner
//
//  Created by Kokila Ekanayake on 2023-10-05.
//

import UIKit
import WeScan

class ViewController: UIViewController {

    @IBOutlet weak var scannedImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func openScannerAction(_ sender: Any) {
        let scanner = ImageScannerController(delegate: self)
        scanner.navigationBar.backgroundColor = .black
        scanner.navigationBar.tintColor = .white
        scanner.modalPresentationStyle = .fullScreen
        scanner.imageScannerDelegate = self
        present(scanner, animated: true)
    }
}

extension ViewController: ImageScannerControllerDelegate {
    
    func imageScannerController(_ scanner: WeScan.ImageScannerController, didFinishScanningWithResults results: WeScan.ImageScannerResults) {
        scannedImg.image = results.enhancedScan?.image ?? results.croppedScan.image
        scanner.dismiss(animated: true)
    }
    
    func imageScannerControllerDidCancel(_ scanner: WeScan.ImageScannerController) {
        
        scanner.dismiss(animated: true)
    }
    
    func imageScannerController(_ scanner: WeScan.ImageScannerController, didFailWithError error: Error) {
        print(error)
    }
    
    
    
}

