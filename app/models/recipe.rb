class Recipe < ActiveRecord::Base
    
    
    
    belongs_to :chef
    
    #   validates_presence_of :naam, :message => "van recept mag niet leeg zijn" 
    # validates :naam, :inclusion  => { :in => 5..100, :message => " van recept moet niet te kort of te lang zijn (minimum 5 tekens)" }
    
    # validates_presence_of :overzicht, :message => "van recept mag niet leeg zijn" 
    # validates :overzicht, :inclusion  => { :in => 10..150, :message => " van recept moet niet te kort of te lang zijn (minimum 10 tekens)" }
    
    # validates_presence_of :ingredient, :message => "van recept mag niet leeg zijn" 
    # validates :ingredient, :inclusion  => { :in => 5..100, :message => " van recept moet niet te kort of te lang zijn (minimum 5 tekens)" }
    
    #     validates_presence_of :beschrijving, :message => "van recept mag niet leeg zijn" 
    # validates :beschrijving, :inclusion  => { :in => 20..500, :message => " van recept moet niet te kort of te lang zijn (minimum 20 tekens)" }
    
    
    
    
    
    validates :chef_id, presence: true 
    validates :naam, presence: true, length: {minimum:5, maximum:100} 
    validates :overzicht, presence: true, length: {minimum:10, maximum:150}
    validates :ingredient, presence: true, length: {minimum:5, maximum:100}
    validates :beschrijving, presence: true, length: {minimum:20, maximum:500}
    
end