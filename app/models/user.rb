class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role

  has_many :recipes, foreign_key: :creator_id

  before_create :set_default_role


  def role?(role_to_compare_to)
    role_to_compare_to.to_s == self.role.try(:name).to_s
  end

  private
  
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
end
