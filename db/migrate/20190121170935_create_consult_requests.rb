class CreateConsultRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :consult_requests do |t|
      t.string :user_name
      t.string :phone
      t.boolean :is_new, default: false

      t.timestamps
    end
  end
end
