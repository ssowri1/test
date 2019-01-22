# test
test

    
    // Get devices List
    public func getDevicesList(url: String, userName : String, passWord : String, success:@escaping (_ response : NSArray?) -> Void, failure:@escaping (_ error : NSError?) -> Void) {
        
        let credentials = String(format: "%@:%@", userName, passWord)
        let loginData = credentials.data(using: String.Encoding.utf8)!
        let base64String = loginData.base64EncodedString()
        
        
        let request = NSMutableURLRequest(url: NSURL(string: url)! as URL, cachePolicy: .useProtocolCachePolicy, timeoutInterval : 10.0)
        request.setValue("Basic \(base64String)", forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            
            if let httpResponse = response as? HTTPURLResponse {
                
                if httpResponse.statusCode == 200 {
                    let dataString = NSString(data: data!, encoding:String.Encoding.utf8.rawValue)

                    let array = self.convertToArray(text: dataString! as String)
                    
                    success(array! as NSArray)
                }else{
                    failure(error as NSError?)
                }
            }
        })
        dataTask.resume()
    }
    
    
    public func getResponse(url:String, success:@escaping (_ response:NSArray?) -> Void, failure:@escaping (_ error: NSError?) -> Void) {

        
        let request = NSMutableURLRequest(url: NSURL(string: url)! as URL, cachePolicy: .useProtocolCachePolicy, timeoutInterval : 10.0)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: {(data, response, error) -> Void in
            
            if let httpResponse = response as? HTTPURLResponse{
             
                if let httpResponse.statusCode == 200 {
                    
                }
                
            }
        })
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    class Home: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {

    @IBOutlet weak  var scrollView = UIScrollView()
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var pageControl: UIPageControl!
    var aryBannerUrls = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.bringSubview(toFront: self.pageControl)

        aryBannerUrls = ["http://cbl.adpay.net.in/content/banner/1/cbl1.jpg", "http://cbl.adpay.net.in/content/banner/2/cbl2.jpg", "http://cbl.adpay.net.in/content/banner/3/Meena.jpg", "http://cbl.adpay.net.in/content/banner/4/Misha.jpg", "http://cbl.adpay.net.in/content/banner/5/Raana.jpg"]
        self.pageControl.numberOfPages = aryBannerUrls.count

        scrollView?.contentSize = CGSize(width:self.view.frame.size.width * CGFloat(aryBannerUrls.count), height:(self.scrollView?.frame.size.height)!)
        self.setUpScrollView(scrollView: scrollView!)
        
        _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(bannerImgScroll), userInfo: nil, repeats: true)
        
        self.tblView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")

    }
    
    func setUpScrollView(scrollView:UIScrollView) {
        
        for i in 0 ..< aryBannerUrls.count {
            
            let imageView = UIImageView(frame:CGRect(x:self.view.frame.size.width * CGFloat(i) , y:0, width:self.view.frame.size.width, height:scrollView.frame.size.height))
            imageView.backgroundColor = UIColor.red
            imageView.sd_setImage(with: URL(string: aryBannerUrls[i]), placeholderImage: UIImage(named: "placeHolder.png"))
            scrollView.addSubview(imageView)
        }
    }

    @objc func bannerImgScroll(){
        let contentOffset:CGFloat = scrollView!.contentOffset.x
        let nextPage:Int = Int(contentOffset/scrollView!.frame.size.width) + 1
        if nextPage != aryBannerUrls.count {
            scrollView?.scrollRectToVisible(CGRect(x:CGFloat(nextPage) * (self.view?.frame.size.width)!, y:0, width:(self.view?.frame.size.width)!, height:(scrollView?.frame.height)!), animated: true)
            self.pageControl.currentPage = nextPage

        }else{
            scrollView?.scrollRectToVisible(CGRect(x:0, y:0, width:(self.view?.frame.size.width)!, height:(scrollView?.frame.height)!), animated: true)
            self.pageControl.currentPage = 0

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        
        return cell
    }
}

https://stackoverflow.com/questions/3694411/how-to-auto-scroll-uiscrollview-using-timer
