module.exports = (robot) ->
  robot.hear /おい/i, (msg) ->
    count = 0
    pos = msg.message.text.indexOf("おい");
    sendString = ""

    while pos != -1
      count++
      pos = msg.message.text.indexOf("おい", pos + count)
      sendString = sendString + "はい"

    msg.send sendString
