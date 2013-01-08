# Description
#   markov will bot
module.exports = (robot) ->
  responses = [
    [/intense/i, 'camping is intense']
  , [/canada/i, 'http://sae.tweek.us/static/images/emoticons/emot-canada.gif']
  , [/australia/i, 'http://sae.tweek.us/static/images/emoticons/emot-australia.gif']
  , [/why do.+\?/i, 'http://sae.tweek.us/static/images/emoticons/emot-iiam.gif']
  , [/wh?oooo+/i, 'http://sae.tweek.us/static/images/emoticons/emot-toot.gif']
  ]

  setup = (pair) ->
    if pair[1].match /^http/
      robot.hear pair[0], (msg) -> msg.send pair[1]
    else
      robot.hear pair[0], (msg) -> msg.reply pair[1]

  setup pair for pair in responses

