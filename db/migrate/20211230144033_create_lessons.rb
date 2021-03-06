class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :customer_id,     null: false
      t.integer :category_id,     null: false
      t.string  :name,            null: false
      t.text    :content,         null: false
      t.integer :attending_style, null: false
      t.string  :access,          null: false
      t.integer :contract_period, null: false
      t.integer :price,           null: false
      t.boolean :is_in_lecture,   null: false,  default: true

      t.timestamps
    end
  end
end
