require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

                                                        #TDD TEST
                                             # -------------------------------

    def setup
     @chef = Chef.create(chefname: "baburi", email: "afghero@live.com")
       #Instance variable maken
       @recipe = @chef.recipes.build(naam: "Aardappel-preisoep met taleggio", overzicht: "Dit gerecht zet je al op tafel vanaf €2,00 per persoon.", 
       ingredient:"3 l kippen- of groentebouillon,", beschrijving: "Pel de uien en snij ze in grove stukken. De snijwijze is meestal niet zo belangrijk wanneer je soep maakt.")
    end
    
          #Test: Recept moet valid zijn
          #------------------------------------------------------------------------------
          test "Recipe should be valid" do
              assert @recipe.valid?
          end
          
          test "chef_id should be present" do
          @recipe.chef_id = nil
          assert_not @recipe.valid?
         end
          
          #Test: Naam moet geschreven zijn.
          #------------------------------------------------------------------------------

          test "De naam van Recept moet geschreven(aanwezig) zijn" do
             @recipe.naam = " "
              assert_not @recipe.valid?
          end
           test "Naam moet niet te lang zijn" do
               @recipe.naam ="a" * 101
               assert_not @recipe.valid?
             
          end
          
           test "Naam moet niet te kort zijn" do
               @recipe.naam = "aaaa"
               assert_not @recipe.valid?
             
          end
          
          
          #Test: Overzicht
          #------------------------------------------------------------------------------
                 
          test "Overzicht moet aanwezig zijn" do
              @recipe.overzicht = " "
              assert_not @recipe.valid?
             
          end
          
           test "Overzicht moet niet te lang zijn" do
               @recipe.overzicht= "a" * 151
               assert_not @recipe.valid?
             
          end
          
           test "Overzicht moet niet te kort zijn" do
               @recipe.overzicht= "a" * 9
               assert_not @recipe.valid?
             
          end
          
          
          
           test "Ingredient moet aanwezig zijn" do
             @recipe.ingredient = " "
              assert_not @recipe.valid?
          end
          
          
          
          
           test "Beschrijving moet aanwezig zijn" do
               @recipe.beschrijving = " "
              assert_not @recipe.valid?
             
          end
          
           test "Beschrijving moet niet te lang zijn" do
               @recipe.beschrijving= "a" * 501
               assert_not @recipe.valid?
             
          end
          
           test "Beschrijving moet niet te kort zijn" do
               @recipe.beschrijving= "a" * 9
               assert_not @recipe.valid?
             
          end
          
end