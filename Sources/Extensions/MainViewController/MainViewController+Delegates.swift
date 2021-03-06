import  UIKit

extension MainViewController: CreditCardNumberDelegate {

    internal func validationButtonClicked(string: String) {
        if !string.isEmpty {
            let chainedString = string.replacingOccurrences(of: " ", with: "")

            guard let stringAsInt = Int(chainedString) else {
                fatalError("Casting string as integer failed")
            }

            fetchCardDetails(number: stringAsInt)
        } else {
            presentAlertView()
        }
    }

    private func presentAlertView() {
        let alert = UIAlertController(title: "No Input!",
                                      message: "Input Cannot be empty",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
