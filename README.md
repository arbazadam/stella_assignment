# A standalone project for replicating the UI

A standalone project developed using flutter 2.5.0. The project mainly focuses on different mobile screen sizes(tablets not included), The project includes a single screen which has a list of widgets taken from the supplied figma design. There are no external dependencies on this project, all the widgets are developed using the standard SDK widgets.

## Getting Started

1. In order to run this project, clone this repository and make sure you have the recent version of the flutter sdk. You can find it -[here](https://flutter.dev/docs/get-started/install).
2. You can choose any IDE of your choice, I have made use of Visual Studio code. If you are using Visual Studio Code make sure to configure the IDE with all the necessary plugins.
3. If you are willing to build it for both android and iOS make sure you have Android studio and Xcode installed.
4. Open the terminal inside the root directory and run this command, flutter build apk --release(To have a release build of this project).
5. The folder structure is pretty straight forward, all the widgets and screen reside inside the presentation folder, the different set of colors are inside the /constants.dart file. The text data is present inside /app_data.dart.
6. All the project assets are present inside the /assets folder.
7. The main.dart file is the entry point of the project.
8. The test folder has a very basic widget test.


