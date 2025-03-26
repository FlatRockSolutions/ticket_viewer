# Flutter Mini Challenge – Ticket Viewer

## 🎯 Objective

Build a simple Flutter app that simulates viewing support tickets. This will help us get a sense of your approach to architecture, navigation, state management, and API integration.

---

## 🧩 Features

- View a list of tickets (title + description)
- Navigate to a detail screen to view full ticket info
- Fetch data from a mock API (JSON file)
- Use BLoC for state management
- Use go_router for navigation

---

## 🔧 Setup Instructions

### 1. Install dependencies

Add the following packages to your `pubspec.yaml`:

```yaml
dependencies:
  go_router: get_version
  dio: get_version
  flutter_bloc: get_version
```

---

### 2. Create the Ticket model

- Define a Dart model (`Ticket`) that matches the shape of the data from the provided mock JSON (lib/data/mock_tickets.json).
- Add a `fromJson` factory constructor for parsing.

---

### 3. Use Dio to fetch the data

- Fetch the data from the provided JSON file.
- You can use `dio.get()` on a local asset or serve the file from a simple local server (either approach is fine).

---

### 4. Parse and store ticket data

- Parse the JSON response and convert it into a list of `Ticket` objects.

---

### 5. Set up BLoC

- Create a BLoC (or Cubit) that handles loading tickets.
- Emit states such as `TicketsLoading`, `TicketsLoaded`, and `TicketsError`.
- Provide the BLoC to your widget tree using `BlocProvider`.

---

### 6. Routing with go_router

Set up navigation using go_router with two routes:

- `/tickets` → list view
- `/tickets/:id` → detail view

---

## 🧪 Evaluation Criteria

- Code organization and readability
- Usage of BLoC and go_router
- REST handling with Dio
- Ability to parse and display data cleanly
- Bonus: error handling, simple loading indicators

---

## ⏱ Time Estimate

Roughly 1.5–2 hours. This is not about perfection — we just want to see how you approach the tools we use.

---

## ✅ Submission

1. Clone the repository and create a new branch with your name.
2. Push your solution to the branch.
3. Open a **Merge Request** into the `main` branch when you're done.

Feel free to include comments or notes in your MR about anything you'd like us to know about your approach.

---

Let us know if you have any questions or get stuck during setup.