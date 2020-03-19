class WelkomeController < ApplicationController
    include JsonGenerator
    def new
    end

    def show
        search_term = params['interval'].capitalize
        # @response = Faraday.get  "http://localhost:3000/api/v1/orders/#{search_term}"
        # @data = JSON.parse @response.body
        url = "http://localhost:3000/api/v1/orders"
        @response = Faraday.post(url, generate_orders.to_json, "Content-Type" => "application/json")
        @data = JSON.parse @response.body
    end
end