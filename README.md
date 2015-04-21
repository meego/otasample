
# What is it ?

OTAExample is a demo Android app to demonstrate how to integrate the
Audioneex audio recognition engine into mobile applications to perform
in-device identifications. For more information about Audioneex please
see [www.audioneex.com](http://www.audioneex.com).

## Pre-requisites

In order to build the app, you need the Audioneex SDK for Android. A free
version for non-commercial uses can be downloaded from [www.audioneex.com](http://www.audioneex.com).
Both the Android SDK and NDK must be installed and correctly configured.

## Building the app

To build the app simply import the source directory into your favourite IDE,
create a project and build it. Here I will only explain the steps for Eclipse.
For Android Studio you can find a port [here](https://bitbucket.org/boeboe/audioneex-demo).

1. Import the source directory into the workspace (File->Import...)
2. Add the Android Support Library v7 to the project if necessary (Project->
   Properties->Android tab->Library->Add, then choose "android-support-v7-appcompat"
3. Add native support to the project (right click on the project, then Android Tools->
   Add Native Support, in the popup dialog insert "audioneex-jni" as the native library name.
4. Copy libaudioneex.so from the SDK Android lib folder to the jni/lib/armeabi-v7a folder.
   The sample uses Tokyo Cabinet as the storage engine, so you also need to copy libtokyocabinet.so.
   Custom drivers for different databases can be built using the engine's SDK
   should you prefer other storage solutions.

Build and run the application on the device. Running on emulators is not advised
unless you're using one that can run as fast as a real device.

## Running the app

The app demonstrates how Audioneex can be integrated into mobile applications for in-device
OTA (Over-The-Air) audio recognition. In order for the app to be able to identify audio
being played in the ambient it is necessary to build a reference database, that is
a collection of the audio that we want to recognize, encoded in a special format.
This database can be built using the command line tools provided in the SDK or,
better, the desktop demo which provides a UI. You can download the demo [here](http://www.audioneex.com/downloads.html).
Creating a reference database is as easy as specifying a directory containing audio
files and pushing a button. Please refer to the docs included with the desktop demo app
for more info.

Once you've built your own reference database, just copy the *data.idx*, *data.qfp* and *data.met*
in the *assets* directory of the Android project and the app will be ready to perform
recognition of audio playing in the surrounding environment.

Please refer to the documentation included in the SDK and on www.audioneex.com
for more information about the engine and how to use it.

