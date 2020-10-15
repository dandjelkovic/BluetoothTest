//
//  Store.swift
//  BluetoothTest
//
//  Created by Dalibor Andjelkovic on 22.09.20.
//

import Foundation

class Store: ObservableObject {
    @Published var peripherals = [String]()
}

var store = Store()
