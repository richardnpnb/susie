class User < ActiveRecord::Base

#validates_presence_of :name

  # change for #00441 added next line
  has_many :activities

  # change #00443 added this line
  has_many :audits

  # change #004 added next line for auditing records
  audited :allow_mass_assignment => true
    
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
end
