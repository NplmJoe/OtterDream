require 'test_helper'

class AppTest < ActiveSupport::TestCase
  test "app attributes must not be empty" do
    app = App.new
    assert app.invalid?
    assert app.errors[:name].any?
    assert app.errors[:description].any?
    assert app.errors[:dev_lead].any?
    assert app.errors[:env_support_lead].any?
  end

  test "app name must be unique" do
    app = App.new(name: apps(:one).name,
      description: apps(:one).description,
      dev_lead: apps(:one).dev_lead,
      env_support_lead: apps(:one).env_support_lead)
    assert app.invalid?
    assert_equal ["has already been taken"], app.errors[:name]
  end
end
