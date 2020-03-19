class WelkomeController < ApplicationController
    include JsonGenerator, JsonConsumer
    def new
    end

    def show
        @simultaneous = params['simultaneous'].to_i
        @time = params['time'].to_i * 1000
        @repeat_times = params['repeat_times'].to_i
        # @response = Faraday.get  "http://localhost:3000/api/v1/orders/#{search_term}"
        # @data = JSON.parse @response.body
        # rand(1..simultaneous).times do 

        # end
        # url = "http://localhost:3000/api/v1/orders"
        # @response = Faraday.post(url, generate_orders.to_json, "Content-Type" => "application/json")
        # call(simultaneous, time, repeat_times)
        # @data = JSON.parse @response.body
    end

    def add_row
        puts 'los params' + params[:simultaneous] + params[:time] + params[:repeat_times]
        @data = call
    end
end