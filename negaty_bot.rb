# -*- coding: utf-8 -*-

require 'rubygems'    # ←Ruby 1.9では不要 
require 'twitter'
require 'pp'

Twitter.configure do |config|
		config.consumer_key= "3gPpNqb3Gx3jXgAKJY2Ug"
		config.consumer_secret= "aN2QZoD3oJzDgH1WF0H1oEBoXDzpVuYjpO4FNedoVs"
		config.oauth_token="395209175-SN5ll2q4MstCTY4ue4DEmVZxCrBkPiM9Io3Runz4"
		config.oauth_token_secret="ddlM8AzpL9B8QYYuCwtlnspkABIQkpjhAsCOlB4"
end
pp Twitter.update "neganeganega"
