class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    else 
      false 
    end
  end
  
  def execute_transaction
    if valid?  
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      @amount = 0
    elsif @sender.!valid?
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
   
  end 
  
end
