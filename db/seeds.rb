require 'faker'
genres = ["action", "horreur", "comédie", "drame"]

100.times do
  movie = Movie.create!(
    name: Faker::Movie.title, 
    year: rand(1900..2020), 
    genre: genres.sample, 
    synopsis: Faker::Lorem.sentence(word_count: 15), 
    director: Faker::Name.name, 
    allocine_rating: (rand * 5).round(1), 
    my_rating: nil, 
    already_seen: false
    )
end
puts "100 films on été créés"