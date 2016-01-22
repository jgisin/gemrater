class CreateRubyGems < ActiveRecord::Migration
  def change
    create_table :ruby_gems do |t|
      t.string :name
      t.string :version
      t.string :project_uri
      t.string :homepage_uri
      t.string :author
      t.string :information

      t.timestamps null: false
    end
  end
end
