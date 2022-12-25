class HomeController < ApplicationController
  def index
    StockQuote::Stock.new(api_key: "sk_914987cf1a434a9cbd1d081cf7f8ada0")
    if params[:ticker] == ""
      @nothing = "Hey, Your forgot to enter a ticker!"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue => err
        puts "stock error: #{err}"
        @error = "This stock does not exist! Err ->  #{err}"
      end
    end

    def about

    end
  end
end