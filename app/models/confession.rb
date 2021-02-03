class Confession < ApplicationRecord
    validates :name,    presence: true
    validates :body,    presence: true,
                        length: { minimum: 3, maximum: 280 }
end
