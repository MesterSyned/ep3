class Comentario < ApplicationRecord

    belongs_to :topico
    belongs_to :user
    validates :comentario, presence: true

    extend FriendlyId
    friendly_id :reply, use: [:slugged, :finders]

    def should_generate_new_friendly_id?
	comentario_changed?
    end

end
