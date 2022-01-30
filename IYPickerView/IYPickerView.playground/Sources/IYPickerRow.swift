import UIKit

final public  class IYPickerRow: UIControl {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let checkboxImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private let checkmark: UIImage = UIImage(systemName: "checkmark")!

    var index: Int? = nil

    var title: String? = nil {
        didSet {
            titleLabel.text = title
        }
    }

    public override var isSelected: Bool {
        didSet {
            checkboxImageView.image = isSelected ? checkmark : nil
        }
    }

    public override var isHighlighted: Bool {
        didSet {
            if isHighlighted, backgroundColor != .lightGray {
                backgroundColor = .lightGray
            } else if !isHighlighted, backgroundColor != .clear {
                backgroundColor = .clear
            }
        }
    }

    convenience init() {
        self.init(frame: .zero)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = .clear

        setupTitleLabel()
        setupCheckbox()
    }

    private func setupTitleLabel() {
        addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16)
        ])
    }

    private func setupCheckbox() {
        addSubview(checkboxImageView)

        NSLayoutConstraint.activate([
            checkboxImageView.widthAnchor.constraint(equalToConstant: 18),
            checkboxImageView.heightAnchor.constraint(equalToConstant: 18),
            checkboxImageView.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 16),
            trailingAnchor.constraint(equalTo: checkboxImageView.trailingAnchor, constant: 16),
            checkboxImageView.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)
        ])
    }
}
