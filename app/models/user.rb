class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_exclusion_of :edad, in:-100000...17
  validates_exclusion_of :telefono, in:{ with: /\A[a-zA-Z]+\z/}
  validates :name,
  					presence:true,
  					format: { with: /\A[a-zA-Z]+\z/}
  validates :apellido,
  					presence:true,
  					format: { with: /\A[a-zA-Z]+\z/}
  validates :direccion,
            presence:true 
  validates :nacimiento,
            presence:true 
  validates :telefono,
            presence:true          

  has_many :couches, dependent: :destroy
  scope :premium, -> {order("premium desc")}
  has_many :reservations, dependent: :destroy
  has_many :valoration_users, dependent: :destroy
end