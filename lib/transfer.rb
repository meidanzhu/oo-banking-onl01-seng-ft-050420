class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid? #check if both sender && receiver have valid account
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end
      
end
