class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
    end
    create_table :tags_tickets, :id => false do |t|
      t.references :tag
      t.references :ticket
    end
  end
end
