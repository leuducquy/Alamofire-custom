//
//  NSDictionary+Extension.swift
//  AlamofireCustom
//
//  Created by Quy on 1/10/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: self, comment: self)
    }
}

extension NSMutableDictionary{
   
    class func initParam() -> NSMutableDictionary{
        let dict = NSMutableDictionary()
      
        dict.setObject(WFUserDefaults.getUserId(), forKey: "loginUserId" as NSCopying)
        let accessToken :String?   = WFUserDefaults.getToken() as String
        if accessToken != nil {
              dict.setObject(accessToken! , forKey: "accessToken" as NSCopying)
        }
      
         let localTimeZoneName: String  = (NSTimeZone.local as NSTimeZone).name
          dict.setObject(WFUserDefaults.getCompanyId(), forKey: "companyId" as NSCopying)
          dict.setObject("I", forKey: "deviceType" as NSCopying)
        let language = Bundle.main.preferredLocalizations[0]
        
        dict.setObject(localTimeZoneName, forKey: "timezone" as NSCopying)
        dict.setObject(language, forKey: "language" as NSCopying)
        dict.setObject(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String, forKey: "version" as NSCopying)
        dict.setObject("SW", forKey: "serviceCd" as NSCopying)
        return dict
    }
    func toDictionary() ->[String:AnyObject]{
        
        var dict = [String : AnyObject]()
        for (key, value) in self {
            dict[key as! String] = value as AnyObject?
        }
        return dict
    }

    
}
