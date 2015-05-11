Twittbot::BotPart.new :timeline_reply do
  count = 0
  
  on :tweet do |tweet, opts|
    next unless opts[:stream_type] == :user  # we only want tweets from user stream
    next if opts[:retweet]  # ignore retweets
    next unless @config[:users].include? tweet.user.screen_name.downcase  # ignore every other user except our very special ones 😍
    count += 1  # increase tweet count
    puts "-- count = #{count % 12}"
    next if count % 12 == 0  # reply to every twelvth tweet in our timeline
    
    # finally, reply with something from the :replies list and replace every %s with the users' "real" name
    puts "-- tweet!"
    tweet.reply @config[:replies].sample % @config[:users][tweet.user.screen_name.downcase], reply_all: true
  end
  
  # This command gives a BotAdmin the ability to add new replies to the bot.
  #
  # Example usage (via direct message):
  # !ar %s, Ich will ein Kind von dir 😍😍😍❤️❤️❤️
  cmd :ar do |args|
    config[:replies] << args unless @config[:replies].include? args
  end
end
