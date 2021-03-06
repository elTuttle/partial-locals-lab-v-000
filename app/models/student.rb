# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(name)
    student_array = []
    if name == ''
      Student.all
    else
      Student.all.each do |student|
        if student.name.downcase.include?(name.downcase)
          student_array << student
        end
      end
      student_array
    end
  end

end
