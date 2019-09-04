class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks


def ticker_lookup
  stock = StockQuote::Stock.new(api_key: "pk_3f33de8c868e47748abb714912aefd2c")
end

  # def self.find_by_ticker(ticker_symbol)
  #   where(ticker: ticker_symbol).first
  # end
  #
  #
  # def self.new_from_lookup(ticker_symbol)
  #   # begin
  #   #   stock = IEX::Api::Client.new(publishable_token: 'pk_3f33de8c868e47748abb714912aefd2c')
  #   #   looked_up_stock = stock.quote(ticker_symbol)
  #   #   new(name: looked_up_stock.company_name,
  #   #       ticker: looked_up_stock.symbol, last_price: looked_up_stock.current_price)
  #   # rescue Exception => e
  #   #   return nil
  #   # end
  # end
end
