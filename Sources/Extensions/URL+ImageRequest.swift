import UIKit
import Nuke

extension URL {
    func imageRequest(in view: UIView) -> ImageRequest {
        let size = CGSize(width: view.bounds.width, height: view.bounds.width)
        let processors = [ImageProcessors.Resize(size: size, unit: .points, contentMode: .aspectFill, crop: true, upscale: false)]
        return ImageRequest(url: self, processors: processors)
    }
}