require 'net/http'
require 'uri'

class Payment < ActiveRecord::Base

	#validates :cardNumber,
  	#				presence:true,
  	#				numericality: true
  	#validates :cardCVV,
  	#				presence:true,
  	#				numericality: true
  				


  attr_accessor :cardNumber, :cardCVV, :cardExpiryMonth, :cardExpiryYear


end
