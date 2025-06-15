# Tasbih Counter App 📿⌚🌐

A complete **Tasbih counter ecosystem** featuring both Apple Watch and web applications, allowing Muslims to perform Dhikr (remembrance of Allah) conveniently across all their devices.

## 🌐 Available Platforms

- **🌐 Web App**: [tasbih-web.vercel.app](https://tasbih-web.vercel.app/) - Access from any browser
- **⌚ Apple Watch**: Native watchOS application for on-the-go counting

## ✨ Features

### 🌐 Web App Features
- **Universal Access**: Works on any device with a web browser
- **Responsive Design**: Optimized for desktop, tablet, and mobile
- **Progressive Web App**: Install on your device for offline access
- **Real-time Counting**: Smooth and responsive tap-to-count interface
- **Cross-Platform Sync**: Continue your sessions across devices
- **No Installation Required**: Start counting immediately

### ⌚ Apple Watch Features
- **Simple Tap Counting**: Tap anywhere on the watch screen to increment your count
- **Customizable Counter**: Set your target count (33, 99, 100, or custom values)
- **Haptic Feedback**: Feel every count with subtle haptic feedback
- **Visual Progress**: Clean circular progress indicator
- **Auto-Reset**: Automatically resets when target is reached
- **Glanceable Interface**: Quick access from your wrist

## 🎯 Target Audience

This app ecosystem is designed for:
- Muslims who want to perform Dhikr throughout the day on any device
- Users who prefer digital counters over traditional Tasbih beads
- People who want seamless experience across web, mobile, and wearable devices
- Anyone looking for a simple, distraction-free counting tool
- Travelers who need access to Tasbih counter without installing apps

## 🚀 Getting Started

### 🌐 Web App
Simply visit **[tasbih-web.vercel.app](https://tasbih-web.vercel.app/)** in any web browser and start counting immediately!

### ⌚ Apple Watch App

#### From Source
1. Clone this repository:
   ```bash
   git clone https://github.com/zeeshankhan-05/TasbihWatchApp.git
   ```
2. Open `TasbihWatchApp.xcodeproj` in Xcode
3. Select your Apple Watch as the target device
4. Build and run the project

## 💡 How to Use

### 🌐 Web App
1. **Start Counting**: Visit [tasbih-web.vercel.app](https://tasbih-web.vercel.app/) and tap/click to count
2. **Reset**: Hold to reset count to 0

## 🏗️ Project Structure

### ⌚ Watch App Architecture
The watch app follows the **MVVM (Model-View-ViewModel)** architecture pattern:

```
TasbihWatchApp/
├── Models/
│   ├── DhikrModel.swift
│   ├── CounterSession.swift
│   └── UserSettings.swift
├── ViewModels/
│   ├── CounterViewModel.swift
│   └── SettingsViewModel.swift
├── Views/
│   ├── ContentView.swift
│   ├── CounterView.swift
│   └── SettingsView.swift
├── WatchKit Extension/
│   ├── InterfaceController.swift
│   └── ComplicationController.swift
└── Shared/
    ├── DataManager.swift
    └── HapticManager.swift
```

## 🛠️ Technologies Used

### ⌚ Watch App Stack
- **SwiftUI**: Modern declarative UI framework
- **Combine**: For reactive programming and data binding
- **Core Data**: Local data persistence
- **WatchKit**: Apple Watch specific functionality  
- **WidgetKit**: For Watch complications
- **UserDefaults**: Settings and preferences storage

## 🎨 Design Principles

- **Islamic Aesthetics**: Color scheme inspired by traditional Islamic art
- **Minimalism**: Clean, distraction-free interface
- **Accessibility**: Full support for VoiceOver and Dynamic Type
- **Glanceable**: Information visible at a quick glance
- **One-Handed Operation**: Designed for easy use while walking or during daily activities

## 🤝 Contributing

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

## 📞 Contact

**Zeeshan Khan**
- GitHub: [@zeeshankhan-05](https://github.com/zeeshankhan-05)
- Email: [zeeshanxkhan05@gmail.com](mailto:zeeshanxkhan05@gmail.com)
- LinkedIn: https://www.linkedin.com/in/zeeshankhan05/

**"Remember your Lord often and glorify ˹Him˺ morning and evening."** - *Quran 3:41*
