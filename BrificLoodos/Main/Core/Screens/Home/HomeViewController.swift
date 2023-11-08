import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func scrollViewDidScroll(_ scrollView: UIScrollView) {
           for view in scrollView.subviews {
               let phase = abs(view.frame.origin.x - scrollView.contentOffset.x) / scrollView.frame.width
               let scale = 1 - min(max(phase, 0.0), 0.5)
               view.transform = CGAffineTransform(scaleX: scale, y: scale)
               view.alpha = scale
           }
       }
}



