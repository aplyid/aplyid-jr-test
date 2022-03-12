class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title, default: "", null: false
      t.text :body, default: ""

      t.timestamps
    end
  end
end
