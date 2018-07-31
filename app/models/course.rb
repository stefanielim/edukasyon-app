class Course < ApplicationRecord
  has_and_belongs_to_many :professors

  validates :name, presence: true
end
