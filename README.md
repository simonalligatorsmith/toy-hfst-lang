# toy-hfst-lang

This repository uses HFST (Helsinki Finite State Technology) to create orthographic transducers for the Esperanto language
(For more info on HFST see: https://github.com/hfst/hfst/wiki)

Calling '$make' should be sufficient to compile the transducer, which will make .hfst files from the .lexc files

# Setup

For first-time setup, either see the following for installation:
https://giellalt.uit.no/infra/GettingStarted.html

OR type the following in your Linux terminal one line at a time:

```
$ sudo apt update
$ sudo apt install vislcg3
$ sudo apt install hfst
```

and then these lines to check if it's installed correctly:

```
$ hfst-info
$ vislcg3 --version
```

For the basics of writing HFST files see:
https://github.com/reynoldsnlp/W21_DIGHT390R/blob/main/activities/01_19_intro_to_giellalt.md

Bonŝanson, geamikoj! Programu feliĉe!
