require 'open-uri'
require 'mongo'
require 'json'
include Mongo
class DashboardController < ApplicationController
  def index
  end
  
  def addEvent
    gz = open('http://data.githubarchive.org/2015-01-01-15.json.gz')
   uri    = 'mongodb://test:test@ds045521.mongolab.com:45521/ruby_project'
	client = MongoClient.from_uri(uri)
	db     = client['ruby_project']

  end

end
