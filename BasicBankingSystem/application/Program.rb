require_relative '../entities/Account.rb'

print "Account number: "
account_number = gets.chomp.to_i
print "Account holder: "
account_holder = gets.chomp

option = nil

loop do
  print "\nWant to make an initial deposit? (y/n): "
  option = gets.chomp
  break if ['y', 'n'].include?(option)
  puts "--- Invalid input! Please enter 'y' or 'n'."
end

if (option == 'y')
  print "What the value? $"
  initial_deposit = gets.chomp.to_f
  while initial_deposit <= 0
    print "--- Invalid input! Please enter a valid deposit value: $"
    initial_deposit = gets.chomp.to_f
  end
  account = Entities::Account.new(account_number, account_holder, initial_deposit)
else
  account = Entities::Account.new(account_number, account_holder)
end

puts account

print "\nEnter a deposit value: $"
account.deposit(gets.chomp.to_f)

puts account

print "\nEnter a withdraw value: $"
account.withdraw(gets.chomp.to_f)

puts account
puts
