module.exports = (robot) ->
  robot.hear /「.*」/i, (msg) ->
    stringArray1 = msg.message.text.split("「")
    stringArray1.shift()

    stringArray2 = []
    for str in stringArray1
      stringArray2.push(str.split("」")[0])

    msg.send stringArray2.join(" ")
    msg.send "はッ！"
