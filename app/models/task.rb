class Task < ApplicationRecord
  validates :content, presence: true
  validates :detail,  presence: true
end
