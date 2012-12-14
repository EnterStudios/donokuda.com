# console.log fix for IE
window.log = (args...) =>
  try
    console.log args...
  catch e

portfolio =

  setup: ->
    console.log "start setup"

    # Get number of pieces
    numOfWorks = $('#portfolio').children('.workItem').length
    console.log("Number of works: " + numOfWorks)
    for n in [1..numOfWorks]
      $('#portfolioNav').append("<li class='pagination'><a href='#'></a></li>")



portfolio.setup()
