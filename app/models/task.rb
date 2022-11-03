class Task < ApplicationRecord
  belongs_to :project
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not Started', 'not-started'],
    ['In Progress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
