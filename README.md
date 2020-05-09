# scad-box

Package **scad-box** provides an OpenSCAD module for creating boxes, including boxes with rounded corners.

It does this by exposing a `box()` module.

The `box()` is designed to feel similar to the built-in `cube()` module.

## Examples

Here are some examples of `box()` being used.

Creates a box with rounded corners, with the _width_, _height_, and _depth_ all equal to 1.
```
box();
```

Creates a box with rounded corners, with the _width_, _height_, and _depth_ all equal to 5.
```
box(5);
```

Creates a box with rounded corners, with the _width_, _height_, and _depth_ equal to 1, 2, and 3 respectively.
```
box([1,2,3]);
```
