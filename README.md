# Age_calculator

This app is going to turn into a health tracker app.

### Features/Widgets used: 
Including splash pages in apps.<br>
Using the date controller and text controller in apps.<br>
improved UI learning.<br>

### About the app:
#### 1.Splash Screen:
Displays an app logo (sports handball icon) and the text "SIMPLY FITNESS COMPANY" in the center of the screen.<br>
Lasts for 5 seconds (controlled by Timer).<br>
<img src="https://github.com/Riya-Jalgaonkar/Age_calculator/assets/136700099/f7fd18cc-c7b2-473c-a134-3216ff3703f4" width="100" height="180">

#### 2.Age Calculator Screen (First):
User Interaction:
Prompts the user to enter their birthdate.<br>
Displays a date picker when the user taps on the text field for selecting a date.<br>
Calculates the age based on the selected date.<br>
<img src="https://github.com/Riya-Jalgaonkar/Age_calculator/assets/136700099/70927f12-1ad9-47f9-a291-8b48127ffa8b" width="100" height="180">
<img src="https://github.com/Riya-Jalgaonkar/Age_calculator/assets/136700099/836f3593-4735-4d35-a2d8-2981bfc57d09" width="100" height="180">
<img src="https://github.com/Riya-Jalgaonkar/Age_calculator/assets/136700099/1a6335d9-46c7-4797-b72c-0348a9a020b3" width="100" height="180">

#### 3.UI Elements:
"Lets start with your age" title.<br>
Text field for picking a date (with a date picker).<br>
Displays the calculated age in years.<br>
"YOUR AGE" label.<br>
"YRS" label.<br>

#### 4.Styling:
Background color is a light shade of blue (Colors.blue[50]).<br>
Various text styles for headings, labels, and the calculated age.<br>

#### 5.Overall App:
Uses Material Design for UI components (based on MaterialApp).<br>
Removes the debug banner (debugShowCheckedModeBanner: false).<br>
Navigates from the splash screen to the age calculator screen (First) after 5 seconds.<br>
Utilizes two separate Dart files for code modularity (splashpage.dart and screen.dart).<br>
Implements a clean dispose of resources (controller) when the widget is removed.<br>
Uses setState for updating the UI in response to user actions.<br>
