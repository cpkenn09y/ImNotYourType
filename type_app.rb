require 'sinatra'
require_relative 'prompts'

get '/' do
  @prompt = Prompts.random
  @wrapped_prompt = Prompts.wrap_each_letter(@prompt)
  erb :index
end