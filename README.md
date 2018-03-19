# WTUIKitSwiftDemo
---- 
H4 1:WTImageZoomViewSwift-拒绝放大图片带黑边

	
----  
![img](/README/imageZoom01.jpg)
![img](/README/imageZoom02.jpg)

	let iv = WTImageZoomViewSwift(frame: CGRect(x: 0, y: 64, width: 200, height: 200))
	        self.view.addSubview(iv)
	        iv.load(image: #imageLiteral(resourceName: "wallpaperDefault2.png"))
	        iv.imageZoomViewClosureSingleTap = {
	            print("imageZoomViewClosureSingleTap")
	        }
	        iv.imageZoomViewClosureDoubleTap = {
	            print("imageZoomViewClosureDoubleTap")
	        }
	        iv.imageZoomViewClosureLongTap = {
	            print("imageZoomViewClosureLongTap")
	        }
---- 
