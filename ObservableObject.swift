import SwiftUI

class MyViewModel: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    @ObservedObject var viewModel = MyViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            Button("Increment") {
                viewModel.count += 1
            }
        }
    }
}
