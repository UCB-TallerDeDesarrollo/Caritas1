# -*- encoding : utf-8 -*-
require File.dirname(__FILE__) + '/../test_helper.rb'

module SessionTest
  class PerishabilityTest < ActiveSupport::TestCase
    def test_after_save
      ben = users(:ben)
      old_perishable_token = ben.perishable_token
      session = UserSession.create(ben)
      assert_not_equal old_perishable_token, ben.perishable_token
      
      drew = employees(:drew)
      assert UserSession.create(drew)
    end
  end
end
