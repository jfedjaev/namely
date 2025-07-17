import Foundation

class NameViewModel: ObservableObject {
    @Published var names: [Name] = []
    @Published var likedNames: [Name] = []

    private let likedNamesKey = "likedNames"

    init() {
        loadNames()
        loadLikedNames()
    }

    func loadNames() {
        if let url = Bundle.main.url(forResource: "names", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.names = try decoder.decode([Name].self, from: data)
            } catch {
                print("Error loading names: \(error)")
            }
        }
    }

    func like(name: Name) {
        likedNames.append(name)
        saveLikedNames()
    }

    private func saveLikedNames() {
        do {
            let data = try JSONEncoder().encode(likedNames)
            UserDefaults.standard.set(data, forKey: likedNamesKey)
        } catch {
            print("Error saving liked names: \(error)")
        }
    }

    private func loadLikedNames() {
        if let data = UserDefaults.standard.data(forKey: likedNamesKey) {
            do {
                self.likedNames = try JSONDecoder().decode([Name].self, from: data)
            } catch {
                print("Error loading liked names: \(error)")
            }
        }
    }
}
