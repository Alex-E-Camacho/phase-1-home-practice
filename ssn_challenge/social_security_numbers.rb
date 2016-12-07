# Look at the tests in `spec/social_security_numbers_spec.rb`
# to see a description of how these methods should behave.


# Determine whether a string contains a Social Security Number.
require 'pry'

def has_ssn?(string)
  if /\d{3}-\d{2}-\d{4}/.match(string)
    true
  else
    false
  end
end

# Find and return a Social Security Number.
def grab_ssn(string)
  string.scan(/\d{3}-\d{2}-\d{4}/).join.slice!(0..10)
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
  string.scan(/\d{3}\W*\d{2}\W*\d{4}/)
end

# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)
  string.gsub /\d{3}-\d{2}-/, "XXX-XX-"
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', 'c', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
   ssn_array = grab_all_ssns(string)
     ssn_array.map do |ssns|
      new_array = ssns.split('')
      new_array.delete_if { |str| str =~ /\D/ }
      new_array.insert(3, "-")
      new_array.insert(6, "-")
      new_array = new_array.join
      ssn_array = new_array
     end
   ssn_array
     # binding.pry
end

  # /\d{9}/.match(string).to_A
  # /\d{3}\D\d{2}\D\d{4}/.match(string).to_A
# ['4', '8', '0', '-', '-']

# if /D, delete it

p format_ssns("The numbers are 480--01--4430, 234.60.1422,")