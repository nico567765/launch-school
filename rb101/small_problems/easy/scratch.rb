#  Mortgage / Car Loan Calculator

def display_results(results)
  puts "monthly interest rate (%): #{results[:monthly_interest]*100}"
  puts "number of payments: #{results[:duration_months]}"
  puts "monthly payment: #{results[:monthly_payment]}"
  puts "\ntotal to be repayed: #{results[:monthly_payment]*results[:duration_months]}"
  puts "total interest: #{(results[:monthly_payment]*results[:duration_months])-results[:loan_amount]}"
  puts "--"
end

def calculate_repayments(loan_amount, apr, duration_years)
  loan_amount = loan_amount.to_f
  monthly_interest = (apr / 100.0) / 12.0
  duration_months = duration_years * 12.0

  monthly_payment = 
    loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))

  { loan_amount:      loan_amount,
    monthly_interest: monthly_interest, 
    duration_months:  duration_months, 
    monthly_payment:  monthly_payment }
end

test_a = calculate_repayments(100_000, 5, 25)
test_b = calculate_repayments(1, 0.01, 1)
test_c = calculate_repayments(10_000_000, 9.5, 17.5)

display_results(test_a)
display_results(test_b)
display_results(test_c)