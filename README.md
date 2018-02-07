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
