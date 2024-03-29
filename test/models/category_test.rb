 require 'test_helper'

 class CatergoryTest < ActiveSupport::TestCase

   def setup
     @category = Category.new(name: "Sports")
   end

   test "catergory should be vaild" do
     assert @category.valid?
   end

   test "should be present" do
     @category.name = " "
     assert_not @category.valid?
   end

   test "name should be unique" do
      @category.save
      @category2 = Category.new(name: "Sports")
      assert_not @category2.valid?
   end

   test "name should not be too long" do
     @category.name = "a" * 26
     assert_not @category.valid?
   end

   test "name should not be too short" do
     @category.name = "a" * 2
     assert_not @category.valid?
   end

 end
