#!/bin/sh
# Script to generate README.md with all the images.
# $ ./gen_readme.sh >README.md

# emit header
cat << _EOF_
# Five Minute Album Covers

## What the...?

My son was doing an album database for a school project, and wanted some album art not covered by copyright.
So I mobilised the entire user base[^1] of [Evilpixie](http://evilpixie.scumways.com/) to draw some.

It was fun.

You might find it fun too.

Add a pic of your own! Here are the rules:

- *Try not to take more than 5 minutes!*
- Save as PNG file: 320x320 pixels, 16 colours
- Follow the rough filename convention (i.e. \`name_of_band-album_title.png\`)
- Submit a pull request or file an issue or email it in via electric pigeon post or something
- Don't forget to add yourself to [CONTRIBUTORS](CONTRIBUTORS).
- Have fun!

## The Covers

_EOF_

# the images
for img in covers/*.png
do
 alt=`basename $img`
 echo "![${alt}](${img} \"${alt}\")"
done

# emit footer
cat << _EOF_

[^1]: Both of us.

_EOF_
