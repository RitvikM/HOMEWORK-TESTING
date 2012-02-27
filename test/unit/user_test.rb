require 'test_helper'

class UserTest < ActiveSupport::TestCase
 test "should not  post without name" do
  post = User.new
  assert !user.save
end
