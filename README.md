# winln

Really simple shell script for replacing Unix line endings with Windows line endings using zip and unzip

**NOTE:** Script might misbehave if used on a file without an extension. A filename with name `file` would be transcribed to the file `file.win.file`, which may not be what you want. Still, I figure it's not a big deal, since Windows would probably be confused about that kind of file anyways.

## Dependencies

This script is intended to be run on a \*nix computer, and expects the commands `cp`, `rm`, `echo`, `zip` and `unzip` to be available. I don't know how standard the last two are on \*nix installations, but the first three should definitely be there. If not, you should be ashamed. If running this script without explicitly stating its running environment, you should make sure you have `/bin/bash` available or else change the shebang.

## Installation

If this is something you'd use a lot, you could put it in a folder that is in your path. Also, you probably need to make it executable:

```
$> chmod +x winln.sh
```

## Usage

```
$> ./winln.sh filename.a filename.b filename.c
```

**Output:** Files named `filename.win.a`, `filename.win.b` and `filename.win.c` with Windows line endings.

## But... why?

I have friends using Windows, and instead of teaching them how to open a Unix line endings file in a way that won't display everything on a single line, I figured it would be easier to make a script to translate it. Conveniently, the `zip` command has an option, `-l`, that does exactly this, so I wrote the program to zip and unzip each file. It's a hack, I know.

It wouldn't be hard to do this manually every time I need to send a text file to my friends, but that happens infrequent enough that I usually need to run `zip --help` every time to see what the option changing the line endings actually was. Hopefully, now I won't have to.

## Disclaimer

THIS SOFTWARE IS PROVIDED AS-IS, WITHOUT ANY GUARANTEES, EXCPLICIT OR IMPLIED, NOT EVEN SUITABILITY FOR A SPECIFIC PURPOSE. THE AUTHOR IS IN NO WAY RESPONSIBLE FOR ANY CONSEQUENCES, INTENDED OR UNINTENDED, THAT MAY RESULT FROM RUNNING THIS SOFTWARE ON A COMPUTER OR ANY OTHER DEVICE.

## License

I don't think I need a specific license when using any of the programs this shell script utilizes, so I'm just gonna go ahead and license it under [WTFPL](http://www.wtfpl.net/). Feel free to do whatever.
