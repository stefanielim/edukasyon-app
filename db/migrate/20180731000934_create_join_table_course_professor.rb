class CreateJoinTableCourseProfessor < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :professors do |t|
      t.index [:course_id, :professor_id]
    end
  end
end
