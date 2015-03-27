require 'open-uri'
require 'mongo'
require 'json'
include Mongo
class DashboardController < ApplicationController
  def index
  end
  
  def addEvent
    gz = open('http://data.githubarchive.org/2015-01-01-15.json.gz')
   uri    = 'mongodb://test:test@ds033617.mongolab.com:33617/dashboard_project'
	client = MongoClient.from_uri(uri)
	db     = client['dashboard_project']
	coll = db.collection("events")

  end

end
