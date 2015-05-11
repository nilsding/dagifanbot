Twittbot::BotPart.new :basic_dm do
  # This command gives a BotAdmin the ability to tweet via the bot.
  #
  # Example usage (via direct message):
  # !twet This is a tweet
  cmd :twet do |args, _user|
    bot.tweet args
  end
end