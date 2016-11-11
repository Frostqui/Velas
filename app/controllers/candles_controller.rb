class CandlesController < ApplicationController
    def new
    end
    
    def create
        @candle = Candle.new(candle_params)
 
        @candle.save
        redirect_to @candle
    end

    def show
        @candle = Candle.find(params[:id])
    end

    def index
        @candles = Candle.all
    end

    def destroy
         @candle = Candle.find(params[:id])
         @candle.destroy
 
        redirect_to candles_path
end


    end

    


private
  def candle_params
    params.require(:candle).permit(:text)
  end
