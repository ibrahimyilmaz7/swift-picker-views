import UIKit

public class IYPickerBase: UIStackView {

    private var seperatorLine: UIView {
        let uiView = UIView()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.backgroundColor = .clear

        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .lightGray
        uiView.addSubview(line)

        NSLayoutConstraint.activate([
            line.leadingAnchor.constraint(equalTo: uiView.leadingAnchor, constant: 12),
            line.topAnchor.constraint(equalTo: uiView.topAnchor),
            uiView.trailingAnchor.constraint(equalTo: line.trailingAnchor),
            line.bottomAnchor.constraint(equalTo: uiView.bottomAnchor),
            line.heightAnchor.constraint(equalToConstant: 0.5)
        ])

        return uiView
    }

    public var data: [String] = [] {
        didSet {
            update()
        }
    }

    convenience init() {
        self.init(frame: .zero)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = .clear
        axis = .vertical
        distribution = .fillProportionally
        alignment = .fill
        spacing = .zero
    }

    private func update() {
        arrangedSubviews.forEach { $0.removeFromSuperview() }

        data.enumerated().forEach { (index, datum) in
            let row = IYPickerRow()
            row.title = datum
            row.index = index
            row.addTarget(self, action: #selector(didTapRow), for: .touchUpInside)
            addArrangedSubview(row)

            if index < data.count - 1 {
                addArrangedSubview(seperatorLine)
            }
        }
    }

    @objc func didTapRow(_ sender: IYPickerRow) {

    }
}
