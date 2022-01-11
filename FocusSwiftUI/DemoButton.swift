import Foundation
import SwiftUI

/// Simple button customized for various states:
/// - focused: Green border
/// - pressed: Red foreground color
struct DemoButton: View {
    let label: String

    var body: some View {
        Button(
            action: { print(label) },
            label: { FocusableButtonContent(label: label) }
        )
        // Comment this out and the test starts passing
            .buttonStyle(PressedButtonStyle())
    }
}

struct PressedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.red : Color.white)
    }
}

struct FocusableButtonContent: View {
    let label: String
    @Environment(\.isFocused) var isFocused: Bool

    var body: some View {
        Text(label)
            .padding()
            .overlay(
                Capsule()
                    .stroke(isFocused ? Color.red : Color.white, lineWidth: 4)
            )
    }
}

// MARK: - Previews

struct DemoButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            DemoButton(label: "Button 1")
            DemoButton(label: "Button 2")
            DemoButton(label: "Button 3")
        }
    }
}
