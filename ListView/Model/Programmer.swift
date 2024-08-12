//
//  File.swift
//  ListView
//
//  Created by sw on 22/01/24.
//

import Foundation
struct Programmer: Codable, Equatable, Identifiable {
    var id: Int;
    var name: String;
    var languages: String;
    var favorite: Bool;
}
