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
        { name: params[:member1_name], power: params[:member1_power], bio: params[:member1_bio] },
        { name: params[:member2_name], power: params[:member2_power], bio: params[:member2_bio] },
        { name: params[:member3_name], power: params[:member3_power], bio: params[:member3_bio] }
      ]
      erb :result
    end

end
