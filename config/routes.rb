Rails.application.routes.draw do
  get '/fortune_teller' => 'pages#fortune_teller_action'
  get '/lotto_numbers' => 'pages#lotto_numbers_action'
  get '/counter' => 'pages#visit_counter_action'
end
