# Image Manipulation

Uses the `haxe.io` package to create a cross-platform way of accessing and manipulating the structure of a [bitmap image file](https://en.wikipedia.org/wiki/BMP_file_format).

Also demonstrates:

* use of a type definition to create an alias for another type;
* use of type definitions to describe data structures for bitmap headers;
* use of array comprehension to create two-dimensional arrays;
* ...

This program reads a bitmap image file and saves its red, green, and blue channel to separate bitmap image files.

Use `haxe build.hxml` in the root of the repository folder to build the project for Neko. Run binary from `image-manipulation/bin` folder to ensure image file is read.

Test image `baboon.bmp` obtained from [here](http://www.hlevkin.com/TestImages/classic.htm).