# Movie Recommendation Chat App

A Flutter-based movie recommendation chat application that suggests movies based on user preferences using AI. Built with Riverpod for state management, the MVVM architecture, and the Singleton pattern.

## 📂 Project Structure

```
├───constants
├───features
│   └───chat
│       ├───providers      # Riverpod providers for state management
│       ├───screens       # UI screens for the chat interface
│       └───widgets       # Reusable UI components
├───model
│   ├───candidate         # Data models for candidate responses
│   ├───content           # Movie content data structure
│   ├───gemini_response   # AI model response structure
│   ├───part              # Modular parts for request handling
│   ├───token_details     # Authentication and token management
│   └───usage_metadata    # Metadata tracking for API usage
└───repository            # Handles API calls and data operations
```

## 🚀 Features

- Chat-based movie recommendations using AI.
- Clean and scalable architecture (MVVM pattern).
- Efficient state management with Riverpod.
- Singleton pattern for optimized performance.
- Modular and reusable components.

## 🛠️ Tech Stack

- **Flutter** - Frontend framework
- **Dart** - Programming language
- **Riverpod** - State management
- **Gemini API** - Movie recommendations

## 🏗️ Architecture

This project follows the **MVVM (Model-View-ViewModel)** architecture:

- **Model:** Defines the data structures and business logic.
- **View:** UI components displaying data to users.
- **ViewModel:** Acts as a bridge between the model and view, handling logic and state management using Riverpod.

## Screenshot
![image](https://github.com/user-attachments/assets/7d7dfd30-e4f7-4395-bcaf-9e93f1d3449c)


## 📦 Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/your-username/movie-recommendation-chat-app.git
   cd movie-recommendation-chat-app
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the app:**
   ```sh
   flutter run
   ```

## 📜 Usage

1. Open the app and start a conversation.
2. Enter your movie preferences (genre, actors, etc.).
3. The AI suggests movie recommendations based on the input.

---

💡 **Developed with Flutter & ❤️**

