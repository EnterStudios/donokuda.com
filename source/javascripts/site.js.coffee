# console.log fix for IE
window.log = (args...) =>
  try
    console.log args...
  catch e

$(document).ready ->

  portfolio =

    setup: ->
      console.log "start setup"

      # Get number of pieces
      #
      # numOfWorks = $('#portfolio').children('.workItem').length
      # console.log("Number of works: " + numOfWorks)
      # for n in [1..numOfWorks]
        # $('#portfolioNav').append("<li class='pagination'><a href='#'></a></li>")

      $('#portfolioNav').children('.pagination').click (e) ->

        selectedProject = $('#portfolioNav').children('.pagination').index(this)
        console.log "Scroll to: "
        console.log $('#portfolioNav').children()[selectedProject]
        $(window).scrollTo $('.project')[selectedProject], 500


  portfolio.setup()
