class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer  :category_id
      t.integer  :user_id
      t.integer  :status
      t.string   :title
      t.string   :description
      t.datetime   :date_starts
      t.datetime   :date_end

      t.timestamps
    end
  end
end
