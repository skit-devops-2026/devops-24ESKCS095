const test = require('node:test');
const assert = require('node:assert');

test('addition works correctly', () => {
    assert.strictEqual(2 + 3, 5);
});

test('subtraction works correctly', () => {
    assert.strictEqual(10 - 4, 6);
});

test('multiplication works correctly', () => {
    assert.strictEqual(5 * 4, 20);
});

test('division works correctly', () => {
    assert.strictEqual(10 / 2, 5);
});
