export function isFull(capacity, booked) {
  return booked >= capacity;
}

export function placesLeft(capacity, booked) {
  const remaining = capacity - booked;

  if (remaining < 0) {
    return 0;
  }

  return remaining;
}