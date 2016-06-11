class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :naam
      t.text :overzicht
      t.text :ingredient
      t.text :beschrijving
      t.timestamps
    end
  end
end
