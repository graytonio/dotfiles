# Rust Replacement Utils

There is a community online that has seeked to replace many of the GNU utilities with rust based alternatives. These replacements have various ranges of differences, from feature improvements, to performance gains, to spiritual successors. They all have a common theme of wanting to be drop in replacements for these tools. I have begun using some of these tools that I find to be helpful in my work and I will continue exploring the ones I like and adding them here. Here I'll list the utilities I have configured for my environment.

## Bat

A replcaement for `cat` which notably has nice syntax highlighting for code and data files. Very helpful when trying to visually parse data. This extra info is removed if the data is piped to another command making it safe to alias as `cat`.

## Eza

A replacement for `ls` that mostly gives more details about the files by default, offers nice coloring based on file extension and has some more advanced filtering options built in.

## RipGrep

A replacement for `grep` that claims to be up to 10x faster than it's c based competitor this seems to be backed up by it's testing and I have noticed anecdotally it certainly feels faster. Like the other utils it is safe to alias to grep and accepts most of the same flags for common functionality.