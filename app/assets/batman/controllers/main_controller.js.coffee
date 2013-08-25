class GoodTalk.MainController extends GoodTalk.ApplicationController
  routingKey: 'main'

  @beforeAction ->
    if !GoodTalk.get('currentUser')
      GoodTalk.set('currentUser', prompt("What's your name?"))

  index: (params) ->
    @messages = GoodTalk.Message.get('all')
    @populateNewMessage()

  sendMessage: (params) ->
    @newMessage.save()
    @populateNewMessage()

  populateNewMessage: ->
    @newMessage = new GoodTalk.Message(author_name: GoodTalk.get('currentUser'))
