require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = params[:team]
      @members = [
        { name: params[:member1_name] }
      ]
      erb :result
    end

end
