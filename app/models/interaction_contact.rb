class InteractionContact < ApplicationRecord
  belongs_to :interactions
  belongs_to :contacts
end
