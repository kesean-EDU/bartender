class DrinkCategory < ApplicationRecord
    has_many :bartenders
    has_many :drinks
end
