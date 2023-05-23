class Executive < ApplicationRecord
  belongs_to :user
  belongs_to :report
  belongs_to :administrator
  belongs_to :supervisor
  has_many :tickets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :responses, dependent: :destroy

end