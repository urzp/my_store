class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
	  t.float :price  # новая	колонка  цена
	  t.string :name
	  t.boolean :real
	  t.float :weight
      t.string :description  
      t.timestamps  # специальный матод добовляет два столбца :created_at, updated_at будет фиксировать время создания и обновления модели
	  
    end
      add_index :items , :price # проиндксируем важные поля для быстрого поиска по ним
      add_index :items , :name
  end
end
