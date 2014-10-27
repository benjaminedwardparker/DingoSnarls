class Buttsniff < ActiveRecord::Base
  belongs_to :dingo
  belongs_to :buttsniffee, class_name: "Dingo"
end
