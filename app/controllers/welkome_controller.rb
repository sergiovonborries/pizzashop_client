class WelkomeController < ApplicationController
    include JsonGenerator
    def new
    end

    def show
        simultaneous = params['simultaneous']
        time = params['time']
        repeat_times = params['repeat_times']
        # @response = Faraday.get  "http://localhost:3000/api/v1/orders/#{search_term}"
        # @data = JSON.parse @response.body
        rand(1..simultaneous).times do 

        end
        url = "http://localhost:3000/api/v1/orders"
        @response = Faraday.post(url, generate_orders.to_json, "Content-Type" => "application/json")
        @data = JSON.parse @response.body
    end
end