import pusher

pusher_client = pusher.Pusher(
  app_id='[APP ID]',
  key='[KEY]',
  secret='[SECRET KEY]',
  ssl=True
)

pusher_client.trigger('test_channel', 'my_event', {'instructFor': '545770', 'state' : '0'})
