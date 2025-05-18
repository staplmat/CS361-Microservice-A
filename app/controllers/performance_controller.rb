class PerformanceController < ApplicationController      # This is declaring that we are inheriting from  the ApplicationController class, which has
                                                        # access  to all base controllers
  def calculate  
    # This function calculates the performance of a stock. It takes as input the stock quantity, the purchase price, and the current price. It then returns a JSON of the gain or loss
    # which is the rating of the stock. 

    quantity = params[:quantity].to_i                   # params holds all incoming request dat, then converting to integer
    purchase_price = params[:purchase_price].to_f
    current_price = params[:current_price].to_f

    gain_loss = (current_price - purchase_price) * quantity
    rating = gain_loss

    render json: { result: rating}                     # render sends a response back to the client, rounded to two decimal places
  end
end
