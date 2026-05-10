# ConsolePixelPaint

## About The Project

ConsolePixelPaint is a small educational side project built in x86 Assembly using MASM and the Irvine32 library. It is a console-based drawing program where the user moves a cursor around the screen and paints by placing colored character cells in the terminal.

I originally made this project as part of coursework and kept it as a practice project for low-level programming. The main goal was to understand how Assembly language can be used for keyboard input, cursor movement, screen positioning, console output, and basic procedural program design.

Even though the project is simple, it was a useful exercise in thinking more carefully about how programs work at a lower level compared to higher-level languages.

## Features

- Move the cursor using `W`, `A`, `S`, and `D`
- Draw on the console using the `Space` key
- Quit the program using `Q`
- Simple procedural structure written in Assembly

## Built With

- x86 Assembly
- MASM
- Irvine32 library
- Visual Studio project setup

## Controls

- `W` - Move up
- `A` - Move left
- `S` - Move down
- `D` - Move right
- `Space` - Draw
- `Q` - Quit

## Purpose

This project was created as an educational side project to practice:

- low-level programming concepts
- console input and output handling
- cursor positioning in the terminal
- Assembly procedures and control flow
- working with the Irvine32 support library

## Notes

This project depends on the Irvine32 library, so it is mainly intended for educational use in a Windows MASM environment.

## Source

The main source file is:

- `ConsolePixelPaint/Source.asm`
