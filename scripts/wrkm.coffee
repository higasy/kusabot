module.exports = (robot) ->
  robot.hear /\S+$/i, (msg) ->
    num1 = Math.random() * 100
    num2 = Math.floor(num1) % 10
    
    if num2 == 0
      candidates = ["あーそれね","天才","はいはい","なるほどですね","うけるわ","へー","ちょっと何言ってるかわかんない"]
      rand = Math.floor(Math.random() * candidates.length)
      msg.send candidates[rand]
