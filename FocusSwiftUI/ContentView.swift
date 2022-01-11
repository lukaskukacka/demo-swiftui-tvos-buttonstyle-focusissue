import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack(spacing: 40) {
            DemoButton(label: "Button 1")
            DemoButton(label: "Button 2")
            DemoButton(label: "Button 3")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
