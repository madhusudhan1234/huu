class Answer < ApplicationRecord
  include HasGravatar
  belongs_to :answer
end
