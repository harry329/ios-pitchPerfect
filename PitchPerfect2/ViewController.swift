//
//  ViewController.swift
//  PitchPerfect2
//
//  Created by Harsimran Singh on 5/25/17.
//  Copyright © 2017 HarsimranSingh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


    var audioRecorder: AVAudioRecorder!
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


    @IBAction func startRecordingPressed(sender: AnyObject) {
        recordingLabel.text = "Recording..."
        print("start button pressed")
        startRecordingButton.enabled = false
        
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL(string: pathArray.joinWithSeparator("/"))
        print(filePath)
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, withOptions:AVAudioSessionCategoryOptions.MixWithOthers)
        
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }

    
    @IBAction func stopRecordingPressed(sender: AnyObject) {
        recordingLabel.text = "Press recording button for start"
        print("stop button pressed")
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
        startRecordingButton.enabled = true
    }
}

