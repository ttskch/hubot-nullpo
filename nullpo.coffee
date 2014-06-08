# Description
#   responds to ぬるぽ with ｶﾞｯ.
#
# Commands:
#   ぬるぽ - Responds with ｶﾞｯ.
#
# Author:
#   qckanemoto

module.exports = (robot) ->
  robot.hear /ぬるぽ|ヌルポ|nullpo/i, (msg) ->
    if process.env.HUBOT_NULLPO_RESPONSE_STYLE is "rich"
      msg.send '''

　 Λ＿Λ　　　　＼＼
 （　・∀・）　　　|　|　ｶﾞｯ
と　　　　）　　　|　|
　 Ｙ　/ノ　　　 人
　　 /　）　 　 < 　>_Λ∩
 ＿/し'　／／. Ｖ｀Д´）/
（＿フ彡　　　　　　 /　←>>@
''' + "#{msg.message.user.name}"
    else
      msg.send "ｶﾞｯ"
