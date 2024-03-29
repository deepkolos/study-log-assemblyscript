// Configuration imported from JS
declare const BGR_ALIVE: u32;
declare const BGR_DEAD: u32;
declare const BIT_ROT: u32;

var width: i32, height: i32, offset: i32;

/** Gets an input pixel in the range [0, s]. */
@inline
function get(x: u32, y: u32): u32 {
  return load<u32>((y * width + x) << 2);
}

/** Sets an output pixel in the range [s, 2*s]. */
@inline
function set(x: u32, y: u32, v: u32): void {
  store<u32>((offset + y * width + x) << 2, v);
}

/** Sets an output pixel in the range [s, 2*s] while fading it out. */
@inline
function rot(x: u32, y: u32, v: u32): void {
  var alpha = max<i32>((v >> 24) - BIT_ROT, 0);
  set(x, y, (alpha << 24) | (v & 0x00ffffff));
}

/** Initializes width and height. Called once from JS. */
export function init(w: i32, h: i32): void {
  width  = w;
  height = h;
  offset = w * h;

  // Start by filling output with random live cells.
  for (let y = 0; y < h; ++y) {
    for (let x = 0; x < w; ++x) {
      let c = Math.random() > 0.1
        ? BGR_DEAD  & 0x00ffffff
        : BGR_ALIVE | 0xff000000;
      set(x, y, c);
    }
  }
}

/** Performs one step. Called about 30 times a second from JS. */
export function step(): void {
  var w = width,
      h = height;

  var hm1 = h - 1, // h - 1
      wm1 = w - 1; // w - 1

  // The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square
  // "cells", each of which is in one of two possible states, alive or dead.
  for (let y = 0; y < h; ++y) {
    let ym1 = y == 0 ? hm1 : y - 1,
        yp1 = y == hm1 ? 0 : y + 1;
    for (let x = 0; x < w; ++x) {
      let xm1 = x == 0 ? wm1 : x - 1,
          xp1 = x == wm1 ? 0 : x + 1;

      // Every cell interacts with its eight neighbours, which are the cells that are horizontally,
      // vertically, or diagonally adjacent. Least significant bit indicates alive or dead.
      let aliveNeighbors = (
        (get(xm1, ym1) & 1) + (get(x, ym1) & 1) + (get(xp1, ym1) & 1) +
        (get(xm1, y  ) & 1)                     + (get(xp1, y  ) & 1) +
        (get(xm1, yp1) & 1) + (get(x, yp1) & 1) + (get(xp1, yp1) & 1)
      );

      let self = get(x, y);
      if (self & 1) {
        // A live cell with 2 or 3 live neighbors rots on to the next generation.
        if ((aliveNeighbors & 0b1110) == 0b0010) rot(x, y, self);
        // A live cell with fewer than 2 or more than 3 live neighbors dies.
        else set(x, y, BGR_DEAD | 0xff000000);
      } else {
        // A dead cell with exactly 3 live neighbors becomes a live cell.
        if (aliveNeighbors == 3) set(x, y, BGR_ALIVE | 0xff000000);
        // A dead cell with fewer or more than 3 live neighbors just rots.
        else rot(x, y, self);
      }
    }
  }
}

/** Fills the row and column indicated by `x` and `y` with random live cells. */
export function fill(x: u32, y: u32, p: f64): void {
  for (let ix = 0; ix < width; ++ix) {
    if (Math.random() < p) set(ix, y, BGR_ALIVE | 0xff000000);
  }
  for (let iy = 0; iy < height; ++iy) {
    if (Math.random() < p) set(x, iy, BGR_ALIVE | 0xff000000);
  }
}
