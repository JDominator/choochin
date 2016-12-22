#!/bin/bash

# Do you have a bin directory?
if [ ! -d "${HOME}/bin" ]; then
  # You don't have one, let's make one.
  mkdir "${HOME}/bin"
fi

# What is the path to this file?
path_to_this_script="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy chooch to the bin directory.
cp "${path_to_this_script}/chooch" "${HOME}/bin/chooch"

# You need to be able to run it, you can run it, everone else can read it.
chmod 744 "${HOME}/bin/chooch"

echo "Dun copied over."
echo "Go into your git directory and type 'chooch' to push your changes to your git repository."

