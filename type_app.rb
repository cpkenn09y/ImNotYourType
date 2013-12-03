require 'sinatra'
require_relative 'prompts'

get '/' do
  @prompt = Prompts.random
  erb :index
end