class IndexController < ApplicationController

    def index
        
    end

    def index_search
        $query = params["query"] 
        redirect_to index_search_get_url 
    end
    def index_search_view
        puts $query
        $query.gsub(/[.,-_;:"]/, '')
        $query.gsub!(" ", "+")
        puts $query
        @response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{$query}").body.to_s
        @characters = JSON.parse(@response)
        render "index/index_search"
    end
end
