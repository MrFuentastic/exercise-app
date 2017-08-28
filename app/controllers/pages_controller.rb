class PagesController < ApplicationController
  def fortune_teller_action
    @fortune = ['You will die a horrible horrible death.', 'You will live a horrible horrible life', "You'll be fine. I guess.", 'You will be rich... in happiness.', "You'll never be big!"
    ].shuffle.shift
    render 'fortune_teller.html.erb'
  end

  def lotto_numbers_action
    numbers = []
    counter = 1
    60.times do
      numbers << counter
      counter += 1
    end
    @lucky_numbers = []
    6.times do 
      @lucky_numbers << numbers.shuffle.shift
    end
    @lucky_numbers.join(', ')
    render 'lotto_numbers.html.erb'
  end

  def visit_counter_action

    render 'visit_counter.html.erb'
  end
end
