# **TaskBunny : To-Do Application Based on Flutter Android App with Hive Database**

## **Overview**

This is a simple To-Do application built with Flutter for Android devices. The application allows users to create, read, update, and delete tasks, providing a straightforward interface to manage daily activities. The app uses **Hive**, a lightweight and fast NoSQL database for storing tasks locally on the device.

## **Features**

- **Add Tasks**: Easily add new tasks to your to-do list.
- **View Tasks**: Display all tasks in a list view.
- **Edit Tasks**: Modify existing tasks to update their details.
- **Delete Tasks**: Remove tasks from the list when they are no longer needed.
- **Local Storage**: Utilizes Hive DB for efficient local storage of tasks.
- **User-Friendly Interface**: Designed with a simple and intuitive user interface for seamless navigation.

## **Technologies Used**

- **Flutter**: An open-source UI software development toolkit for building natively compiled applications for mobile.
- **Dart**: The programming language used to develop the Flutter application.
- **Hive**: A lightweight and fast key-value database written in pure Dart for Flutter.

## **Installation**

### **Prerequisites**

- Ensure you have Flutter installed on your machine. You can follow the installation guide on the [official Flutter website](https://flutter.dev/docs/get-started/install).
- Ensure you have a compatible version of Dart.

### **Clone the Repository**

```bash
git clone https://github.com/yourusername/todo_app.git
cd todo_app
```

### **Install Dependencies**

Navigate to the project directory and run the following command to install the required packages:

```bash
flutter pub get
```

### **Run the Application**

You can run the application using the following command:

```bash
flutter run
```

Make sure you have an Android emulator running or a physical device connected.

## **Usage**

1. **Add a New Task**: Tap on the "Add Task" button to create a new task. Enter the task details and save.
2. **View Your Tasks**: All tasks will be displayed in a list. You can scroll to view all items.
3. **Edit a Task**: Tap on an existing task to edit its details.
4. **Delete a Task**: Swipe left on a task to delete it from your list.

## **Database Structure**

### **Hive DB**

- **Task Model**: The application uses a `Task` model to represent each to-do item, including properties like:
  - `id`: Unique identifier for each task.
  - `title`: The title of the task.
  - `isDone`: Boolean to track if the task is completed.

## **Contributing**

Contributions are welcome! To contribute to this project:
1. **Fork the Repository**: Create your own copy of the repository.
2. **Create a New Branch**: Use a descriptive branch name.
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make Your Changes**: Implement your feature or fix.
4. **Submit a Pull Request**: Describe the changes you've made.

## **License**

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

---
