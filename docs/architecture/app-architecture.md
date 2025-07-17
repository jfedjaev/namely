# 🧱 App Architecture

## 1. App Structure

```
NamelyApp (SwiftUI App)
 ├── OnboardingView
 ├── NameSwipeView
 ├── ShortlistView
 └── MatchComparisonView
```

---

## 2. Core Layers

| Layer       | Components                          | Notes                              |
|-------------|--------------------------------------|------------------------------------|
| **Model**   | `Name`, `SwipeState`                 | From local JSON + local state      |
| **Storage** | `UserDefaults` or `CoreData`         | Simple and persistent              |
| **ViewModel** | `NameViewModel`, `ShortlistViewModel` | Handles logic & bindings         |
| **View**    | SwiftUI views                        | Declarative UI                     |

---

## 3. Data Handling

- Use `names.json` in app bundle  
- Load and parse into `[Name]` struct  
- Persist likes/dislikes locally  
- Separate user profiles (Juri / Jasna) stored locally  

---

## 4. Matching Logic

- Each profile (Juri, Jasna) stores their own likes  
- Matching screen compares both local lists  
- Intersection = shared shortlist  

---
