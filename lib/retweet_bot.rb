Twittbot::BotPart.new :retweet_bot do
  on :tweet do |tweet, opts|
    next unless @config[:users].include? tweet.user.screen_name.downcase  # ignore the tweet if it's not by our special snowflakes
    unless opts[:retweet]  # ignore the tweet if its already a retweet
      sleep rand * 2  # wait a few seconds until we actually retweet this crap
      tweet.retweet
    end
  end
end