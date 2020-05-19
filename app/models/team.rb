class Team

    attr_accessor :name, :motto

    @@all = []

    def initialize(params)
        #binding.pry
        @team_name = params[:name]
        @team_motto = params[:motto]
        @@all << self
    end

    def self.all
        @@all
    end

end