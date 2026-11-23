import test from "node:test";
import assert from "node:assert/strict";
import { isFull, placesLeft } from "./index.js";

test("isFull returns true when bookings meet capacity", () => {
  assert.equal(isFull(4, 4), true);
});


test("isFull returns false when capacity remains", () => {
  assert.equal(isFull(4, 3), false);
});


test("placesLeft returns the correct number of available places", () => {
  assert.equal(placesLeft(4, 1), 3);
});

test("placesLeft returns 0 when all places are booked", () => {
  assert.equal(placesLeft(4, 4), 0);
});
