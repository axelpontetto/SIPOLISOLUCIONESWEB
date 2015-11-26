class Valoration < ActiveRecord::Base
	belongs_to :couch
	validates_inclusion_of :valor, in: 1..5 

end
