class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
	  t.flooat :prise  # новая	колонка  цена
	  t.string :name
	  t.boolean :real
	  t:float :weight
      t.timestamps  # специальный матод добовляет два столбца :created_at, updated_at будет фиксировать время создания и обновления модели
	  
    end
  end
end
