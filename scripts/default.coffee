module.exports = (robot) ->
  robot.hear /焼肉/i, (msg) ->
    candidates = ["http://tabelog.com/kanagawa/A1405/A140504/14006342/","http://tabelog.com/kanagawa/A1405/A140504/14018561/", "http://tabelog.com/kanagawa/A1405/A140504/14058769/","http://tabelog.com/kanagawa/A1405/A140504/14029908/","http://tabelog.com/kanagawa/A1405/A140504/14000775/","http://tabelog.com/kanagawa/A1405/A140504/14018563/","http://tabelog.com/kanagawa/A1405/A140504/14038702/"]
    rand = Math.floor(Math.random() * candidates.length)
    msg.send candidates[rand]
