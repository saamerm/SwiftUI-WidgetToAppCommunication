import Foundation
import SwiftUI
import WidgetKit
struct ContentView: View {
    var body: some View {
        Button {
            Task {
                WidgetCenter.shared.reloadAllTimelines()
            }
        } label: {
            Text("Update Widget")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
