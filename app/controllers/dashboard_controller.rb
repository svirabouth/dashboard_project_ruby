require 'open-uri'
require 'mongo'
require 'json'
include Mongo
class DashboardController < ApplicationController
  def index
  end
  
  def addEvent
    gz = open('http://data.githubarchive.org/2015-01-01-15.json.gz')
  end

end
