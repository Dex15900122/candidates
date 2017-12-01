10.times do |candidate|
    Candidate.create!(
      name:  " Post #{candidate}",
      party: "11111111"
    )
  end

  puts "10 candidate posts created"

5.times do |skill|
    Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
    )
  end


  puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "My great service",
    body: "qwewqeqweqwdstyht",
    main_image: "http://via.placeholder.com/600x300",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"
