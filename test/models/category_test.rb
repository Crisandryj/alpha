 require 'test_helper'

 class CatergoryTest < ActiveSupport::TestCase
   test "catergory should be vaild" do
     @category = Category.new(name: "Sports")
     assert @category.valid?
   end

   test "catergory should be vaild" do
     @category = Category.new(name: "Sports")
     assert @category.valid?
   end

 end
