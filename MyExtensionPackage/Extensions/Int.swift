//
//  Int+.swift
//  cafe-passado
//
//  Created by Cleber Neitzke on 18/12/22.
//  Copyright © 2022 Cleber Neitzke. All rights reserved.
//

import Foundation

// MARK: - Int Format
public extension Int {
    func format(f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

