# Seed the RottenPotatoes DB with some movies.
Movie.destroy_all
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  { title: 'Inception', rating: 'PG-13', release_date: '2010-07-16' },
  { title: 'The Dark Knight', rating: 'PG-13', release_date: '2008-07-18' },
  { title: 'Interstellar', rating: 'PG-13', release_date: '2014-11-07' },
  { title: 'The Shawshank Redemption', rating: 'R', release_date: '1994-09-23' },
  { title: 'Pulp Fiction', rating: 'R', release_date: '1994-10-14' },
  { title: 'The Godfather', rating: 'R', release_date: '1972-03-24' }


]

more_movies.each do |movie|
  Movie.create!(movie)
end

puts "Movies created!"