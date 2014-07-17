class Task < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 20 }
  validates :status, presence: true, inclusion: { in: [0, 1, 2]}
end
