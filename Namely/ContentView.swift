import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: NameViewModel

    var body: some View {
        NavigationView {
            List(viewModel.names) { name in
                VStack(alignment: .leading) {
                    Text(name.name)
                        .font(.headline)
                    Text("\(name.origin) - \(name.meaning)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Names")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NameViewModel())
    }
}
