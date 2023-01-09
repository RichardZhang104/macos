# macos

## Simple bar

The simple-bar folder is located in ~/Library/Application\ Support/Übersicht/widgets/simple-bar. Go to lib/styles/themes. Put the .js file in there, then edit the themes.js in the previous directory for it to show up in your bar config.

## Launcher

https://youtu.be/PnkYMqGhbi4

## Custom Scripts explanation

MacOS behaviour when closing a window: If there is another window open of the same application, focus that window. If not, don't do anything. 

The script focus.sh is run whenever a window is killed. If macos has not focused a window, it will first focus the last window in the tree, or if not then a floating window.

In System preferences -> Mission control, there is a setting: When switching to an app, switch to a space with open windows for that app. I think this is unintuitive behaviour, as eg. if I have terminal open in space 2 and try and open another one in space 4, macos will switch to space 2 first then open. So I think this setting needs to be disabled.

This creates another problem: eg. I have firefox open in space 1 and am on space 4. If press a keybind to launch firefox it will focus firefox but remain on space 4. The smartopen.sh script fixes this behaviour.
