# console.log fix for IE
window.log = (args...) =>
  try
    console.log args...
  catch e

portfolio =

  setup: ->

