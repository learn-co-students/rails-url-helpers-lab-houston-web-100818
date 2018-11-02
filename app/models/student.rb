class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate_student_path
    if self.active == true
      self.update(active: false)
    else
      self.update(active: true)
    end 
  end 
end