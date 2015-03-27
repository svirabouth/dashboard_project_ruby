require 'open-uri'
require 'zlib'
require 'yajl'
require 'mongo'
require 'json'
include Mongo
class DashboardController < ApplicationController
  def index
  end
  
  def addEvent
  	=begin
  	gz = open('http://data.githubarchive.org/2015-01-01-15.json.gz')
	js = Zlib::GzipReader.new(gz).read
	=end
	uri    = 'mongodb://test:test@ds0ds033617.mongolab.com:33617/dashboard_project'
	client = MongoClient.from_uri(uri)
	db     = client['dashboard_project']
	=begin
	coll = db.collection("events")
	
	coll.drop()

	Yajl::Parser.parse(js) do |event|
		coll.insert(event)
	break
	end 
	=end
  end

end
