class Area < ApplicationRecord
   
    has_many :topicos
    has_many :users, through: :topicos
    resourcify

    extend FriendlyId
    friendly_id :area, use: [:slugged, :finders]

    def should_generate_new_friendly_id?
      area_changed?
    end
    
end
