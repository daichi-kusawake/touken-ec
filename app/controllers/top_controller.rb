class TopController < ApplicationController
    def sign_on
        @customers = Customer.new
    end
end