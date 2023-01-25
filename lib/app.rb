  # ligne très importante qui appelle la gem.
  require 'twitter'
  require 'dotenv'
  # require 'pry'

  # n'oublie pas les lignes pour Dotenv ici…
  Dotenv.load

  # quelques lignes qui appellent les clés d'API de ton fichier .env
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  
  # binding.pry
  
  # ligne qui permet de tweeter sur ton compte
  client.update('Mon premier tweet en Ruby !!!!')