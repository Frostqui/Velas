class User < ApplicationRecord
    has_many :candles
    has_secure_password 
end
