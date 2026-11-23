import test from "node:test";
import assert from "node:assert/strict";
import { isFull } from "./index.js";

test("isFull returns true when bookings meet capacity", () => {
  assert.equal(isFull(4, 4), true);
});


test("isFull returns false when capacity remains", () => {
  assert.equal(isFull(4, 3), false);
});