
<p align="center">
<img src="./assets/logo-h.png" alt="Tuwaiq" width="400"/>

# GitIt & GetStorge
This is a streamlined Twitter-like application where users can add and delete tweets. The app ensures that tweets are stored locally, preserving data even if the user exits the application. Data management is efficiently handled using GitIt and GetStorage.

## Getting started
 ### Dependencies
You need to install the Dart programming language and Flutter framework.

### Executing program
1- Copy url then go to terminal and write: 
```
git clone ‹url›
```
2- Go to the cloned project using:
```
 cd < PROJECT-NAME> 
 ``` 

3- To create and start flutter project: 
```
flutter create project_name
cd project_name
code .
```

4- The program is now ready to run.
you can use this command to run the program:
```
flutter run
```

### installing  packege as a library 

#### Shimmer
Run this Command:
```
 $ flutter get_it
```
#### get_storage
 Run this Command:
```
 $ flutter pub add get_storage
```

## App Overview
**This app allows users to add new tweets with the following features:**

- **Global Data Access:** The app uses `GetIt` for seamless data access throughout the application.
- **HomeScreen Functionality:** On the home screen, users can `add` new tweets by typing their message and either `saving` or `canceling` the operation.
- **Tweet Management:** Once saved, tweets appear on the home screen. Users can `delete` any tweet by clicking on the delete icon or `add` more tweets as desired.
- **Data Persistence:** Tweets are preserved and accessible even after the app is closed, ensuring continuity through GetStorage.




## Resourses

Packeges: https://pub.dev/

Figma design: [Figma](https://www.figma.com/design/aWCEupjtCF8SFRjcoIswdZ/get_it-assignment?node-id=0-1&t=CafZwovrSmT1CtSp-1)

## OutPut
Outcome of the App:
<p align="center">
<img src="assets/output.gif" alt="Tuwaiq" width="300"/>




When the app starts, existing tweets are retained and displayed. Users can seamlessly add and remove tweets, with all changes being preserved even after closing and reopening the app.


## Language and freameWorkes
- Dart programming language
- Flutter framework

## Created by
**Yara Albouq**