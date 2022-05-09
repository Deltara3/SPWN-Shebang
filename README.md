# SPWN-Shebang
Unofficial Shebang support for [SPWN](https://github.com/Spu7Nix/SPWN-language) because I was bored.

# Installation
- Use `wget`.
  ```sh
  wget "https://raw.githubusercontent.com/Deltara3/SPWN-Shebang/main/sexec.sh" -O /directory/in/path/sexec
  ```
  In my case this would be:
  ```sh
  wget "https://raw.githubusercontent.com/Deltara3/SPWN-Shebang/main/sexec.sh" -O /usr/local/bin/sexec
  ```

# Usage
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
- Make the script executable.
  ```sh
  chmod +x script.spwn
  ```
- Execute the script.
  ```sh
  ./script.spwn
  ```
**NOTE: Nothing will be printed if compilation was a success.**

# Features
Like nothing, it's just Shebang support.
- Compile flags.
