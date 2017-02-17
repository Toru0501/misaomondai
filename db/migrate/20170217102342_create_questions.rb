class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :bangou
      t.text :mondaibun
      t.string :mondai1
      t.string :mondai2
      t.string :mondai3
      t.string :mondai4
      t.string :kaitou
      t.text :point

      t.timestamps
    end
  end
end
