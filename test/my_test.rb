#frozen_string_literal: true

require 'minitest/autorun'
require 'hexlet_code'

class MyTest < Minitest::Test

  def setup; end

  def tesrdown; end

  def test_br
    expect_br='<br>'
    assert( HexletCode::Tag.build('br') == expect_br )
  end
end
