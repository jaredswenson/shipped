class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
    	t.string :name
    	t.string :category
    	t.string :primary_muscle
    	t.string :notes
    	t.references :user
      t.timestamps
    end
  end
end
