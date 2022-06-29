class User < ApplicationRecord
  before_save {self.email = email.downcase}
  has_many :articles
  validates :username,presence: true, uniqueness: {case_sensitive: false},length: { minimum:4,maximum:100 }
  validates :email,presence: true,uniqueness: {case_sensitive: false},length: { maximum:105 },format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/i}
  has_secure_password
end
