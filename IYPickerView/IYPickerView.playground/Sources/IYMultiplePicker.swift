final public class IYMultiplePicker: IYPickerBase {

    override func didTapRow(_ sender: IYPickerRow) {
        super.didTapRow(sender)

        sender.isSelected.toggle()
    }
}
