class CreateStudentAssessmentQuestions < ActiveRecord::Migration
  def change
    create_table  :student_assessment_questions do |t|
      t.integer :student_assessment_id
      t.integer :question_id
      t.integer :option_id

      t.timestamps
    end
  end
end