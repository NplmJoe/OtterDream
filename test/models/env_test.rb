require 'test_helper'

class EnvTest < ActiveSupport::TestCase
	test "env attributes must not be empty" do
    env = Env.new
    assert env.invalid?
    assert env.errors[:name].any?
    assert env.errors[:description].any?
  end

  test "env name must be unique" do
    env = Env.new(name: envs(:one).name,
      description: "This is a description.")
    assert env.invalid?
    assert_equal ["has already been taken"], env.errors[:name]
  end
end