final public class IYSinglePicker: IYPickerBase {

    var selectedIndex: Int? {
        didSet {
            selectedIndexDidSet()
        }
    }

    override func didTapRow(_ sender: IYPickerRow) {
        super.didTapRow(sender)

        selectedIndex = sender.index
    }

    private func selectedIndexDidSet() {
        subviews.forEach {
            guard let row = $0 as? IYPickerRow else { return }

            row.isSelected = row.index == selectedIndex
        }
    }
}
