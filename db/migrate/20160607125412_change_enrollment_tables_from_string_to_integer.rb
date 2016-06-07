class ChangeEnrollmentTablesFromStringToInteger < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE enrollments ALTER COLUMN course_id TYPE integer USING (course_id::integer)'
    execute 'ALTER TABLE enrollments ALTER COLUMN user_id TYPE integer USING (user_id::integer)'
  end

  def down
    execute 'ALTER TABLE enrollments ALTER COLUMN course_id TYPE string USING (course_id::string)'
    execute 'ALTER TABLE enrollments ALTER COLUMN user_id TYPE string USING (user_id::string)'
  end
end
