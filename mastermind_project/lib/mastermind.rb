require_relative "code"
require "byebug"

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code) 
        p "Exact Matches: #{@secret_code.num_exact_matches(code)}"
        p "Near Matches: #{@secret_code.num_near_matches(code)}"
    end

    def ask_user_for_guess
        p "Enter a code"
        input = gets.chomp
        guess = Code.from_string(input)

        print_matches(guess)
        @secret_code == guess
    end
end
