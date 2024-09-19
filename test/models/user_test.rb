require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "create" do
    user = User.create! \
      account: accounts("37s"),
      name: "Victor Cooper",
      email_address: "victor@37signals.com",
      password: "secret123456"

    assert_equal accounts("37s"), user.account
    assert_equal user, User.authenticate_by(email_address: "victor@37signals.com", password: "secret123456")
  end

  test "deactivate" do
    assert_changes -> { users(:jz).active? }, from: true, to: false do
      users(:jz).deactivate
    end
  end
end
