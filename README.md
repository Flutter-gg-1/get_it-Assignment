
![tweeter](https://github.com/user-attachments/assets/bf25fe15-9114-4f72-a9bf-da63cb4a2441)

# 🐦 Tweet App

This Flutter assignment allows users to add and delete tweets, with all data being saved locally.

## ✨ Features

### 📋 Requirements
- **📝 Add Tweets:** Users can add a tweet to a list. Each tweet is stored locally on the device.
- **🗑️ Remove Tweets:** Users can delete a tweet from the list. The app updates the local storage to reflect these changes.

## 📚 Libraries Used

### ⚪️ get_storage
- **🔧 Purpose:** `get_storage` is a lightweight, fast, and easy-to-use library for local storage in Flutter apps. It allows you to store data locally on the device, making it useful for persisting user settings, caching data, and more.
- **💡 Common Use Cases:**
  - 📦 Storing simple key-value pairs.
  - 🌐 Caching data for offline use.
  - ⚙️ Persisting user preferences and settings.

### ⚪️ get_it
- **🔧 Purpose:** `get_it` is a simple service locator for Dart and Flutter. It helps in managing dependencies by allowing you to register and retrieve objects throughout your application, making it easier to decouple code and manage dependencies.
- **💡 Common Use Cases:**
  - 🗃️ Managing and accessing singletons.
  - 🧩 Implementing dependency injection.
  - 🛠️ Decoupling business logic from UI by providing easy access to services.

### ⚪️ intl
- **🔧 Purpose:** The `intl` package is used for internationalization and localization in Flutter apps. It helps in formatting dates, numbers, and currencies according to different locales.
- **💡 Common Use Cases:**
  - 🗓️ Formatting dates and times (`DateFormat`).
  - 💰 Formatting numbers and currencies (`NumberFormat`).
  - 🌍 Providing localized strings for different languages (`Intl.message`).
 
  ## sample Output
  ###### 📜 first 
  ![Screenshot 2024-08-29 at 1 01 04 AM](https://github.com/user-attachments/assets/e582f936-9663-4a71-a8bb-a5cf28cf73f0)

  
  ------------------------------------------------------------------------------------

   ###### 📜 second (add tweet)
  ![Screenshot 2024-08-29 at 1 01 51 AM](https://github.com/user-attachments/assets/489703c2-6c8b-4661-8096-bc8671a321d1)

  ![Screenshot 2024-08-29 at 1 02 03 AM](https://github.com/user-attachments/assets/05ebfd22-cb6a-4e1c-b622-ed18bb21fad1)

    ------------------------------------------------------------------------------------


  ###### 📜 third (after add tweet)
  ![Screenshot 2024-08-29 at 1 02 37 AM](https://github.com/user-attachments/assets/d0fd1c1e-7006-47d8-a415-b76b3aeb0337)

  ------------------------------------------------------------------------------------

  ###### 📜 forth (after delete tweet)

![Screenshot 2024-08-29 at 1 02 43 AM](https://github.com/user-attachments/assets/f477780b-1802-48bb-9fe8-b3888fe25db7)

  ------------------------------------------------------------------------------------

  ###### 📜  (After closing the application and then opening it again, the tweets are not deleted)
  
https://github.com/user-attachments/assets/98a06644-2827-435b-beb1-02d534a9f0c5

  ------------------------------------------------------------------------------------


## 📝 Conclusion

This Assignment  leverages powerful Flutter libraries like `get_storage`, `get_it`, and `intl` to build a robust, local-storage-based Tweet  app. The use of `get_storage` ensures that user data is persistently stored, while `get_it` simplifies dependency management, and `intl` adds flexibility for internationalization. These libraries together enhance the overall development experience and ensure that the app is scalable, maintainable, and ready for a global audience.

thanks 

 
