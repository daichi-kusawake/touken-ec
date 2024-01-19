class TopController < ApplicationController
    def index
        @customers = Customer.new
    end
end