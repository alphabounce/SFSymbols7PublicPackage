//
//  Category.swift
//  PickerForPackageMng
//
//  Created by Azib M. Javaid on 31/08/2025.
//


import Foundation

struct Category: Decodable {
    let icon: String
    let key: String
    let label: String
    static var uncategorized: Category {
        Category(icon: "questionmark.cirlce", key: "uncategorized", label: "Uncategorized")
    }
}

struct Symbol_Categories: Decodable {
    let name: String
    let categories: [String]
}

struct Symbol_SearchTerms: Decodable {
    let name: String
    let searchTerms: [String]
}

struct Symbol_Availability: Decodable {
    let symbols: [String: String]
    let year_to_release: [String : [String : String]]
}

struct OSVersion {
    let os: String
    let version: String
}

struct Symbol {
    let name: String
    let releaseYear: String
    let categories: [Category]
    let searchTerms: [String]
    let osVersions: [OSVersion]
}


public enum CategoryEnum: String {
    case uncategorized, accessibility, arrows, automotive, cameraandphotos, commerce, communication, connectivity, devices, draw, editing, fitness, gaming, health, home, human, indices, keyboard, maps, math, media, multicolor, nature, objectsandtools, privacyandsecurity, shapes, textformatting, time, transportation, variable, weather, whatsnew
}
