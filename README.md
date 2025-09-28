# Pentomino Calendar Puzzle

This is a 3D-printable Pentomino Calendar Puzzle designed in OpenSCAD. The puzzle is a fun and challenging way to display the current date. The goal is to fit all 12 pentomino pieces onto the board, leaving only the current month and day uncovered.

## The Puzzle

The puzzle consists of three main parts:
- **The Base:** A grid with the months of the year and the days of the month.
- **The Lid:** A cover for the puzzle.
- **The Tiles:** 12 pentomino pieces.

## Files

- `base.scad`: The OpenSCAD file for the base of the calendar. It includes the grid for the days, months, years and a personal message.
- `lid.scad`: The OpenSCAD file for the lid of the calendar.
- `tilesv2.scad`: The OpenSCAD file for the 12 pentomino puzzle pieces.
- `data.scad`: This file contains the data for the calendar systems (Jalali, Gregorian), including the text for months, days, and years.

## How to Use

1.  **3D Print the Parts:** Print the `base`, `lid`, and all 12 `tiles`.
2.  **Play:** Arrange the 12 pentomino pieces on the base to cover all the squares except for the current month and day.

## Customization

The project is designed in OpenSCAD, so you can easily customize it.

### Calendar System

You can change the calendar system by modifying the `data_source` variable in `base.scad`. The available options are:
- `"jalali"`: For the Persian (Jalali) calendar.
- `"gregorian"`: For the Gregorian calendar.
- `"jalali_animal"`: For the Persian (Jalali) calendar with animal years.

### Language and Year

All the text, including months, days of the week, and the years, are defined in the `data.scad` file. To change the language or the range of years, you need to edit the corresponding data inside this file. For example, to change the years for the Gregorian calendar, you would modify the `gregorian()` function in `data.scad`.

### Personal Message

The base of the calendar includes a personal message box. You can change the message by editing the `text3d` call in `base.scad`.

### Dimensions

You can adjust the size of the calendar by changing variables like `block`, `pad`, and `depth` in `base.scad`.

## Dependencies

This project uses the [BOSL2 library](https://github.com/revarbat/BOSL2) for OpenSCAD. Make sure you have it installed and included in your OpenSCAD project.

## Printing and Assembly

If you want the text on the base to be a different color, you can add a pause in your slicer (e.g., OrcaSlicer) at the layer where the text begins. This will allow you to change the filament color without needing an AMS or MMU.

The lid and base are designed with holes for magnets to hold them together, but you can also use glue as an alternative.

## Disclaimer

I am not an expert in OpenSCAD. This project was created as a simple and fun experiment. The code may not be the most optimized or efficient, but it works!

<details>
<summary>Example Solution</summary>

![Pentomino Calendar Solution](images/pentomino-calendar-solution.jpg)
![Pentomino Calendar Solution 2](images/pentomino-calendar-2.jpg)
![Pentomino Calendar Solution 3](images/pentomino-calendar-3.jpg)

</details>