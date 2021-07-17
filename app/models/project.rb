class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  enum status: ['draft','open','closed','expired','delisted','wait_approval','approval_accepted','finished','archived']
end
