class AddDeletedAtToConsultRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :consult_requests, :deleted_at, :datetime
  end
end
