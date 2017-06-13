#!/bin/bash

  
  red="$(tput setaf 196)"
  green="$(tput setaf 76)"
  orange="$(tput setaf 172)"
  cyan="$(tput setaf 81)"
  magenta="$(tput setaf 147)"
  yellow=$(tput setaf 229)
  normal="$(tput sgr0)"

  # Errors, warnings, notes and compiler recipes
  error="s/(error:|^[^a-z]error:)/$(printf "$red")\\1$(printf "$normal")/i"
  warning="s/(warning:|^[^a-z]warning:)/$(printf "$yellow")\\1$(printf "$normal")/i"
  note="s/(note:|^[^a-z]note:)/$(printf "$orange")\\1$(printf "$normal")/i"
  linking="s/(^linking.*|^.*[^a-z]linking.*)/$(printf "$magenta")\\1$(printf "$normal")/i"
  linker="s/(^linker|^.*[^a-z]linker:)/$(printf "$magenta")\\1$(printf "$normal")/i"
  built="s/(^built.*|^.*[^a-z]built .*)/$(printf "$green")\\1$(printf "$normal")/i"
  compiler="s/^((gcc|g\+\+|clang|python|bash:|make:|make\[))/$(printf "$magenta")\\1$(printf "$normal")/i"


  while read x; do echo $x; done | sed -ru -e "$warning" -e "$error" -e "$note" \
      -e "$linker" -e "$linking" -e "$built" -e "$compiler"


