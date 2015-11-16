require 'sinatra'

# get '/' do
#   "Hello World!"
# end

helpers do
  def new_url
    p "request.fullpath: #{request.fullpath}"
    "https://www.plantvillage.com" + request.fullpath
  end
end

get "/*" do
  redirect new_url, 301
end

# post "/" do
#   redirect new_url, 307
# end
