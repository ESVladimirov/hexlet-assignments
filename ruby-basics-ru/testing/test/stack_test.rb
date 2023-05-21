# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_empty?
    stack = Stack.new
    assert { stack.empty? == true }
  end

  def test_push!
    stack = Stack.new
    stack.push! 'test'
    assert { stack.pop! == 'test'}
  end

  def test_clear!
    stack = Stack.new
    stack.push! 'test_value'
    stack.clear!
    assert { stack.empty? == true }
  end

  def test_pop!
    pop_value = 'test_value'
    stack = Stack.new
    stack.push! pop_value
    assert { stack.pop! == pop_value }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
