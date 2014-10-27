class Dingo < ActiveRecord::Base
  has_many :snarls
  has_many :buttsniffs
  has_many :buttsniffees, through: :buttsniffs
  validates :name, presence: true
  validates :password, presence: true, confirmation: true
end
