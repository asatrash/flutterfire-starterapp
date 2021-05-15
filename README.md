# starterapp

Fluuter app with basic firebase connectivity. Supports web/android

## Getting Started

This project is a starting point for a Flutter/Firebase web/android application.


## How to use
- Clone the repo
- Change update the packages
- Create a new Firebase app in Firebase console
- Register app for web
- Get the config settings from Firebase console and update the web/index.html
- (Now it should work in web connected to the new firebase app)
- Add Android app to the firebase through the console and give it a package name
- Open build.gradle under android/app and change the defaultConfig -> applicationId to reflect the same package id given in firebase console
- Run 'flutter clean'
- Run 'flutter create -org <package domain> .
- Download the google-services.jason from Firebase console and put it under android/app folder
- Check whether the Firebase SDK settings are uptodate 
- Go to android folder in the command prompt and run .\gradlew --refresh-dependencies
- (Now it should work in Android, connected to the new firebase app)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
