module Entities
  class Account
    #I'm not using - attr_accessor -

    def initialize(accountNumber, name, balance = 0.0)
      @accountNumber = accountNumber
      @name = name
      @balance = balance
    end

    def accountNumber
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
      format("\n\tAccount Data\nAccount: %.0f\nHolder: %s\nBalance: $%.2f\n", @accountNumber, @name, @balance)
    end

  end
end
