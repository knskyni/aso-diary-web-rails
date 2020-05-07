class Diary < ApplicationRecord
  validates :good_comment, {presence: true, length: {maximum: 1024, minimum: 16}}
  validates :bad_comment, {presence: true, length: {maximum: 1024, minimum: 16}}
  validates :about_comment, {presence: true, length: {maximum: 1024, minimum: 16}}

  def student
    return User.find_by(student_id: self.student_id)
  end
end
