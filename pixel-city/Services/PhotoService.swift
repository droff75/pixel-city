//
//  PhotoService.swift
//  pixel-city
//
//  Created by david.roff on 2/15/18.
//  Copyright © 2018 david.roff. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PhotoService {
    
    static let instance = PhotoService()
    var photoInfoArray = [PhotoInfo]()
    var photoInfo: PhotoInfo!
    
    func getPhotoInfoArray(forUrl url: String, completion: @escaping (_ status: Bool) -> ()) {
        Alamofire.request(url).responseJSON { (response) in
            if response.result.error == nil {
                guard let json = response.result.value as? Dictionary<String,Any> else { return }
                guard let photos = json["photos"] as? Dictionary<String,Any> else { return }
                guard let photo = photos["photo"] as? [Dictionary<String,Any>] else { return }
                
                for pic in photo {
                    let photoInfo = PhotoInfo(id: pic["id"] ?? "NA", owner: pic["owner"] ?? "NA", secret: pic["secret"] ?? "NA", server: pic["server"] ?? "NA", farm: pic["farm"] ?? "NA", title: pic["title"] ?? "NA", ispublic: pic["ispublic"] ?? "NA", isfamily: pic["isfamily"] ?? "NA", url: "https://farm\(pic["farm"]!).staticflickr.com/\(pic["server"]!)/\(pic["id"]!)_\(pic["secret"]!)_h_d.jpg")
                    self.photoInfoArray.append(photoInfo)
                }
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
