# ruby-discord-bot
A very simple discord bot written in ruby

## To install and use this bot, you'll need to follow these general steps:

1.) Install Ruby: If you don't have Ruby installed on your system, you'll need to download and install it first. You can download Ruby from the official Ruby website: https://www.ruby-lang.org/en/downloads/ <br>

2.) Install the discordrb gem: The bot uses the discordrb gem to interact with the Discord API. You can install the gem by running the following command in a terminal or command prompt: <br>

`gem install discordrb`<br>

3.) Get a Discord bot token: You'll need to create a Discord application and bot account and get a token to use the bot. You can follow the steps outlined in the Discord documentation to create a bot: https://discord.com/developers/docs/intro#bots-and-apps <br>

4.) Update the bot code: Once you have a bot token, you'll need to update the token parameter in the bot code to use your bot's token instead of the placeholder text "your_bot_token_here". <br>

5.) Run the bot: To run the bot, you can save the bot code to a file with a .rb extension (e.g. mybot.rb), and then run the file using the following command in a terminal or command prompt: <br>
`ruby mybot.rb`<br>

If the bot is running successfully, it should appear as online in your Discord server. You can then interact with the bot by sending messages that match the commands defined in the bot code.

<br><br>

## Notes and Usage/Features

**Ping** - the bot listens for messages that begin with "ping" and responds with the bot's current response time in milliseconds. The response time is calculated by subtracting the timestamp of the message from the current time, and converting the result to milliseconds.<br>
To test the ping command, you can send a message that says "ping" in a Discord channel that the bot is a member of. The bot should respond with a message that includes the response time in milliseconds.<br>

**Weather** - the bot listens for messages that begin with "weather" and extracts the user-specified location from the message. It then uses the OpenWeatherMap API to get the current weather data for the specified location, extracts the relevant weather information (temperature, description, and icon), and responds with a message that includes the weather information and a weather icon.<br>
To test the weather command, you can send a message that says "weather" followed by a space and a location (e.g. "weather New York") in a Discord channel that the bot is a member of. The bot should respond with a message that includes the current weather for the specified location. Note that you'll need to replace 'your_api_key_here' in the URL with your actual OpenWeatherMap API key.<br>

**Custom Messages** - the bot listens for messages that begin with "message" and extracts the user-specified message file from the message. It then loads the specified file, selects a random message from the file, and responds with the message.<br>
To test the message command, you can create a text file with a list of messages (one message per line), and then send a message that says "message" followed by a space and the name of the message file (e.g. "message my_messages.txt") in a Discord channel that the bot is a member of. The bot should respond with a random message from the specified file.
