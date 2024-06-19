// sum.test.js
import { expect, test } from 'vitest'
import { sum } from '../../src/components/Todo.vue'

test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3)
})

test('adds 10 + 2 to equal 3', () => {
  expect(sum(10, 2)).toBe(12)
})

test('adds 11 + 2 to equal 13', () => {
  expect(sum(11, 2)).toBe(13)
})

test('adds 21 + 2 to equal 23', () => {
  expect(sum(21, 2)).toBe(23)
})

test('adds 100 + 2 to equal 102', () => {
  expect(sum(100, 2)).toBe(102)
})

test('adds 111 + 2 to equal 113', () => {
  expect(sum(111, 2)).toBe(113)
})

test('adds -1 + 0 to equal -1', () => {
  expect(sum(-1, 0)).toBe(-1)
})

test('adds 1 + 21 to equal 22', () => {
  expect(sum(1, 21)).toBe(22)
})
test('adds 19 + 2 to equal 21', () => {
  expect(sum(19, 2)).toBe(21)
})

test('adds 1000 + 2 to equal 1002', () => {
  expect(sum(1000, 2)).toBe(1002)
})

