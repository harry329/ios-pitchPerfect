//
//  ViewController.swift
//  PitchPerfect2
//
//  Created by Harsimran Singh on 5/25/17.
//  Copyright © 2017 HarsimranSingh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var startRecordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    @IBOutlet weak var recordingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("view did load")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startRecordingPressed(sender: AnyObject) {
        recordingLabel.text = "Recording..."
        print("start button pressed")
    }

    
    @IBAction func stopRecordingPressed(sender: AnyObject) {
        recordingLabel.text = "Press recording button for start"
        print("stop button pressed")
    }
}

