class AllCustomersController < ApplicationController
  def index
    #顧客一覧
    @customers = Customer.all
  end
end
