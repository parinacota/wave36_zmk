#!/bin/sh

echo 'Parsing ZMK keymap...'
keymap -c keymap_config.yaml parse -z ../config/wave36.keymap > keymap.yaml

echo '\n\nDrawing keymap...'
keymap -c keymap_config.yaml draw --qmk-keyboard wave36 --qmk-layout LAYOUT_split_3x5_3 keymap.yaml > keymap.svg
