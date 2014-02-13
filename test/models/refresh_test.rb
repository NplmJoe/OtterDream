require 'test_helper'

class RefreshTest < ActiveSupport::TestCase
  test "refresh attributes must not be empty" do
    refresh = Refresh.new
    assert refresh.invalid?
    assert refresh.errors[:refresh_date].any?
    assert refresh.errors[:refresh_type].any?
    assert refresh.errors[:env_id].any?
  end

  test "environment can only be refreshed once per day" do
    refresh = Refresh.new(refresh_date: refreshes(:one).refresh_date,
      refresh_type: refreshes(:one).refresh_type,
      env_id: refreshes(:one).env_id)
    assert refresh.invalid?
    assert_equal ["should only be refreshed once per day"], refresh.errors[:env_id]
  end
end
