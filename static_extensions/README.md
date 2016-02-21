## Static Extensions

### Introduction

**Static extensions** make it possible to enrich an existing type with additional functionality without actually changing the type definition.

Static extensions are **public static functions**. They _must_ describe an initial function parameter that matches the type to be extended. Following that, any number of different parameters can be defined. There are no requirements set regarding the return type of these functions.

Static extensions should be included in a project with the `using` **keyword**. This makes it possible to use the defined extensions in the context of the extended type and access them using dot notation. However, the usual `import` statement is fine as well. Note, in that case static functions are accessed through the class that defines them.

### Description

The example covers creation of static extensions for the `Array` type. These are located in the `ArrayTools` module.

The two static extensions are `getRandomElement()` and `zip()`. The former returns a random element from the array, and the latter creates a new array of tuples from the target array elements and elements of the array provided as the function argument. These functions were implemented solely for demonstrative purposes.

Note how the type parameter makes it possible for static extensions to work with any array.

### Building

Use `haxe build.hxml` from within this directory.

### References

* [Haxe manual](http://haxe.org/manual/lf-static-extension.html)
