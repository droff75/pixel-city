//
//  PhotoInfo.swift
//  pixel-city
//
//  Created by david.roff on 2/15/18.
//  Copyright © 2018 david.roff. All rights reserved.
//

import Foundation
import UIKit

struct PhotoInfo {
    var id: Any!
    var owner: Any!
    var secret: Any!
    var server: Any!
    var farm: Any!
    var title: Any!
    var ispublic: Any!
    var isfamily: Any!
    var url: String
    var image: UIImage?
    
    init(id: Any, owner: Any, secret: Any, server: Any, farm: Any, title: Any, ispublic: Any, isfamily: Any, url: String) {
        self.id = id
        self.owner = owner
        self.secret = secret
        self.server = server
        self.farm = farm
        self.title = title
        self.ispublic = ispublic
        self.isfamily = isfamily
        self.url = url
    }
}

extension PhotoInfo {
    func addImage(photo: PhotoInfo, image: UIImage) -> PhotoInfo {
        var photo = PhotoInfo.init(id: id, owner: owner, secret: secret, server: server, farm: farm, title: title, ispublic: ispublic, isfamily: isfamily, url: url)
        photo.image = image
        return photo
    }
}
