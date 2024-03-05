module Entities
  class Account
    #I'm not using - attr_accessor -

    def initialize(account_number, name, balance = 0.0)
      @account_number = account_number
      @name = name
      @balance = balance
    end

    def account_number
      @accountNumber
    end

    def name
      @name
    end

    def name=(name)
      @name = name
    end

    def balance
      @balance
    end

    def deposit(value)
      if (value > 0)
        @balance += value
      end
    end

    def withdraw(value)
      if (value > 0)
        @balance -= value
      end
    end

    def to_s
      format("\n\tAccount Data\nAccount: %.0f\nHolder: %s\nBalance: $%.2f\n", @account_number, @name, @balance)
    end

  end
end
