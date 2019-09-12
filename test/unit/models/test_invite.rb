require "test/unit"
require './models/invite'

class TestInvite < Test::Unit::TestCase

  test 'process customer list and returns and array of matching records' do
    list = Invite.list
    assert_not_nil list
    assert_kind_of Array, list
  end

end