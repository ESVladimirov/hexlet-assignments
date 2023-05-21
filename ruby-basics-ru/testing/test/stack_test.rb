# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def empty?(stack)
    stack.empty? ? true : false
  end

  def push!(stack, value)
    stack.push! value
  end

  def pop!(stack)
    stack.pop!
  end

  def clear!(stack)
    stack.clear!
  end
  
  def test_empty?
    stack = Stack.new
    assert { empty?(stack) == true }
  end

  def test_push!
    first_stack = Stack.new
    first_stack.push! 'test_value'
    second_stack = Stack.new
    push!(second_stack, 'test_value')
    assert { first_stack.size == second_stack.size }
  end

  def test_clear!
    first_stack = Stack.new
    first_stack.push! 'test_value'
    first_stack.clear!
    second_stack = Stack.new
    second_stack.push! 'test_value'
    clear!(second_stack)
    assert { first_stack.empty? == second_stack.empty? }
  end

  def test_pop!
    pop_value = 'test_value'
    test_stack = Stack.new
    test_stack.push! pop_value
    assert { pop!(test_stack) == pop_value }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
