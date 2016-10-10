#!/bin/bash

workingDir="`dirname \"$0\"`"
cd "$workingDir" || exit 1

# Going to the theme, recompile css
cd "$workingDir/_theme_packages/the-program/assets/themes/the-program/css";
lessc style.less style.css;

# Reload the theme
cd "$workingDir"
yes | rake theme:install name="the-program"

# Nuke permissions
sudo chmod -R 0777 .;
sudo chmod -R +x .;

# Rebuild
cd "$workingDir"
jekyll build;
