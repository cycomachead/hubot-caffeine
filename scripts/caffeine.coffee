# Description:
#   Caffeinates you
#
# Commands:
#   hubot coffee me
#   hubot caffeinate me
#   hubot .* tired
#   hubot .* sleepy
#
# Notes:
#   None
#
# Authors:
#   meatballhat

coffeeImages = [
  "http://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/320px-A_small_cup_of_coffee.JPG",
  "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Roasted_coffee_beans.jpg/320px-Roasted_coffee_beans.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Love_Coffee.jpg/320px-Love_Coffee.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cup_of_coffee_%281%29.jpg/320px-Cup_of_coffee_%281%29.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Brown_cup_of_coffee.jpg/320px-Brown_cup_of_coffee.jpg"
]

module.exports = (robot) ->
  robot.respond /(coffee|caffeinate) me/i, (msg) ->
    msg.send msg.random(coffeeImages)

  robot.respond /(tired|sleepy)/i, (msg) ->
    msg.send msg.random(coffeeImages)
