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
- `data.scad`: This file contains the data for the calendar systems (Jalali, Gregorian), including the text for months, and days.

## How to Use

1.  **3D Print the Parts:** Print the `base`, `lid`, and all 12 `tiles`.
2.  **Play:** Arrange the 12 pentomino pieces on the base to cover all the squares except for the current month and day.

## Customization

The project is designed to be easily customizable through the `Makefile`.

### Calendar System

You can change the calendar system by setting the `CALENDAR_TYPE` variable when running `make`. The available options are:
- `gregorian`: For the Gregorian calendar (default).
- `jalali`: For the Persian (Jalali) calendar.

Example:
```bash
make CALENDAR_TYPE=jalali
```

### Personal Message

You can customize the personal message on the base of the calendar using the following `make` variables:
- `PERSONAL_MESSAGE`: The text of the message.
- `PERSONAL_MESSAGE_FONT`: The font to use.
- `PERSONAL_MESSAGE_SIZE`: The font size.
- `PERSONAL_MESSAGE_SPIN`: The rotation of the text.
- `PERSONAL_MESSAGE_DIRECTION`: The text direction (`ltr` or `rtl`).
- `PERSONAL_MESSAGE_LANGUAGE`: The language of the text (e.g., `en`, `fa`).
- `PERSONAL_MESSAGE_SCRIPT`: The script of the text (e.g., `latin`, `arabic`).

Example:
```bash
make PERSONAL_MESSAGE="Hello World" PERSONAL_MESSAGE_FONT="Ubuntu" PERSONAL_MESSAGE_DIRECTION="ltr"
```

### Dimensions

You can adjust the size of the calendar by changing variables like `block`, `pad`, and `depth` in the `.scad` files.

## Dependencies

This project uses the [BOSL2 library](https://github.com/revarbat/BOSL2) for OpenSCAD, which is included as a git submodule. When you clone this repository, make sure to initialize and update the submodule by running:
```
git submodule update --init --recursive
```

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
