
import UIKit
import AVFoundation

var myAudioPlayerObj = AVAudioPlayer()



class ViewControllerSettings: UIViewController{
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
        let striveSound = Bundle.main.path(forResource:"sounds/Strive", ofType: "mp3")
        
        do{
            myAudioPlayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: striveSound!))
            myAudioPlayerObj.prepareToPlay()
            print("Sound File works")
        } catch{
            print(error)
        }
    }
}

    func toggleStrive(_ sender: Any) {
        print("toggleStrive called")
        if (myAudioPlayerObj.isPlaying) {
            myAudioPlayerObj.stop()
        } else{
            myAudioPlayerObj.play()
        }
    }

