import Foundation
import SwiftUI
import WidgetKit
struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack{
            
            TextField("Enter your name", text: $name).padding()
            Button {
                Task {
                    if let userDefaults = UserDefaults(suiteName: "group.com.tfp.watchconnectivity") {
                        userDefaults.setValue(name, forKey: "Name")
                    }
                    WidgetCenter.shared.reloadAllTimelines()
                }
            } label: {
                Text("Update Widget")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
