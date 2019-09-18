class CreateTestClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :test_classes do |t|
      t.datetime :startDate
      t.boolean :myBool
      t.float :myFloat

      t.timestamps
    end
  end
end
