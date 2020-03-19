module JsonConsumer

    def call 
        url = "http://localhost:3000/api/v1/orders"
        @response = Faraday.post(url, generate_orders.to_json, "Content-Type" => "application/json")
        @data = JSON.parse @response.body
    end
end