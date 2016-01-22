class CreateRubyGems < ActiveRecord::Migration
  def change
    create_table :ruby_gems do |t|
      t.string :name
      t.string :version
      t.string :gem_uri
      t.string :homepage_uri

      t.timestamps null: false
    end
  end
end
