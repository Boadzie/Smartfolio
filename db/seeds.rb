User.create!(
  email:"daniel@gmail.com",
  password:"incredible",
  password_confirmation:"incredible",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin was created"

User.create!(
  email:"dan@gmail.com",
  password:"daniel",
  password_confirmation:"daniel",
  name: "Regular User",
  roles: "user"
)

puts "1 regular user was created"

3.times do |topic|
  Topic.create!(
   title:"Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "my blog post #{blog}",
    body: "Analogies are close cousins of metaphors and also are very
effective. An analogy is a comparison between two different
things in order to highlight some area of similarity.",
topic_id: Topic.last.id
 
  	)
end

puts "10 blog posts were created"

5.times do |skill|
  Skill.create!(
     title: "Rails #{skill}",
     percent_utilized: 50
  	)
end

puts "5 skills were created"

8.times do |portfolio_item|
  Portfolio.create!(
     title:"Portfolio title: #{portfolio_item}",
     subtitle: "Ruby on Rails",
     body: "The
company extended the metaphor to the website with an image
of a suit of armor and the same tagline. The metaphor was consistent throughout the company’s marketing material",
     main_image: "https://placehold.it/600x400",
     thumb_image: "https://placehold.it/350x200"
  	)
end

puts "8 portfolio items were created"

1.times do |portfolio_item|
  Portfolio.create!(
     title:"Portfolio title: #{portfolio_item}",
     subtitle: "Angular",
     body: "The
company extended the metaphor to the website with an image
of a suit of armor and the same tagline. The metaphor was consistent throughout the company’s marketing material",
     main_image: "https://placehold.it/600x400",
     thumb_image: "https://placehold.it/350x200"
    )
end

puts "1 portfolio items were created"

3.times do |technology|
  Portfolio.last.technologies.create!(
     name:"Technology #{technology}"
    )
end

puts "3 technologies were created"

