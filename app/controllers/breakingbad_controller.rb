class BreakingbadController < ApplicationController
  def season
    @response = HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Breaking+Bad').body.to_s
    @parse_response = JSON.parse(@response)
    @season = params[:season]
    @actuall_episodes = []
    @parse_response.each do |episode|
      if episode["season"] == @season
        @actuall_episodes.push(episode)
      end
    end

  end

  def episode
    @response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes/#{params[:episode]}").body.to_s
    @episode = JSON.parse(@response)
    puts @episode
  end

  def character
    name = params[:name].gsub("_", "+")
    @response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{name}").body.to_s
    @character = JSON.parse(@response)
    @response_quote = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/quote?author=#{name}").body.to_s
    @quotes = JSON.parse(@response_quote)
  end
end
