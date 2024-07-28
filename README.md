# TagLayout
Taglayout is SwiftUI library allows you to display your tag list.
<br><b>Minimum iOS version: 15</b></br>


![Simulator Screenshot - iPhone 15 - 2024-07-28 at 16 11 35](https://github.com/user-attachments/assets/6c3330dc-0419-4441-9d34-901b6ca33cd1)

# Usage
```swift
import SwiftUI
import TagLayout


struct ContentView: View {

    let fruits = [
        "Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig", "Grape", "Honeydew", "Indian Fig", "Jackfruit",
        "Kiwi", "Lemon", "Mango", "Nectarine", "Orange", "Papaya", "Quince", "Raspberry", "Strawberry", "Tangerine",
        "Ugli Fruit", "Vanilla", "Watermelon", "Xigua", "Yellow Passion Fruit", "Zucchini", "Blueberry", "Cantaloupe",
        "Dragonfruit", "Pineapple"
    ]

    var body: some View {
        TagLayout(tags: fruits) { tag in
            Text(tag)
                .font(.title3)
                .cornerRadius(3)
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.blue, lineWidth: 1.0))
                .padding(8)
        }.padding(.all, 8)
    }
}
```
# Installation
TagLayout is available via [Swift Package Manager](https://www.swift.org/documentation/package-manager/).

Using Xcode 15, go to File -> Swift Packages -> Add Package Dependency and enter [https://github.com/yotsu12/TagLayoutView](https://github.com/Tiko94/TagLayout)
