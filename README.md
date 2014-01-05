#Luality

+ Algorithms
+ Coroutine
+ Debug
+ File
+ OS
+ Package
+ Data structures
+ String
+ Math
+ IO
+ Network
+ Table
	+ remove_all
	+ filter
	+ remove_nils
	+ map
	+ size
	+ is_empty
  	+ for_each
  	+ is_array
  	+ values
  	+ keys
  	+ fill
  	+ mirror
  	+ reverse
    + to_array
  
#How to install?
####Step 1
Copy "luality" directory from GitHub repository to your computer.

####Step 2
Open "luality.lua" file from "luality" folder and change following line:
`````package.path = "/Users/new/Documents/Development/Luality/luality/?.lua"`````

You should change current path to one where your "luality" folder was copied.

####Step 3
Move (or even better - create hard link) "luality.lua" file to any directory from Lua search paths.

Here is how you can easily check where Lua searches for files:
`````
Lua 5.1.5  Copyright (C) 1994-2012 Lua.org, PUC-Rio
> require 'class'
stdin:1: module 'class' not found:
	no field package.preload['class']
	no file './class.lua'
	no file '/Users/new/.rvm/share/lua/5.1/class.lua'
	no file '/Users/new/.rvm/share/lua/5.1/class/init.lua'
	no file '/Users/new/.rvm/lib/lua/5.1/class.lua'
	no file '/Users/new/.rvm/lib/lua/5.1/class/init.lua'
	no file './class.so'
	no file '/Users/new/.rvm/lib/lua/5.1/class.so'
	no file '/Users/new/.rvm/lib/lua/5.1/loadall.so'
`````

####Step 4
Use it.

#How to use?
Just simple as writing
`````
require("luality")
`````

Samples:
`````
local t = {1, 2, nil, 8, nil}

Luality.Table.remove_nils(t)
local new_t = Luality.Table.map(t, function(key, value) return value * value end)
print(table.unpack(new_t))
`````

#License
Copyright (c) 2013 Andrew Shmig

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
