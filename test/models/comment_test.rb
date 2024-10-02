require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "searchable by body" do
    comment = bubbles(:logo).comments.create! body: "I'd prefer something more rustic", creator: users(:kevin)

    assert_includes Comment.search("something rustic"), comment
  end
end
