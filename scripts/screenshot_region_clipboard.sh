#!/bin/bash

# Capture a specific region and copy it to the clipboard
grim -g "$(slurp)" - | wl-copy