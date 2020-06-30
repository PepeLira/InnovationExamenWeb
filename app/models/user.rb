class User < ApplicationRecord
  has_many :communicates
  has_many :bad_reports
end
