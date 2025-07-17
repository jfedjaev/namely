# Namely – Core Module Integration Checklist

---

## ✅ App Bootstrap

- [ ] Setup new SwiftUI project
- [ ] Create folder structure (Models, ViewModels, Views, Resources)
- [ ] Add `names.json` to `Resources` group

---

## 📄 Data Model & Loader

- [ ] Define `Name` and `Gender` structs
- [ ] Load and decode `names.json` into `[Name]`
- [ ] Store parsed names in `NameViewModel`

---

## 🎴 Swipe Interface

- [ ] Implement `NameSwipeView` with card UI
- [ ] Add swipe gestures (left = dislike, right = like)
- [ ] Animate card transitions
- [ ] Save like/dislike to local store

---

## 💾 Persistence

- [ ] Use `UserDefaults` or `CoreData` to store:
  - Likes per user (Juri / Jasna)
  - App onboarding state
- [ ] Load likes into shortlist on app launch

---

## 💌 Shortlist & Match

- [ ] Build `ShortlistView`
- [ ] Add clear/reset button
- [ ] Build `MatchComparisonView`
- [ ] Toggle: "My likes" / "Our matches"

---

## 🌱 Extras (if time allows)

- [ ] Add profile toggle at onboarding
- [ ] Add emoji or doodle icons to cards
- [ ] Add subtle haptic feedback on like/dislike

---

*Use this checklist to track weekend MVP build progress.*
