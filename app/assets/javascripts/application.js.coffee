#= require jquery
#= require jquery_ujs
#= require foundation
#= require turbolinks
#= require_tree .

$(document).foundation()

$(document).ready ->

  $('header').on 'click', '.handle', ->
    $('.slidin-content').toggleClass('expanded')
