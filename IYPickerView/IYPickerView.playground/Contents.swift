//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

final class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .lightGray

        let singleSelect = IYSinglePicker()
        singleSelect.translatesAutoresizingMaskIntoConstraints = false
        singleSelect.backgroundColor = .white
        singleSelect.layer.cornerRadius = 10
        singleSelect.data = [
            "Direct Messages",
            "Mentions",
            "Anything"
        ]

        view.addSubview(singleSelect)

        NSLayoutConstraint.activate([
            singleSelect.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            singleSelect.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            singleSelect.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])

        let multiSelect = IYMultiplePicker()
        multiSelect.translatesAutoresizingMaskIntoConstraints = false
        multiSelect.backgroundColor = .white
        multiSelect.data = [
            "Play notification sounds",
            "Send read receipts",
            "Show my online status"
        ]

        view.addSubview(multiSelect)

        NSLayoutConstraint.activate([
            multiSelect.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            multiSelect.topAnchor.constraint(equalTo: singleSelect.bottomAnchor, constant: 32),
            multiSelect.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
