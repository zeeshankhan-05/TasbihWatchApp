//
//  ContentView.swift
//  TasbihWatchApp Watch App
//
//  Created by Zeeshan Khan on 5/19/25.
//

import SwiftUI
import WatchKit

struct ContentView: View {
    @AppStorage("tasbihCount") private var count = 0
    @FocusState private var isFocused: Bool

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            Text("\(count)")
                .font(.system(size: 48, weight: .bold))
                .foregroundColor(.green)
        }
        .focusable(true)

        .onTapGesture {
            count += 1
            WKInterfaceDevice.current().play(.click)
        }
        .onLongPressGesture {
            count = 0
            WKInterfaceDevice.current().play(.success)
        }
    }
}

#Preview {
    ContentView()
}
