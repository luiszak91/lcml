# == Schema Information
#
# nombre de la tabla de los usuarios: users (usuario)
#
#  id    (identificador)        :integer          not null, primary key
#  name  (nombre)               :string(255)
#  email (correo electronico)   :string(255)
#  created_at (cuando se creo)  :datetime         not null
#  updated_at (hasta la fecha)  :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end