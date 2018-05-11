ready = ->
  Typed.new '.element',
    strings: [
      'Software development is the closest concept we have to magic.'
      "It's my goal to help people bring thier dreams into reality and create a better world."
    ]
    typeSpeed: 40,
    loop: true,
    loopCount: Infinity,
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready