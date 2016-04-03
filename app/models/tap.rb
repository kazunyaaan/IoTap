class Tap < ActiveRecord::Base
  belongs_to :user
  enum state: { off: 0, on: 1, lost: -1 }
end
