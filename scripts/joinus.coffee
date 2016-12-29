module.exports = (robot) ->
  robot.hear /私の名は/i, (msg) ->
    fs = require('fs')
    fs.readFile './data/join/joinlist', 'utf8', (err, text) ->
      msg.send text
      msg.send msg.message.user.name
      return
