class Snarl < ActiveRecord::Base
  belongs_to :dingo
  validates :post, presence: true
  validates :dingo_id, presence: true
  scope :all_recent, -> {all.order("created_at DESC")}
  scope :this_dingo, -> {where(dingo_id: params[:id]).order("created_at DESC")}
  paginates_per 10
end
