
Range

 The python range() function is such a simple an enjoyable iterator, it's only natural that I want to use it in bash.
 This is quite literally a range() taking argument from stdin to run the python code.

 The executable was made with pyinstaller. It is simple to use, but it's way heavier.
 I recommend using the range.py and setting an alias in your shell config file.
 `alias range="python3 ~/path-to-script/range.py`

 There is only one key difference:
  It adds 1 to the last number for bash convenience.
  
  instead of the usual:
    range(5) => 0,1,2,3,4
  the output of this script:
     range 5 => 0,1,2,3,4,5

  Useful when making directories and such

Installation
 1. Download the range binary

 2. Move it to a directory in your path (usually '~/.local/bin' is fine)

 3. make range executable (chmod +x)

 4. try it out, no args will print a (very) basic help