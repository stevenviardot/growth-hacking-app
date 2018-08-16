require 'watir'
require 'dotenv'
Dotenv.load

  username = ENV["username"]
  password = ENV["password"]
  #Les personnes à  suivre
  user = "theweeknd"

  #Ouvertue de la page log in d'instagram
  browser = Watir::Browser.new :chrome
  browser.goto 'instagram.com/accounts/login/'
  # _5f5mN.jIbKX.KUBKM.yZn4P

  #Insertion des ID de l'utilsateur
  puts "Logging in..."
  browser.text_field(:name => "username").set "#{username}"
  browser.text_field(:name => "password").set "#{password}"

  #Clique sur le bouton loggin
  browser.button(:class => "_5f5mN       jIbKX KUBKM      yZn4P   ").click
  sleep(2)


  #CLique sur le bouton Follow
  browser.goto "instagram.com/#{user}/"
  browser.button(:class => "_5f5mN       jIbKX  _6VtSN     yZn4P   ").click
  sleep(360)
