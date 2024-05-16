# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create articles
10.times do |i|
  Article.create!(
    title: "Article #{i+1}",
    body: "This is the body of article #{i+1}. It contains some content.",
    status: ['public', 'private'].sample
  )
end

# Find all articles
articles = Article.all

# Create comments for each article
articles.each do |article|
  rand(1..5).times do
    article.comments.create!(
      body: "This is a comment on the article '#{article.title}'. It contains some content.",
      status: ['private', 'public'].sample
    )
  end
end
