# Command Line Player

The `cmdline-player` script plays back files ending in `.scr` and starts a recording with `byzanz-record`. GIF output is created by default but byzanz supports other formats.

Example: `cmdline-player kthw-2.scr` - will start a playback and recording session. The animated GIF file will be saved as `screencast.gif`.

To record a in a different format supported by byzanz-record, change the 'EXT' variable at the top of 'cmdline-player'. Byzanz supports gif, ogg or webm.

With the '-c' option this script will also create the Markdown format files and transcripts, and move the video to an 'images' directory.

All screencasts in my-own-kind were created with the `cmdline-player`.

## Usage

```none
$ cmdline-player -h
cmdline-player - play commands from a .scr file.\n'

Usage: cmdline-player [ -hq ] | [ [-wn] FILE ]

  FILE - The name of the file containing screencast and shell commands.
  -h
  --help - This help text.
  -w
  --window "NAME" - Specify the NAME of the window to record.
  -n
  --norecord - Don't record the playback.
  -q
  --query - Retrieve the name of a window by clicking on it.
  -c
  --create-mds "NAME"  - Create a markdown file named NAME from the screencast
                         file. NAME can contain the full path and file name.
                         Paths not starting with '/' are relative to the
                         current working directory. A transcript file is
                         also created in the same directory. The video is
                         moved to a directory named 'images' in the current
                         directory.

Examples:

Choose a window to record and start playing back all of KTHW:

  $ # In the terminal to be recorded:
  $ while true; do screen -r -e ^Oo screencast; sleep .5; done
  $ # In the controller terminal:
  $ cd kubernetes-the-hard-way-in-containers/kthw-docker/
  $ wname=$(cmdline-player -q)
  $ for i in {2..14}; do cmdline-player -w "$wname" -c kthw/kthw-$i.md screencasts/kthw-$i.scr <<<"\n"; sleep 1; done

Create a single screencast recording:

  $ cmdline-player install-mokctl-linux.scr


```
