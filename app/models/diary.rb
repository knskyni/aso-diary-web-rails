class Diary < ApplicationRecord
  def student
    return User.find_by(student_id: self.student_id)
  end
end
