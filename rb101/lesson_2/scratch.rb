require 'yaml'

words = YAML.load(File.read("/home/nick/launch_school/rb101/lesson_2/calculator.yml"))

puts ">> #{words[:op_prompt]}"
