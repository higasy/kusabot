module.exports = (robot) ->
  robot.hear /オラ/i, (msg) ->
    count = 0
    pos = msg.message.text.indexOf("オラ")
    sendString = ""

    while pos != -1
      count++
      pos = msg.message.text.indexOf("オラ", pos + 2)
      sendString = sendString + "無駄"

    if count == 1
      msg.send sendString
    else if 2 <= count <= 3
      msg.send "#{sendString}ァ！"
    else if 4 <= count <= 7
      msg.send "#{sendString}ァーーーーッ！"
    else if 8 <= count
      msg.send "#{sendString}ァーーーーッ！無駄だ#{msg.message.user.name}！！"
      msg.send "WRYYYYYYYYYYーーーーッ！！！"
