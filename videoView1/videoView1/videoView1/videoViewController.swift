

import UIKit
import AVFoundation
import AVKit

class videoViewController: UIViewController {

    @IBOutlet weak var myVideoView: UIView!
    var player : AVPlayer!
    var avpController : AVPlayerViewController
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startVideo()

     
    }
    func startVideo(){
        let url = URL (string: "")
        player = AVPlayer(url: url!)
        avpController.player = player
        avpController.view.frame = myVideoView.bounds
        self.myVideoView.addSubview(avpController.view)
        player.play()
        
    }

  

}
