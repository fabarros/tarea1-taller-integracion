class IndexController < ApplicationController

    def index
        
    end

    def index_search
        $query = params["query"] 
        redirect_to index_search_get_url 
    end
    def index_search_view
        $query.gsub(/[.,-_;:"]/, '')
        $query.gsub!(" ", "+")
        offset = 0
        @characters = []
        @response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{$query}&limit=10&offset=#{offset}").body.to_s
        @characters_response = JSON.parse(@response)
        @characters = @characters+@characters_response
        while @characters_response.length() == 10
            offset += 10
            @response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{$query}&limit=10&offset=#{offset}").body.to_s
            @characters_response = JSON.parse(@response)
            @characters = @characters + @characters_response
        end
        render "index/index_search"
    end
end
