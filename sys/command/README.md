## sys / command

### Introduction

Calling `Sys.command()` equates to executing a command from the command line. It also enables you to provide an argument list to pass to the executed command.

This is useful for e.g. executing external scripts.

Note that the any system platform functionality is only available on system platforms (C++, C#, Java, Neko, PHP, Python), and within the macro context.

### Description

The example calls the `echo` command to output an array of strings to the command line.

Note the use of argument arrays, along with the use of the command name.

### Building

Use `haxe build.hxml` from within this directory.

### References

* [Haxe API](http://api.haxe.org/Sys.html)
