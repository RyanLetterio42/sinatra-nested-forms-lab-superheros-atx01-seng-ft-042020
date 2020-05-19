require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end

    post "/team" do
        Team.new(params[:team])
        Hero.new(params[:team][:heros][0])
        Hero.new(params[:team][:heros][1])
        Hero.new(params[:team][:heros][2])
        erb :team
    end

end
