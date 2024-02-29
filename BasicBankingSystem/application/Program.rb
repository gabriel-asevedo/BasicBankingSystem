require_relative '../entities/Account.rb'

print "Account number: "
accountNumber = gets.chomp.to_i
print "Account holder: "
accountHolder = gets.chomp

option = nil

loop do
  print "\nWant to make an initial deposit? (y/n): "
  option = gets.chomp
  break if ['y', 'n'].include?(option)
  puts "--- Invalid input! Please enter 'y' or 'n'."
end

if (option == 'y')
  print "What the value? $"
  initialDeposit = gets.chomp.to_f
  while initialDeposit <= 0
    print "--- Invalid input! Please enter a valid deposit value: $"
    initialDeposit = gets.chomp.to_f
  end
  account = Entities::Account.new(accountNumber, accountHolder, initialDeposit)
else
  account = Entities::Account.new(accountNumber, accountHolder)
end

puts account

print "\nEnter a deposit value: $"
account.deposit(gets.chomp.to_f)

puts account

print "\nEnter a withdraw value: $"
account.withdraw(gets.chomp.to_f)

puts account
puts
