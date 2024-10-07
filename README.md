
# Flutter Provider Examples

A Flutter project demonstrating the use of the `Provider` package through multiple small projects, progressing from basic to advanced levels.

## Getting Started

This project provides various examples that will help you learn how to manage state in Flutter using `Provider`. Each example focuses on a different aspect of `Provider` and state management in Flutter applications.

A few resources to help you get started with Flutter:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For further guidance on Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Project List

Here is a list of the small projects included in this repository, ranging from simple state management to more complex use cases.

### 1. **Counter Example**
   - **Description**: A basic counter app where `Provider` is used to manage app state.
   - **Goal**: Learn the fundamentals of `Provider` for managing state.
   - **Features**: Increment and decrement counter using global state.
   - **Directory**: `counter_example`

### 2. **Favorites Screen (Basic)**
   - **Description**: A favorites screen where users can select items, and the selected items are shown on a different screen using `Provider`.
   - **Goal**: Learn how to pass data between screens using `Provider`.
   - **Directory**: `favorites_screen`

### 3. **Slider**
   - **Description**: A screen where a slider adjusts the opacity of items dynamically. The opacity changes as the slider moves.
   - **Goal**: Learn how to handle complex state changes with `Provider`.
   - **Directory**: `screen_slider`

### 4. **Theme Changer**
   - **Description**: Toggle between light and dark themes using `Provider`.
   - **Goal**: Learn how to manage app-wide state for theme switching.
   - **Directory**: `theme_changer`

### 5. **Stateless to Stateful Counter**
   - **Description**: A counter app that demonstrates switching from stateless widgets to stateful ones, managed by `Provider`.
   - **Goal**: Learn the difference between stateless and stateful widgets with Provider.
   - **Directory**: `counter_stateless_to_stateful`

### 6. **Login Page with API Authentication**
   - **Description**: A login page where the user can authenticate using an API. The login state is managed using `Provider`.
   - **Goal**: Learn how to integrate API calls and manage authentication state with `Provider`.
   - **Directory**: `login_page_api`

## How to Run

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/flutter-provider-examples.git
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

---

For more details on Flutter and Provider, visit:

- [Flutter Documentation](https://docs.flutter.dev/)
- [Provider Package Documentation](https://pub.dev/packages/provider)

