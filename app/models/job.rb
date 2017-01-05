class Job < ApplicationRecord
	has_many :boats, through: :boatjobs
	has_many :boatjobs

	validates :description, :length => {minimum: 50, maximum: 200, :message => "Not a valid descriptioin"}
	validates :name, :uniqueness => { :message => "This name has been used, try again."}
	validates :cost, :numericality => { :greater_than => 1000.00, :message => "Cost must exceed $1000. Cheers!"}
	validates_inclusion_of :origin, :in => ['Boston', 'New York', 'Los Angeles', 'Seattle']
	validates_inclusion_of :destination, :in => ['Boston', 'New York', 'Los Angeles', 'Seattle']
end
