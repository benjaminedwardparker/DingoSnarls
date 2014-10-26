class Dingo < ActiveRecord::Base
  has_many :snarls
  validates :name, presence: true
  validates :password, presence:true, confirmation: true
end
