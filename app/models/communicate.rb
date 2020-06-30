class Communicate < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :bad_reports
end
