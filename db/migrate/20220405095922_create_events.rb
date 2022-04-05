class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events, comment: "イベント" do |t|
      t.string :title, null: false, comment: "タイトル"
      t.text :body, null: false, comment: "説明"
      t.date :date, null: false, comment: "日付"

      t.timestamps
    end
  end
end
