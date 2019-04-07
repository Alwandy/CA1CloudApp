require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup # Do a user set up for test
    @testSubject = User.new
  end

  test "user should be authentic able" do  
    user = create(:user, password: "password")
    
    assert_not(user.authenticate("qwerty"))
    
    assert(user.authenticate("password"))  
    end 
end
