$ = require 'jquery'

randNum = (max) -> Math.ceil Math.random() * max

simulateRolling = (obj, max, x = 10) ->
  obj.text randNum(max)
  return if x < 0
  setTimeout (-> simulateRolling obj, max, x-1), 25

$('.die').click ->
  $this = $(this)
  simulateRolling $this, 6, 20

