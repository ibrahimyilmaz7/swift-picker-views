# swift-picker-views
Inline single and multiple picker views for UIKit. No tableview, no data sources! Easy and simple.

### Using Single-Selection Picker:
```swift
/// With radius
let singleSelect = IYSinglePicker()
singleSelect.backgroundColor = .white
singleSelect.layer.cornerRadius = 10
singleSelect.data = [
    "Direct Messages",
    "Mentions",
    "Anything"
]

/// Full-width
let singleSelect = IYSinglePicker()
singleSelect.backgroundColor = .white
singleSelect.data = [
    "Direct Messages",
    "Mentions",
    "Anything"
]
```

### Reading value of Single-Selection Picker
```swift
let selectedIndex = singleSelect.selectedIndex
```

![image](https://user-images.githubusercontent.com/5227444/151717670-586fa5be-b6b5-454b-9c99-f5a5074c57ed.png)


### Using Multiple-Selection Picker:
```swift
/// With radius
let multiSelect = IYMultiplePicker()
multiSelect.backgroundColor = .white
multiSelect.layer.cornerRadius = 10
multiSelect.data = [
    "Play notification sounds",
    "Send read receipts",
    "Show my online status"
]

/// Full-width
let multiSelect = IYMultiplePicker()
multiSelect.backgroundColor = .white
multiSelect.data = [
    "Play notification sounds",
    "Send read receipts",
    "Show my online status"
]
```

### Reading value of Multiple-Selection Picker
```swift
let selectedIndexes = multiSelect.selectedIndexes
```

![image](https://user-images.githubusercontent.com/5227444/151717830-094225ef-07ed-4bc8-8e6a-856e15e1f868.png)
