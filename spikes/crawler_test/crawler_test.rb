# -*- coding: utf-8 -*-
require 'twitter'
require 'settingslogic'
require 'pry'

class Settings < Settingslogic
  source "#{File.dirname(__FILE__)}/settings.yml"
end

client = Twitter::REST::Client.new(Settings.twitter.auth)

results = client.search("紅葉", :result_type => "recent").take(1000).map do |tweet|
tweet
end
binding.pry
