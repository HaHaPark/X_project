class Task < ApplicationRecord
  belongs_to :workspace
  belongs_to :user   

  
  VALID_STATUSES = %w[pending in_progress completed].freeze
  VALID_CATEGORIES = %w[feature bugfix research].freeze


  validates :title, presence: true
  validates :due_date, presence: true
  validates :status, presence: true, inclusion: { in: VALID_STATUSES }
  validates :category,                                
            presence: true,
            inclusion: { in: VALID_CATEGORIES }
  
end
