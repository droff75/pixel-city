//
//  Constants.swift
//  pixel-city
//
//  Created by david.roff on 2/13/18.
//  Copyright © 2018 david.roff. All rights reserved.
//

import Foundation

let apiKey = "5630399e50b72919fbe06b630d9e6b3b"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, addNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}



