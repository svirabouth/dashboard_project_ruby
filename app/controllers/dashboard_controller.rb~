require 'open-uri'
require 'zlib'
require 'yajl'
require 'mongo'
require 'json'

class DashboardController < ApplicationController
  def index
  end
  
  def addEvent
  	uri    = 'mongodb://test:test@ds0ds033617.mongolab.com:33617/dashboard_project'
	client = MongoClient.from_uri(uri)
	db     = client['dashboard_project']
	coll = db.collection("events")
	coll.drop()

	Yajl::Parser.parse(js) do |event|
		coll.insert(event)
		break
	end 
  end

end
