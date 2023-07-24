
## Purpose

A simple bash script to convert your dark mode screenshots and add a black border around them, so you can happily paste them into your report. It utilises the open-source ImageMagick software suite. You can download the precompiled magick binary from [here](https://imagemagick.org/script/download.php)

## Usage

Download the script and the magick binary to the same folder, make them both executable with `chmod +x` and run the script from there.

```bash

chmod +x magick
chmod +x report-ready.sh

./report-ready.sh /path/to/screenshots/folder

```

The script will iterate over the provided folder, create a new edited-images folder within it where it will store the converted screenshots.

It will skip any files that have already been converted.

![[Pasted image 20230724151224.png]]

After deleting some of the files from the edited-images folder.

![[Pasted image 20230724151240.png]]

## Examples

All of the examples are from Kali Linux here.

### WhiteOnBlack

![[WhiteOnBlack-scheme.png]]

![[WhiteOnBlack-scheme_edited.png]]

### GreenOnBlack

![[GreenOnBlack-scheme.png]]
![[GreenOnBlack-scheme_edited.png]]
![GreenOnBlack](\examples\edited-images\GreenOnBlack-scheme_edited.png?raw=true)


### Kali-Dark

![[Kali-Dark-sceme.png]]

![[Kali-Dark-sceme_edited.png]]
