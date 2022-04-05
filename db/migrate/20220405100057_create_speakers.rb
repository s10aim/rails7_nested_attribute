class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.references :event, null: false, foreign_key: true
      t.string :name, null: false, comment: '名前'
      t.string :title, null: false, comment: 'タイトル'
      t.time :start_time, null: false, comment: '開始時刻'
      t.time :end_time, null: false, comment: '終了時刻'

      t.timestamps
    end
  end
end
