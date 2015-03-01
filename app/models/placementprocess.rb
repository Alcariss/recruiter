class Placementprocess < ActiveRecord::Base
belongs_to :candidate
belongs_to :company
belongs_to :user

def self.invite(invite)
	invite.clientinterviewdate = Date.today	
end

def self.offer(offer)
	offer.offerplaceddate = Date.today	
end

def self.accept(accept)
	accept.offeraccepteddate = Date.today	
end

def self.start(start)
	start.starteddate = Date.today	
end

def self.pay(pay)
	pay.paiddate = Date.today
	pay.active = false
end

end
