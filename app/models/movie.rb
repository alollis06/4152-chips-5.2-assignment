class Movie < ApplicationRecord
  def self.all_ratings
    %w[G PG PG-13 R]
  end
  def self.with_ratings(ratings_list)
    if ratings_list.present?
      where(rating: ratings_list.map(&:upcase))
    else
      all
    end
  end
end
