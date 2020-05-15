require 'sinatra'
require "sinatra/json"
require 'date'
require 'json'

configure {
  set :server, :puma
}

get '/' do
  json :test_api => 'Server is running'
end

get '/godown' do
  date = params['date'].nil? ? nil : Date.parse(params['date'])
  offset = params['offset'].nil? ? 0 : params['offset'].to_i
  godown_data = JSON.parse(File.read('./data/godown.json'))
  data = date.is_a?(Date) ? godown_data.group_by{|d| d['date']}[date.to_s] : godown_data[offset..(offset + 500)]
  json :data => data
end
