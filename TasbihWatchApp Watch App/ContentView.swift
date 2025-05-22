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
    @AppStorage("isDarkMode") private var isDarkMode = true
    @State private var displayCount = 0
    
    var body: some View {
        ZStack {
            (isDarkMode ? Color.black : Color.white)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    modeToggle
                }
                .padding(.top, -50)
                .padding(.trailing, 80)
                
                Spacer()
                
                AnimatedCounterView(
                    count: count,
                    displayCount: $displayCount,
                    color: isDarkMode ? .green : .blue
                )
                
                Spacer()
            }
        }
        .focusable(true)
        .onTapGesture {
            count += 1
            checkMilestone()
        }
        .onLongPressGesture {
            count = 0
            displayCount = 0
            WKInterfaceDevice.current().play(.success)
        }
        .onAppear {
            displayCount = count
        }
    }
    
    private var modeToggle: some View {
        Button {
            withAnimation { isDarkMode.toggle() }
        } label: {
            Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                .font(.system(size: 16))
                .foregroundColor(isDarkMode ? .yellow : .indigo)
                .frame(width: 36, height: 36)
                .background(
                    Circle()
                        .fill(isDarkMode ? Color.gray.opacity(0.3) : Color.gray.opacity(0.2))
                )
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    private func checkMilestone() {
        WKInterfaceDevice.current().play(.click)
        if count == 33 || count == 66 || count == 99 || (count % 100 == 0 && count != 0) {
            WKInterfaceDevice.current().play(.notification)
        }
    }
}

struct AnimatedCounterView: View {
    let count: Int
    @Binding var displayCount: Int
    let color: Color
    
    var body: some View {
        Text("\(displayCount)")
            .font(.system(size: 48, weight: .bold))
            .foregroundColor(color)
            .contentTransition(.numericText(countsDown: false))
            .animation(.easeInOut(duration: 0.3), value: displayCount)
            .onChange(of: count) { oldValue, newValue in
                withAnimation(.easeInOut(duration: 0.3)) {
                    displayCount = newValue
                }
            }
    }
}

#Preview {
    ContentView()
}
