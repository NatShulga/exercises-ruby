# frozen_string_literal: true

require 'test_helper'

describe 'function' do
  it 'should works' do
    _(-> { require_relative 'index' }).must_output(/respond_to/)
    puts 'hexlet'.methods.grep(/\?/)
  end
end
