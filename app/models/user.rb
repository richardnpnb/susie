class User < ActiveRecord::Base

  # change #004 added next 1 lines
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

  # change for #00441 added next line
  has_many :activities


end
