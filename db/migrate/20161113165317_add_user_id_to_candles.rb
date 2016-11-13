class AddUserIdToCandles < ActiveRecord::Migration[5.0]
  def change
    add_reference :candles, :user, foreign_key: true
  end
end
