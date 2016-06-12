require 'test_helper'

class ChefTest < ActiveSupport::TestCase
   
   
   def setup
     @chef = Chef.new(chefname: "Baburi", email:"baburi.mortaza@live.com")
   end
   
   test "chef should be valid" do
              assert @chef.valid?
          end
   
   test "chefname should be present" do
       @chef.chefname = " "
              assert_not @chef.valid?
              
    end
    
     test "chefname should be too long" do
       @chef.chefname = "a" * 41
              assert_not @chef.valid?
              
    end
    
     test "chefname should be to short" do
       @chef.chefname = "aa"
              assert_not @chef.valid?
             
    end
    
    
    
    test "email should be present" do
       @chef.email = " "
      assert_not @chef.valid?
              
    end
    
     test "email should not be too long" do
       @chef.email = "a" * 101 + "@example.com"
              assert_not @chef.valid?
              
    end
    
 test "email address should be unique" do
 dup_chef = @chef.dup 
 dup_chef.email = @chef.email.upcase
 @chef.save
 
 assert_not dup_chef.valid?
 end
    
    test "email validation should accept valid address" do
        valid_address = %w[user@eee.com R_TDD-DS@ee.hello.org user@example.com first.last@eem.au laura+joe@monk.cm]
        valid_address.each do |va|
            assert @chef.valid?, '#{va.inspect} should be valid'
            
        end
    end
    
    test "email validation should reject invalid addresses" do
        invalid_addresses = %w[user@eee,com user_at_ee.org user.name@example. eee@i_am_.com foo@ee+aar.com]
              invalid_addresses.each do |ia|
               @chef.email = ia
                assert_not @chef.valid?, '#{ia.inspect} should be valid'
                
     end
             end
    
    
end