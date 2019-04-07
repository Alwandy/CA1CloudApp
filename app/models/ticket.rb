class Ticket < ApplicationRecord
    def self.search(search)
        where('id LIKE ?', 'cast(%#{search}%)')
      end
end
