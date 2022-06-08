# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result


def get_language
  prompt <<-HEREDOC
  1. English
     2. Español
     3. Français
  HEREDOC
  while true
    choice = gets.chomp
    if valid_integer?(choice)
      choice = choice.to_i
      break
    else
      prompt("Enter 1, 2 or 3")
    end
  end
  language =  case choice
              when 1
               :english
              when 2
               :spanish
              when 3
               :french
              end
  language
end

def prompt(message)
  puts("=> #{message}")
end

def valid_integer?(num)
  # check type conversion returns a truthy value, return true or false accordingly
  if (Integer(num) rescue false)
    true
  else
    false
  end
end

def valid_float?(num)
  if (Float(num) rescue false)
    true
  else
    false
  end
end

def number?(num)
  if valid_integer?(num) || valid_float?(num)
    true
  else
    false
  end
end

def operation_to_message(op)
  message = case op
            when '1'
              WORDS[:op_to_msg]['1']
            when '2'
              WORDS[:op_to_msg]['2']
            when '3'
              WORDS[:op_to_msg]['3']
            when '4'
              WORDS[:op_to_msg]['4']
            end
  return message
end

# START main

# get choice of language
require 'yaml'

output_text = YAML.load(File.read("/home/nick/launch_school/rb101/lesson_2/calculator.yml"))

WORDS = output_text[get_language]

prompt(WORDS[:greeting])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(WORDS[:name_empty])
  else
    break
  end
end

prompt(WORDS[:name_greeting] + name + '!')

loop do # main loop
  number1 = ''
  loop do
    prompt(WORDS[:first_num])
    number1 = gets.chomp
    if number?(number1)
      break
    else
      prompt(WORDS[:invalid_num])
    end
  end
  number2 = ''
  loop do
    prompt(WORDS[:second_num])
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(WORDS[:invalid_num])
    end
  end

  operator_prompt = WORDS[:op_prompt]

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(WORDS[:invalid_op])
    end
  end

  prompt("#{operation_to_message(operator)} #{WORDS[:wait_msg]}")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("#{WORDS[:result]} #{result}")

  prompt(WORDS[:again])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(WORDS[:goodbye])
