class Card < ApplicationRecord
    validates_presence_of :suit, :value, :name, :color
end