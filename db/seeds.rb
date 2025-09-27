# Seed data for RottenPotatoes
movies = [
  {
    title: 'Aladdin',
    rating: 'G',
    release_date: '1992-11-25',
    description: 'A street thief and a princess discover a whole new world together.'
  },
  {
    title: 'The Terminator',
    rating: 'R',
    release_date: '1984-10-26',
    description: 'A cyborg assassin is sent back in time to kill the mother of the future resistance leader.'
  },
  {
    title: 'When Harry Met Sally',
    rating: 'R',
    release_date: '1989-07-21',
    description: 'A romantic comedy about whether men and women can be just friends.'
  },
  {
    title: 'The Help',
    rating: 'PG-13',
    release_date: '2011-08-10',
    description: 'An aspiring author writes a book about African-American maids in 1960s Mississippi.'
  },
  {
    title: 'Chocolat',
    rating: 'PG-13',
    release_date: '2000-12-15',
    description: 'A woman opens a chocolate shop in a conservative French town.'
  },
  {
    title: 'Amelie',
    rating: 'R',
    release_date: '2001-04-25',
    description: 'A shy waitress decides to help those around her find happiness.'
  },
  {
    title: 'The Incredibles',
    rating: 'PG',
    release_date: '2004-11-05',
    description: 'A family of superheroes is forced to hide their powers and live normal lives.'
  },
  {
    title: 'Raiders of the Lost Ark',
    rating: 'PG',
    release_date: '1981-06-12',
    description: 'Archaeologist Indiana Jones races to find the Ark of the Covenant.'
  },
  {
    title: 'Chicken Run',
    rating: 'G',
    release_date: '2000-06-23',
    description: 'Chickens on a farm plot their escape from becoming dinner.'
  },
  {
    title: 'THX-1138',
    rating: 'PG',
    release_date: '1971-03-11',
    description: 'In a dystopian future, a man rebels against the totalitarian state.'
  }
]

movies.each do |movie_attrs|
  Movie.find_or_create_by(title: movie_attrs[:title]) do |movie|
    movie.rating = movie_attrs[:rating]
    movie.release_date = movie_attrs[:release_date]
    movie.description = movie_attrs[:description]
  end
end

puts "Created #{Movie.count} movies"