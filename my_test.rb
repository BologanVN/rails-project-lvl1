#frozen_string_literal: true

require 'minitest/autorun'

module HexletCode
  class Error < StandardError; end

  # HexletCode::Tag
  class Tag
    UNPAIRED_TAG = %w[br input img].freeze
    PAIRED_TAG = %w[label div].freeze

    def self.build(params, *args)
      tag = "<#{params}"
      args[0].each { |n, k| tag += " #{n}='#{k}'" } unless args.empty?
      tag += '>'
      tag += yield.to_s if block_given?
      tag += "</#{params}>" if PAIRED_TAG.include? params.to_s.downcase
      tag
    end
  end
end

class MyTest < Minitest::Test

  def setup; end

  def tesrdown; end

  def test_br
    tag='br'
    expect_br='<br>'
    assert( HexletCode::Tag.build('br') == expect_br )
  end
end
