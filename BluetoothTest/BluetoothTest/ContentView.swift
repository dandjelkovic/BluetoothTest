//
//  ContentView.swift
//  BluetoothTest
//
//  Created by Dalibor Andjelkovic on 22.09.20.
//

import SwiftUI
import CoreData
import Combine

struct ContentView: View {
    @ObservedObject var store: Store
    private let bluetoothScanner = {
        BluetoothScanner()
    }()

    var body: some View {
        VStack {
            List {
                ForEach(bluetoothScanner.results, id: \.self) { result in
                    Text(result)
                }
            }
            HStack{
                Button("Start scan") {
                    bluetoothScanner.startScan()
                }
                .padding()
                Toggle("", isOn: bluetoothScanner.$isScanningPublisher)
                Button("Stop scan") {
                    bluetoothScanner.stop()
                }
                .padding()
            }
        }
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
