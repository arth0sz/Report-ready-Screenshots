
## Purpose

A simple bash script to convert your dark mode screenshots into light mode and add a black border around them, so you can happily paste them into your report. It utilises the open-source ImageMagick software suite. You can download the precompiled magick binary from [here](https://imagemagick.org/script/download.php)

Additionally, if you have screenshots that are in light mode, you can separate them out and use the light mode script instead to only add a black border to the screenshots.


## Usage

Download the script and the magick binary to the same folder, make them both executable with `chmod +x` and run the script from there.

```bash

chmod +x magick
chmod +x report-ready.sh

./report-ready.sh /path/to/screenshots/folder

```

The script will iterate over the provided folder, create a new edited-images folder within it where it will store the converted screenshots.

It will skip any files that have already been converted.

![Screenshot1](/read-me-screenshots/20230724151224.png?raw=true)

After deleting some of the files from the edited-images folder.

![Screenshot2](/read-me-screenshots/20230724151240.png?raw=true)

## Examples

All of the examples are from Kali Linux here.

### WhiteOnBlack

Original:

![WhiteOnBlack](/examples/WhiteOnBlack-scheme.png?raw=true)

Converted:

![WhiteOnBlack-edited](/examples/edited-images/WhiteOnBlack-scheme_edited.png?raw=true)

### GreenOnBlack

Original:

![GreenOnBlack](/examples/GreenOnBlack-scheme.png?raw=true)

Converted:

![GreenOnBlack-edited](/examples/edited-images/GreenOnBlack-scheme_edited.png?raw=true)

### Kali-Dark

Original:

![Kali-dark-scheme](/examples/Kali-Dark-scheme.png?raw=true)

Converted:

![Kali-Dark-edited](/examples/edited-images/Kali-Dark-scheme_edited.png?raw=true)

