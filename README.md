# APK Installer for OS X
This app allows you to make a typical double click on any `.apk` file. It will automatically run `adb install` command to the connected devices.

**Note: the gifs are from old version. The current version doesn't show any notification. It just installs the app on the connected device.*

**Note 2: If you have issues, see `/tmp/apk_installer_log.txt`*

## Usage 1
Move APK Installer to the OS X Dock and then just Drag and drop any .apk file on it. **Currently connected device** will have that apk installed inmediately.

![](img/demo_drag_and_drop.gif)

## Usage 2
Double Click on any .apk file and get your app installed on **currently connected device**.

![](img/demo_double_click.gif)

To do it properly you must set up the file association first:

* `⌘ + i` on any .apk file.
* Click on "Open with" dropdown.
* Select **Other..**
* Navigate to your Applications if not already there and choose the APK Installer app.
* Finally click on Change All... button in the same Info window.

![](img/demo_create_association.gif)

## Installation

* Download the `Apk Installer.app.zip`, uncompress it and drag and drop to your Applications folder* 

* IMPORTANT: Don't forget to go "System Settings > Security & Privacy > Allow apps downloaded from". And press **Open anyway** if your system complains that this app was downloaded from unknown sources. 



[Full Video Demo](https://www.youtube.com/watch?v=q-AqVJGGezY)

## Credits

* This app was developed by @vitovalov

* Icon design by [ITMaryna](https://www.behance.net/ITMaryna)
