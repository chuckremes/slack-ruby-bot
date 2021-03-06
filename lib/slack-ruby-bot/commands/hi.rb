module SlackRubyBot
  module Commands
    class Hi < Base
      help do
        title 'hi'
        desc 'Says hello.'
      end

      def self.call(client, data, _match)
        return if SlackRubyBot::Config.mute
        client.say(channel: data.channel, text: "Hi <@#{data.user}>!", gif: 'hi')
      end
    end
  end
end
