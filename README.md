# 🔐 Flutter Authentication UI (MVVM + Provider + flutter_animate)

A modern **Authentication UI** built with **Flutter** following the **MVVM architecture**.  
It includes smooth animations, gradient backgrounds, and reusable widgets for **Login / Signup forms**.

---

## 📂 Project Structure

```bash
lib/
├── core/
│   └── widgets/
│       └── social_icon.dart        # Reusable social media button
│
├── features/
│   └── authentication/
│       ├── model/
│       │   ├── user_model.dart
│       │   └── auth_credentials.dart
│       │
│       ├── service/
│       │   └── auth_service.dart   # Business logic (Firebase/API)
│       │
│       ├── view_model/
│       │   └── auth_view_model.dart # Holds UI state (login/signup)
│       │
│       └── view/
│           ├── authentication_screen.dart # Main screen
│           └── widgets/
│               ├── sign_in_form.dart
│               ├── sign_up_form.dart
│               ├── auth_buttons.dart
│               └── social_icon.dart
│
└── main.dart
