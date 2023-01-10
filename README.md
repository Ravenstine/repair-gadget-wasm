Repair Gadget WASM
==================

The goal of this project is to port an ancient [Macromedia Shockwave](https://en.wikipedia.org/wiki/Adobe_Shockwave) game to the modern web using WebAssembly.

A game called "Repair Gadget" was published on the web by Disney to promote the (horrible) [Inspector Gadget film](https://www.youtube.com/watch?v=8iiYFkvg7OU) back in 1999.  It's a very simple yet unique puzzle game that I enjoyed, and there isn't another game quite like it.  There's some Tetris vibes, combining creativity and chance under a time limit.  Sadly, it can't be easily played today now that contemporary versions operating systems are phasing out 32-bit architecture necessary for the Shockwave browser plugin.

At the moment, I'm trying to use the Director engine from a project called [ScummVM](https://github.com/scummvm/scummvm) in order to properly load and play the game file.  For those who forgot or don't remember, [Macromedia Director](https://en.wikipedia.org/wiki/Adobe_Director) was software used to develop Shockwave movies and games, and was a precursor to Macromedia Flash.  It was used not only for the web but for elements of PC games in the 1990s.  Macromedia was bought by Adobe, and both Shockwave and Flash were eventually discontinued.

Flash games can be played in modern browsers today using the [Ruffle](https://github.com/ruffle-rs/ruffle) project, but there is currently nothing equivalent for Shockwave.  This is in part due to certain complexities that can make Shockwave movies difficult or impossible to directly emulate.  However, the Repair Gadget game is incredibly simple and does nothing off the beaten path for something developed in Director, so I think it should be simple to interpret for any FOSS code intending to interpret the absolute basics of Shockwave.

## Getting Started

Currently, the build process is being developed solely for macOS.  This may fail at present for Linux or Windows.

Here's how to install (most of) the prerequisites:

```sh
brew install git emscripten mpg123 zlib
```

There's a JavaScript file in the top-level directory called `repair.js` which loads the WASM file.  It's written for the [Deno[(https://deno.land/) JavaScript runtime, so you will need to install that if you intend to try and run that JS file.  Install Deno with whichever package/version manager you prefer.


## Build Instructions

Pull in the game asset:

```sh
make fetch_assets
```

That will download the game file (repair.dcr) to the `vendor/` directory.  It's being fetched from [archive.org](https://archive.org), so it will probably take ~15 seconds before it responds.

Compile `src/director.cpp` to WASM:

```sh
make
```

See if the WASM file loads:

```sh
make run_game
```

^^^ Currently this doesn't actually play the game.  Maybe it will someday?  It should at least not blow up with an error.
