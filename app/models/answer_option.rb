class AnswerOption < ActiveRecord::Base
  belongs_to :question
  has_many :answers
end
