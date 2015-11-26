class ValorationUser < ActiveRecord::Base
	belongs_to :reservation
	validates_inclusion_of :valor, in: 1..5 
end
