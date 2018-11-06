class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table(:reviews, :id => :uuid) do |table|
      table.uuid(:author_id, :null => false)
      table.text(:body, :null => false)
      table.text(:moderation_state, :null => false)
      table.uuid(:reviewable_id, :null => false)
      table.text(:reviewable_type, :null => false)
      table.timestamps

      table.index(:author_id)
      table.index(:created_at)
      table.index(:moderation_state)
      table.index([:reviewable_id, :reviewable_type])

      table.foreign_key(:accounts, :column => :author_id)
    end
  end
end
