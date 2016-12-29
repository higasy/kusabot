module.exports = (robot) ->
  robot.hear /参加者 -w/i, (msg) ->
    msg.send '参加する人は『参加ノ』と発言してね！'

  robot.hear /参加者 -l/i, (msg) ->
    fs = require('fs')
    fs.readFile './data/join/joinlist', 'utf8', (err, text) ->
      msg.send '以下の人が参加するよ！'
      msg.send text
      return

  robot.hear /参加者 -r/i, (msg) ->
    fs = require('fs')
    fs.writeFile './data/join/joinlist', '', 'utf8', (err) ->
      msg.send 'リセットしたよ！'
      return

  robot.hear /参加者 -h/i, (msg) ->
    msg.send '参加者を管理するよ！'
    msg.send '    -w 参加者募集の声かけをするよ！'
    msg.send '    -l 参加者リストを表示するよ！'
    msg.send '    -r 参加者リストをリセットするよ！'
    return

  robot.hear /参加ノ/i, (msg) ->
    fs = require('fs')
    username = msg.message.user.name
    data = username + '\n'
    fs.appendFile './data/join/joinlist', data, 'utf8', (err) ->
      msg.send '了解したよ！' + username + '！'
      return
