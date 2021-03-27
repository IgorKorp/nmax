# frozen_string_literal: true

require_relative "nmax/version"

module Nmax
  class Error < StandardError; end

  class SearchNumbersInIO

    def initialize(io, n)
      @io = io
      @length = n
      @array_n = []
    end

    def call
      run
      @array_n
    end

    private
    def max_number(array_number)
      @array_n = @array_n | array_number.map{|i| i.to_i}
      @array_n = (@array_n.sort_by{|a| -a.to_i})[0...@length]
    end

    def run
      string_size = 1024 * 1024 * 2   #2Mb
      while (string = @io.read(string_size)) != nil
        @io.each_char do |char|
          if char.match?(/\d/)
            string << char
            next
          end
          break
        end
        max_number(string.scan(/\d{1,1000}/))
      end
    end
  end
end