class OrderController < ApplicationController
    include JsonGenerator, JsonConsumer
    def new
    end

    def show
        @time = params['time'].to_i * 1000
        @repeat_times = params['repeat_times'].to_i
    end

    def add_row
        @data = call
    end
end