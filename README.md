GPX Utilities
=

This repository contains some utilities for processing GPS tracklogs in GPX [1]
format.

 [1]: https://en.wikipedia.org/wiki/GPS_eXchange_Format

Contents
==

 - `gpx-sanitize.sh` Reads a GPX file and outputs a sanitized version of it.
   Removes all extra information such as timestamps and waypoints leaving only
   the track itself (lat,lon,elevation).
 - `gpx-validate.sh` Validates that a GPX file conforms to the GPX 1.1 schema.

Dependencies
==

 - [XMLStarlet](http://xmlstar.sourceforge.net/)
