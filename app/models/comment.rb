class Comment < ApplicationRecord
  belongs_to :ticket
  belongs_to :supervisor
  belongs_to :administrator
  belongs_to :executive
end