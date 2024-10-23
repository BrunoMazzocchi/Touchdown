//
//  CodableBundle.swift
//  Touchdown
//
//  Created by Bruno Mazzocchi on 21/10/24.
//

import Foundation


extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate: \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load: \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode: \(file)")
        }
        
        return loaded
    }
}
