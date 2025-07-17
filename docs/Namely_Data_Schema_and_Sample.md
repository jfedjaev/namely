# Namely – Name Data Schema & Sample Dataset

---

## 🧩 Name Struct (Swift)

```swift
struct Name: Identifiable, Codable {
    let id: UUID
    let name: String
    let origin: String
    let meaning: String
    let gender: Gender
}

enum Gender: String, Codable {
    case male, female, unisex
}
```

---

## 📄 Sample JSON Data (`names.json`)

```json
[
  {
    "id": "a1b2c3d4-e5f6-7890-abcd-1234567890ab",
    "name": "Liora",
    "origin": "Hebrew",
    "meaning": "My light",
    "gender": "female"
  },
  {
    "id": "b2c3d4e5-f6a7-8901-bcde-2345678901bc",
    "name": "Elias",
    "origin": "Hebrew",
    "meaning": "Yahweh is my God",
    "gender": "male"
  },
  {
    "id": "c3d4e5f6-a7b8-9012-cdef-3456789012cd",
    "name": "Aria",
    "origin": "Italian",
    "meaning": "Melody",
    "gender": "unisex"
  }
]
```

---

*Stored locally in `Resources/names.json` and loaded at launch.*
