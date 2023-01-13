# frozen_string_literal: true

require 'test_helper'

class HexletCodeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def init_user
    @user = User.new(name: 'rob', job: 'hexlet')
  end
  def test_form_for_with_url
    form = HexletCode.form_for @user, url: '/users' do |f|
    end
    assert_equal '<form action="/users" method="post"></form>', form
  end
  def test_form_for_without_url
    form = HexletCode.form_for @user do |f|
    end
    assert_equal '<form action="#" method="post"></form>', form
  end
end
