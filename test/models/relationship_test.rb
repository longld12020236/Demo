require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  # test "the truth" do
  #   assert true
  # end
end
