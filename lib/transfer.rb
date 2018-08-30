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
    if @status == "complete"
    end 
    
    if @sender.valid?
      @sender.balance -= @amount 
    else 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
      
    end
    @receiver.balance += @amount
    @status = "complete"
  end 
  
end
