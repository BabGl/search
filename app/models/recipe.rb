class Recipe < ActiveRecord::Base
    validates :naam, presence: true, length: {minimum:5, maximum:100}
    validates :overzicht, presence: true, length: {minimum:10, maximum:150}
    validates :ingredient, presence: true, length: {minimum:5, maximum:100}
    validates :beschrijving, presence: true, length: {minimum:20, maximum:500}
    
end