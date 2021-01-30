class Product < ApplicationRecord
    validates :name,        presence: true
    validates :description, presence: true,
                            length: { minimum: 20, maximum: 200 }
    validates :price,       presence: true,
                            numericality: { greater_than: 0, less_than: 1000000 }
end
