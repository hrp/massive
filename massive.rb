require 'rubygems'
require 'sinatra'

def massive(word)
  #add spaces
  word_spaced = String.new
  (0..word.length).each do |k|
    word_spaced += word[k,1] + " "
  end
  #repeat
  body = String.new
  2200.times do
    body += word_spaced
  end
  return body
end

get '/:word' do
  massive(params[:word])
end

get '/' do
  massive("MASSIVE")
end