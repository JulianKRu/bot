local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!help' then
		message.channel:send('Pomoc\n--------------\nPing, Pong! - !ping\n--------------')
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
end)

client:on('ready', function()
    print('Logged in as '.. client.user.username)
        client:setGame("Obserwuje serwer Kwadratowa Likwidacja")
end)

client:run('Bot ODA4MDc0OTc5MzA4NjAxMzY0.YCBQeA.T6wmBPBJfY2AAmGeLT4bwV6zCCQ')