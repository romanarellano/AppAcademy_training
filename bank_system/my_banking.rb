class Person
  attr_reader :name
  attr_accessor :wallet, :bank_account,:withdraw_amount,:transfer_amount
  def initialize(name,wallet)
    @name =name
    @wallet = wallet
    @bank_account ={}
       
    puts "Hi #{name}. You have $#{@wallet} dollars!"
  end
end
 
class Bank
  attr_reader :company_name
  attr_accessor :bank_total_cash
  
  def initialize(company)
    @company_name = company
    self.bank_total_cash =0
    puts "#{@company_name} bank was just created"
  end
     
  def open_account(person)
    puts "#{person.name}, thanks for opening an account at #{@company_name}"
  end
  
  def deposit(person,deposit)
    
    #cannot deposit more than what you had in the beginning
    if (person.wallet - deposit) < 0
        puts "#{person.name} does not have enough cash to deposit $#{deposit}"
    else 
        person.bank_account[@company_name] ||=0
        #current deposit amount
        person.bank_account[@company_name]  += deposit
      
        #amount person currently has in wallet subtracting deposit amount
        person.wallet-=deposit 
        #total amount in the bank system
        self.bank_total_cash += deposit
      puts "#{person.name} deposited $#{deposit} to #{@company_name}. #{person.name} has $#{person.wallet}. #{person.name}'s #{@company_name} account has $#{person.bank_account[@company_name]}"
    end
  end  
  
   def withdraw(person,withdraw_amount)
     
     if person.bank_account[@company_name]< withdraw_amount
       puts "#{person.name} does not have enough money in the account to withdraw $#{withdraw_amount}"
     else
       person.withdraw_amount = withdraw_amount
       #current amount in the person's account
  
       person.bank_account[@company_name] = person.bank_account[@company_name] - withdraw_amount
       #amount of cash increased on hand
       person.wallet+=withdraw_amount
       self.bank_total_cash  -= withdraw_amount
       puts "#{person.name} withdrew $#{person.withdraw_amount} from #{@company_name}. #{person.name} has $#{person.wallet}.#{person.name}'s #{@company_name} account has $#{person.bank_account[@company_name]}"
     end
  end
 def transfer(person,company,amount)
    
    if person.bank_account[@company_name] < amount
      puts "#{person.name} does not have enough money in the account to transfer $#{amount}"
    else
      self.bank_total_cash -= amount
      #amount of cash the other company,transferred to, has
      company.bank_total_cash += amount
      person.bank_account[@company_name] = person.bank_account[@company_name]- amount
      person.bank_account[company.company_name] = person.bank_account[company.company_name]+ amount
      puts "#{person.name} transferred $#{amount} from the #{@company_name} to the #{company.company_name} account. The #{@company_name} account has $#{person.bank_account[@company_name]} and the #{company.company_name} account has $#{person.bank_account[company.company_name]}"
    end 
  end
  
  def total_cash_in_bank
    #sum of total_cash_in_bank 
  
  "#{self.company_name} has $#{self.bank_total_cash} in the bank"
  end
end
 
 
scotia_bank = Bank.new("Scotia Bank")
credit_union = Bank.new("Credit Union of Texas")
joshy = Person.new("Joshy",1500)
matilda = Person.new("Matilda",4000)
scotia_bank.open_account(joshy)
scotia_bank.open_account(matilda)
credit_union.open_account(joshy)
scotia_bank.open_account(matilda)
puts
scotia_bank.deposit(joshy,450)
credit_union.deposit(joshy,230)
scotia_bank.deposit(joshy,300)
scotia_bank.deposit(matilda,420)
scotia_bank.withdraw(joshy,250)
scotia_bank.transfer(joshy,credit_union,150)
p scotia_bank.total_cash_in_bank 
p credit_union.total_cash_in_bank