class Task < ActiveRecord::Base
  has_many :notes
  validates :title, presence: true, length: { maximum: 20 }
  validates :status, presence: true, inclusion: { in: [0, 1, 2]}
end
