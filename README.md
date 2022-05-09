# SPWN-Shebang
Unofficial Shebang support for [SPWN](https://github.com/Spu7Nix/SPWN-language) because I was bored.

# Usage
- Put `sexec` somewhere in path.
- Create a new SPWN file with the Shebang line.
  ```swift
  #! env -S sexec
  $.print("Hello, world!")
  ```
  Compile flags can be used. For example:
  ```swift
  #! env -S sexec -l
  $.print("Hello, world!")
  ```
**NOTE: Nothing will be printed if compilation was a success.**

# Features
Like nothing, it's just Shebang support.
- Compile flags.
