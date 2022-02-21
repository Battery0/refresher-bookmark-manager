require "sinatra/base"
require "sinatra/reloader"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Test 1 2 3"
  end
  
end
