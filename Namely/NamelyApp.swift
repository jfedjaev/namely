import SwiftUI

@main
struct NamelyApp: App {
    @StateObject private var nameViewModel = NameViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(nameViewModel)
        }
    }
}
