# Description:
#   挨拶, 问候 
#

# 
in_time_sapn = (low, high) ->
  date = new Date()
  hour = date.getHours()
  return hour >= low && hour < high

module.exports = (robot) ->
  date = new Date()
  hour = date.getHours()
 
  # 日本語

  robot.hear /おはよう/, (res) ->
    if in_time_sapn(0, 10)
      res.send "おはようございます"

  robot.hear /こんにちは/, (res) ->
    if in_time_sapn(10, 28)
      res.send "こんにちは"

  robot.hear /こんばんは/, (res) ->
    if in_time_sapn(18, 24)
      res.send "こんばんは"

  # 普通话

  botherReplies = ["你穿越了吧", "也不看看几点钟了啊"]

  robot.respond /你好/, (res) ->
    res.send "你好"

  robot.hear /早上好/, (res) ->
    if in_time_sapn(0, 12)
      res.send res.random ["早上好", "早上好，送你清爽的问候，温馨的祝愿，早晨，美妙的开端，祝你今日精力棒棒，生机多多！", "阳光照获得的当地就有我给你的祝愿，雨水淋获得的当地就有我给你的问候，消息能抵达的当地就有我亲密的伙伴，早上好！", "道一声清晨的祝福早上好！说一声清晨的关心吃早餐了吗？问一声清晨的关怀昨晚睡的好吗？真心送一句清晨的祝福愿你一天情绪愉快！"]
    else
      res.send res.random botherReplies

  robot.hear /中午好/, (res) ->
    if in_time_sapn(11, 13)
      res.send "中午好"

  robot.hear /下午好/, (res) ->
    if in_time_sapn(12, 18)
      res.send res.random ["下午好", "下午好，中午养足了精神吗？让我们一起渡过一个愉快的下午茶时间，不过没有茶喝，呵呵", "送上一杯下午茶：以祝福为叶，叮咛做花，热情为水，包容当杯，喝出你一天好心情"]
    else
      res.send res.random botherReplies

  robot.hear /晚上好/, (res) ->
    if in_time_sapn(18, 24)
      res.send "晚上好"
    else
      res.send res.random botherReplies
