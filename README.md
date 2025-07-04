# 🛒 Flutter Product List Page

A full-featured eCommerce app built using **Flutter** with **Bloc(Cubit)** for state management, **Clean Architecture** principles, and **Dependency Injection** via `get_it`. This project demonstrates scalable project structure, clean code separation, and modern UI practices.

## Screenshots

## video

## 🚀 Features

### 🖼️ Product Listing page
- Fetches products from [fakestoreapi](https://fakestoreapi.in/docs).
- Displays image, title, brand, model, color, category, price, discount and a short description.
- Shimmer effect shown while fetching data.
- Graceful error handling with user-friendly messages.
---

## 🏗️ Architecture

This project uses **Clean Architecture** to promote separation of concerns and maintainability.

## 📁 Project Structure

```plaintext

├── Makefile // Automate Flutter build, clean, and pub tasks with simple make commands.
lib/
├── app.dart
├── main.dart
├── service_locator.dart // Manages Dependency Injection using 'get_it'. 

├── common/
│   ├── handler/
│   │   └── response_handler.dart
│   └── utils/
│       └── helper.dart

├── core/
│   ├── base_usecase/
│   │   └── base_usecase.dart
│   ├── constants/
│   │   ├── api_endpoints.dart
│   │   ├── color_palette.dart
│   │   └── font_sizes.dart
│   └── network/
│       ├── auth_interceptors.dart
│       ├── dio_client.dart
│       └── logger_interceptor.dart

├── data/
│   ├── models/
│   ├── repositories_impl/
│   └── sources/

├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/

└── presentation/
    ├── cubit/
    │   ├── home_cubit.dart
    │   └── home_state.dart
    ├── pages/
    └── widgets/   // Defines reusable UI components

```
## 🧰 Packages Used

| Package                 | Usage                                                      |
|------------------------|------------------------------------------------------------|
| `flutter_bloc`         | State management using Bloc/Cubit pattern                  |
| `equatable`            | Simplifies equality comparison in Bloc/Cubit states/events |
| `dio`                  | Powerful HTTP client for API calls                         |
| `logger`               | Logging utility for debugging, especially network requests |
| `shared_preferences`   | Persistent local storage for simple data                   |
| `get_it`               | Service locator for dependency injection                   |
| `dartz`                | Functional programming support (e.g., Either, Option)      |
| `cached_network_image`| Image caching and lazy loading                             |
| `shimmer`              | Loading shimmer effect for better UX during data fetch     |
| `google_fonts`         | Easy integration of Google Fonts, like Poppins             |
| `cupertino_icons`      | iOS-style icons used across platforms                      |


## 🌐 API Integration

This application uses a public API provided via **fakestoreapi** to fetch product data.

- **Base URL**:  
  `https://fakestoreapi.in`

The API is used to:
- Fetch the product list

All API interactions are handled using the `dio` package and integrated with clean architecture for proper abstraction, error handling, and scalability.



## ✅ **Requirements**

    Flutter SDK: Latest stable version.

    Java JDK 17 or higher.

    VS Code or Android Studio.


## 🔧 Project Setup

### Prerequisites

Before you begin, make sure you have the following installed:

1. **Flutter SDK** (Version: 3.22.3 or higher)
   - To check if Flutter is installed, run:
     ```bash
     flutter --version
     ```
   - Example output:
     ```
     Flutter 3.22.3 • channel [user-branch] • unknown source
     Framework • revision b0850beeb2 (10 months ago) • 2024-07-16 21:43:41 -0700
     Engine • revision 235db911ba
     Tools • Dart 3.4.4 • DevTools 2.34.3
     ```

2. **Java Development Kit (JDK)** (Version 17 or higher)
   - Ensure that Java 17 is installed on your machine. You can verify it by running:
     ```bash
     java -version
     ```

3. **VS Code** (or any IDE of your choice)
   - Install **VS Code** for Flutter development.
   - Install the **Flutter** and **Dart** plugins in your IDE.

---

### 1. **Clone the Repository**

Once your development environment is ready, clone the repository to your local machine:

```bash
git clone https://github.com/subshegde/Webly-Task.git
cd Webly-Task
```

### 2. **Install Dependencies**

Run the following command to install the required dependencies:

```bash
flutter pub get

```


### 3. **Run the App**

Start the app by running the following command:
```bash
flutter run
```


### 4. **Checking for Issues with** `flutter doctor`

To ensure your Flutter environment is correctly set up, run the following command:

```bash
flutter doctor
```

# Happy Coding