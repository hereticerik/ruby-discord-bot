require 'discordrb'

# Create a new bot object with your bot's token
bot = Discordrb::Bot.new token: 'your_bot_token_here'

# Respond to messages that begin with 'Hello'
bot.message(start_with: 'Hello') do |event|
  event.respond "Hi there, #{event.user.name}!"
end

# Respond to messages that begin with 'ping'
bot.message(start_with: 'ping') do |event|
  # Calculate the bot's response time
  response_time = Time.now - event.timestamp
  response_time_ms = (response_time * 1000).round(1)

  # Respond with the response time
  event.respond "Pong! Response time: #{response_time_ms} ms"
end

# Respond to messages that begin with 'weather'
bot.message(start_with: 'weather') do |event|
  # Get the user's specified location from the message
  location = event.message.content.split(' ')[1..].join(' ')

  # Get the weather data for the specified location
  # ...

  # Respond with the weather information
  # ...
end

# Respond to messages that begin with 'message'
bot.message(start_with: 'message') do |event|
  # Get the user-specified message file
  message_file = event.message.content.split(' ')[1]

  # Load the message file and select a random message
  messages = File.readlines(message_file).map(&:strip).reject(&:empty?)
  random_message = messages.sample

  # Respond with the random message
  event.respond random_message
end

# Start the bot
bot.run
