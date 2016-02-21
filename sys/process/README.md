## sys / process

### Introduction

Creating a new `Process` equates to **starting a new process via the command line**. It also enables you to provide an argument list to pass to the executed command. The result is a handle to the created process.

Passed command arguments are automatically quoted and all the necessary character escaping is performed. If no arguments (or `null`) are given, they _can_ be added to the command string _providing they are written exactly as they would be when executed from the command line_. Note that `Process` is not limited to executables - it can also run shell commands.

The `Process` **API** provides a **standard input**, **standard output**, and **standard error** handle. These handles can be used to send data to the process or retrieve data from the process. Handles use the `haxe.io.Input` and `haxe.io.Output` APIs.

The API also provides a method that **returns the process ID** (PID), and **three methods for ending the process**: `exitCode()`, `close()`, and `kill()`. The first blocks the current program until the process exits, and then returns the process' exit code. The second closes the process handle and releases all associated resources. The third forcibly kills the process.

Note that `Process` fields _should not be used_ after the process handle has been closed!

Remember, any system platform functionality is only available on system platforms (C++, C#, Java, Neko, PHP, Python), and within the macro context.

### Description

The example creates a new handle for the `haxelib list` process. It then demonstrates use of the process standard output handle to read the `haxelib list` result and count the number of installed libraries.

The example prints the executed process, process ID, number of installed libraries, and process exit code.

### Building

Use `haxe build.hxml` from within this directory.

### References

* [Haxe API](http://api.haxe.org/Sys.html)
* [Source code](https://github.com/HaxeFoundation/haxe/blob/development/std/sys/io/Process.hx)
