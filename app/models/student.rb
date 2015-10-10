class Student < ActiveRecord::Base
  belongs_to :batch
  belongs_to :department
  belongs_to :class_section
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
  attr_accessor :login
  mount_uploader :avatar, AvatarUploader


  validates :register_number,
  :presence => true,
  length: { is: 12 },
  numericality: { only_integer: true },
  :uniqueness => {
    :case_sensitive => false
  } # etc.


  def mates
      Student.where(:department_id =>self.department_id).where(:batch_id => self.batch_id).where(:class_section_id => self.class_section_id).all
  end

  def login=(login)
    @login = login
  end

  def avatar_url
     self.avatar.url.present? ? self.avatar.url : "/pic"
  end

  def login
    @login || self.register_number || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(register_number) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions.to_h).first
      end
    end
end
