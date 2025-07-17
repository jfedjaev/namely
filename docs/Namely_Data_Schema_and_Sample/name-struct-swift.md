# 🧩 Name Struct (Swift)

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
