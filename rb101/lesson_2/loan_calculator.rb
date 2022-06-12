#  Mortgage / Car Loan Calculator

def prompt(message)
  puts "=> #{message}"
end

def no_prompt(message)
  puts "   #{message}"
end

def l_align(str)
  str = str.to_s
  str.ljust(29)
end

def r_align(str)
  str = str.to_s
  str.rjust(10)
end

def valid_number?(number)
  number.to_f.to_s == number || number.to_i.to_s == number
end

def get_figure(message)
  loop do
    prompt(message)
    figure = gets.chomp
    return figure if valid_number?(figure)
    prompt(WORDS[:valid_number])
  end
end

def go_again?
  prompt(WORDS[:again])
  answer = nil
  loop do
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
    prompt(WORDS[:yes_or_no])
  end
  answer == 'y'
end

def get_repayments(loan_amount, apr, duration_years)
  monthly_interest = (apr / 100.0) / 12.0
  duration_months = (duration_years * 12.0).round(0)

  monthly_payment = loan_amount *
                    (monthly_interest / (1 -
                    (1 + monthly_interest)**(-duration_months)))

  { monthly_payment: monthly_payment,
    number_of_payments: duration_months,
    total_repayed: monthly_payment * duration_months,
    total_interest:(monthly_payment * duration_months) - loan_amount }
end

def display_repayment(results)
  # puts
  # prompt    "#{WORDS[:monthly_payment]} #{results[:monthly_payment].round(2)}"
  # no_prompt "#{WORDS[:number_of_payments]} #{results[:number_of_payments]}"
  # no_prompt "#{WORDS[:total_repayed]} #{results[:total_repayed].round(2)}"
  # no_prompt "#{WORDS[:total_interest]} #{results[:total_interest].round(2)}"
  # puts
  puts
  prompt    l_align(WORDS[:monthly_payment]) +
            r_align(results[:monthly_payment].round(2))
  puts
  no_prompt l_align(WORDS[:number_of_payments]) +
            r_align(results[:number_of_payments])
  no_prompt l_align(WORDS[:total_repayed]) +
            r_align(results[:total_repayed].round(2))
  no_prompt l_align(WORDS[:total_interest]) +
            r_align(results[:total_interest].round(2))
  puts
end


# get string data from file to allow for other languages
require 'yaml'
word_hash = YAML.load_file('loan_calculator.yml')
WORDS = word_hash[:english]
system('clear')

# main program loop
loop do
  prompt(WORDS[:greeting])
  loan_amount = get_figure(WORDS[:amount_prompt]).to_f
  apr = get_figure(WORDS[:apr_prompt]).to_f
  duration_years = get_figure(WORDS[:duration_prompt]).to_f
  results = get_repayments(loan_amount, apr, duration_years)
  display_repayment(results)
  break unless go_again?
end