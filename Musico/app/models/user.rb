class User < ApplicationRecord
    validate: :name :email :password , presence :true
    validate: :email, :unique => true
end
