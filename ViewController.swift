//
//  ViewController.swift
//  FirstTvOSApp
//
//  Created by Julian Hoffmann on 09.06.22.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var poseDuration = 10
    var indexProgressbar = 0
    var currentPoseIndex = 0
    
    
    @IBOutlet weak var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressView.progress = 0.0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setProgressbar), userInfo: nil, repeats: true)
        
    }
    
    func getposeNext() {
        currentPoseIndex += 1
        
    }
    
    @objc func setProgressbar() {
        if indexProgressbar == poseDuration {
            timer.invalidate()
            
            progressView.isHidden = true
        }
        
        progressView.progress = Float(indexProgressbar) / Float(poseDuration - 1)
        indexProgressbar += 1
    }


}

