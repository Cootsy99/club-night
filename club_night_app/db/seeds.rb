# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



racket_sports_clubs = [
    {
      founder: "James Anderson",
      name: "Ace Smashers",
      location: "London",
      timetable: "Monday, Wednesday, Friday (6:00 PM - 8:00 PM)"
    },
    {
      founder: "Emma Roberts",
      name: "Racket Masters",
      location: "Los Angeles",
      timetable: "Tuesday, Thursday, Saturday (4:00 PM - 6:00 PM)"
    },
    {
      founder: "Daniel Wilson",
      name: "Spin Kings",
      location: "Sydney",
      timetable: "Monday, Wednesday, Friday (7:00 PM - 9:00 PM)"
    },
    {
      founder: "Olivia Thompson",
      name: "Net Ninjas",
      location: "Toronto",
      timetable: "Tuesday, Thursday, Saturday (5:00 PM - 7:00 PM)"
    },
    {
      founder: "Liam Davis",
      name: "Smash Zone",
      location: "Chicago",
      timetable: "Monday, Wednesday, Friday (6:30 PM - 8:30 PM)"
    },
    {
      founder: "Sophia Martinez",
      name: "Racketeers",
      location: "Barcelona",
      timetable: "Tuesday, Thursday, Saturday (5:30 PM - 7:30 PM)"
    },
    {
      founder: "Ethan Wilson",
      name: "Ace Strikers",
      location: "Mumbai",
      timetable: "Monday, Wednesday, Friday (7:30 PM - 9:30 PM)"
    },
    {
      founder: "Mia Garcia",
      name: "Racket Revolution",
      location: "New York",
      timetable: "Tuesday, Thursday, Saturday (6:00 PM - 8:00 PM)"
    },
    {
        founder: "Aiden Thompson",
        name: "Smash Kings",
        location: "Sydney",
        timetable: "Monday, Wednesday, Friday (6:00 PM - 8:00 PM)"
      },
      {
        founder: "Sophie Johnson",
        name: "Racket Warriors",
        location: "Los Angeles",
        timetable: "Tuesday, Thursday, Saturday (4:00 PM - 6:00 PM)"
      },
      {
        founder: "Benjamin Davis",
        name: "Ace Hitters",
        location: "London",
        timetable: "Monday, Wednesday, Friday (7:00 PM - 9:00 PM)"
      },
      {
        founder: "Charlotte Wilson",
        name: "Net Crushers",
        location: "Toronto",
        timetable: "Tuesday, Thursday, Saturday (5:00 PM - 7:00 PM)"
      },
      {
        founder: "Lucas Martinez",
        name: "Racket Masters",
        location: "Barcelona",
        timetable: "Monday, Wednesday, Friday (6:30 PM - 8:30 PM)"
      },
      {
        founder: "Isabella Garcia",
        name: "Smash Squad",
        location: "Chicago",
        timetable: "Tuesday, Thursday, Saturday (5:30 PM - 7:30 PM)"
      },
      {
        founder: "Henry Thompson",
        name: "Ace Aces",
        location: "Mumbai",
        timetable: "Monday, Wednesday, Friday (7:30 PM - 9:30 PM)"
      },
      {
        founder: "Amelia Roberts",
        name: "Racket Strikers",
        location: "New York",
        timetable: "Tuesday, Thursday, Saturday (6:00 PM - 8:00 PM)"
      },
      {
        founder: "Alexander Davis",
        name: "Spin Stars",
        location: "Berlin",
        timetable: "Monday, Wednesday, Friday (5:00 PM - 7:00 PM)"
      },
      {
        founder: "Grace Anderson",
        name: "Racket Dominators",
        location: "Paris",
        timetable: "Tuesday, Thursday, Saturday (7:00 PM - 9:00 PM)"
      },
      {
        founder: "Nathan Johnson",
        name: "London Tennis Club",
        location: "London",
        timetable: "Monday, Wednesday, Friday (6:00 PM - 8:00 PM)"
      },
      {
        founder: "Sophia Thompson",
        name: "Los Angeles Badminton Club",
        location: "Los Angeles",
        timetable: "Tuesday, Thursday, Saturday (4:00 PM - 6:00 PM)"
      },
      {
        founder: "Ethan Davis",
        name: "Sydney Squash Club",
        location: "Sydney",
        timetable: "Monday, Wednesday, Friday (7:00 PM - 9:00 PM)"
      },
      {
        founder: "Olivia Wilson",
        name: "Toronto Table Tennis Club",
        location: "Toronto",
        timetable: "Tuesday, Thursday, Saturday (5:00 PM - 7:00 PM)"
      },
      {
        founder: "Liam Martinez",
        name: "Chicago Racquetball Club",
        location: "Chicago",
        timetable: "Monday, Wednesday, Friday (6:30 PM - 8:30 PM)"
      },
      {
        founder: "Isabella Garcia",
        name: "Barcelona Pickleball Club",
        location: "Barcelona",
        timetable: "Tuesday, Thursday, Saturday (5:30 PM - 7:30 PM)"
      },
      {
        founder: "Daniel Thompson",
        name: "Mumbai Squash Club",
        location: "Mumbai",
        timetable: "Monday, Wednesday, Friday (7:30 PM - 9:30 PM)"
      },
      {
        founder: "Ava Roberts",
        name: "New York Padel Club",
        location: "New York",
        timetable: "Tuesday, Thursday, Saturday (6:00 PM - 8:00 PM)"
      },
      {
        founder: "Henry Davis",
        name: "Berlin Squash Club",
        location: "Berlin",
        timetable: "Monday, Wednesday, Friday (5:00 PM - 7:00 PM)"
      },
      {
        founder: "Mia Anderson",
        name: "Paris Badminton Club",
        location: "Paris",
        timetable: "Tuesday, Thursday, Saturday (7:00 PM - 9:00 PM)"
      }
  ]

  racket_sports_clubs.each do |club|
    Club.create(club)
  end





new_users = [
    {
        email: "john@example.com",
        name: "John Smith",
        encrypted_password: '#$taawktljasktlw4aaglj',
        about: "I love sports and outdoor activities.",
        password: "0123456789"
      },
      {
        email: "emma@example.com",
        name: "Emma Johnson",
        about: "Passionate about fitness and wellness.",
        password: "0123456789"
      },
      {
        email: "david@example.com",
        name: "David Wilson",
        about: "Avid traveler and adventure seeker.",
        password: "0123456789"
      },
      {
        email: "olivia@example.com",
        name: "Olivia Thompson",
        about: "Enthusiastic about photography and art.",
        password: "0123456789"
      },
      {
        email: "liam@example.com",
        name: "Liam Davis",
        about: "Tech enthusiast and software developer.",
        password: "0123456789"
      },
      {
        email: "sophia@example.com",
        name: "Sophia Martinez",
        about: "Nature lover and animal rights advocate.",
        password: "0123456789"
      },
      {
        email: "ethan@example.com",
        name: "Ethan Wilson",
        about: "Passionate about music and playing guitar.",
        password: "0123456789"
      },
      {
        email: "mia@example.com",
        name: "Mia Garcia",
        about: "Foodie and aspiring chef.",
        password: "0123456789"
      },
      {
        email: "alex@example.com",
        name: "Alexander Davis",
        about: "Bookworm and literature enthusiast.",
        password: "0123456789"
      },
      {
        email: "sophie@example.com",
        name: "Sophie Anderson",
        about: "Fashion lover and aspiring fashion designer.",
        password: "0123456789"
      },
      {
        email: "benjamin@example.com",
        name: "Benjamin Johnson",
        about: "Sports enthusiast and basketball player.",
        password: "0123456789"
      },
      {
        email: "emma.roberts@example.com",
        name: "Emma Roberts",
        about: "Yoga lover and certified instructor.",
        password: "0123456789"
      },
      {
        email: "james.wilson@example.com",
        name: "James Wilson",
        about: "Musician and guitarist in a rock band.",
        password: "0123456789"
      },
      {
        email: "olivia.smith@example.com",
        name: "Olivia Smith",
        about: "Nature photographer and adventurer.",
        password: "0123456789"
      },
      {
        email: "william.davis@example.com",
        name: "William Davis",
        about: "Fitness enthusiast and personal trainer.",
        password: "0123456789"
      },
      {
        email: "sophia.jones@example.com",
        name: "Sophia Jones",
        about: "Animal lover and volunteer at a shelter.",
        password: "0123456789"
      },
      {
        email: "ethan.wilson@example.com",
        name: "Ethan Wilson",
        about: "Passionate coder and software engineer.",
        password: "0123456789"
      },
      {
        email: "mia.garcia@example.com",
        name: "Mia Garcia",
        about: "Travel enthusiast and globetrotter.",
        password: "0123456789"
      },
      {
        email: "daniel.thomas@example.com",
        name: "Daniel Thomas",
        about: "Gamer and technology enthusiast.",
        password: "0123456789"
      },
      {
        email: "sophie.baker@example.com",
        name: "Sophie Baker",
        about: "Art lover and aspiring painter.",
        password: "0123456789"
      },
      {
        email: "lucas@example.com",
        name: "Lucas Thompson",
        about: "Soccer player and sports enthusiast.",
        password: "0123456789"
      },
      {
        email: "ava@example.com",
        name: "Ava Wilson",
        about: "Ballet dancer and dance instructor.",
        password: "0123456789"
      },
      {
        email: "noah@example.com",
        name: "Noah Martinez",
        about: "Hiking and outdoor adventure lover.",
        password: "0123456789"
      },
      {
        email: "isabella@example.com",
        name: "Isabella Garcia",
        about: "Fashionista and style influencer.",
        password: "0123456789"
      },
      {
        email: "jackson@example.com",
        name: "Jackson Davis",
        about: "Photography enthusiast and storyteller.",
        password: "0123456789"
      },
      {
        email: "amelia@example.com",
        name: "Amelia Rodriguez",
        about: "Fitness coach and wellness advocate.",
        password: "0123456789"
      },
      {
        email: "sebastian@example.com",
        name: "Sebastian Smith",
        about: "Guitarist and music lover.",
        password: "0123456789"
      },
      {
        email: "harper@example.com",
        name: "Harper Johnson",
        about: "Animal rights activist and vegan.",
        password: "0123456789"
      },
      {
        email: "owen@example.com",
        name: "Owen Wilson",
        about: "Skateboarder and adrenaline junkie.",
        password: "0123456789"
      },
      {
        email: "mia.rodriguez@example.com",
        name: "Mia Rodriguez",
        about: "Food blogger and culinary explorer.",
        password: "0123456789"
      },

     {
    email: "nathan@example.com",
    name: "Nathan Thompson",
    about: "Passionate badminton player aiming for the Olympics.",
    password: "0123456789"
  },
  {
    email: "emma@example.com",
    name: "Emma Johnson",
    about: "Tennis enthusiast and coach at a local club.",
    password: "0123456789"
  },
  {
    email: "daniel@example.com",
    name: "Daniel Wilson",
    about: "Squash player with a knack for competitive matches.",
    password: "0123456789"
  },
  {
    email: "olivia.s@example.com",
    name: "Olivia Smith",
    about: "Table tennis fanatic and local tournament champion.",
    password: "0123456789"
  },
  {
    email: "liam.d@example.com",
    name: "Liam Davis",
    about: "Pickleball lover always up for a friendly match.",
    password: "0123456789"
  },
  {
    email: "sophia.m@example.com",
    name: "Sophia Martinez",
    about: "Racquetball enthusiast with a powerful swing.",
    password: "0123456789"
  },
  {
    email: "ethan.w@example.com",
    name: "Ethan Wilson",
    about: "Passionate padel player exploring different techniques.",
    password: "0123456789"
  },
  {
    email: "mia.g@example.com",
    name: "Mia Garcia",
    about: "Squash player by day, squash coach by night.",
    password: "0123456789"
  },
  {
    email: "alex.d@example.com",
    name: "Alexander Davis",
    about: "Badminton aficionado with a precision for drop shots.",
    password: "0123456789"
  },
  {
    email: "sophie.a@example.com",
    name: "Sophie Anderson",
    about: "Passionate tennis player, striving for a powerful serve.",
    password: "0123456789"
  },
  {
    email: "benjamin.j@example.com",
    name: "Benjamin Johnson",
    about: "Passionate tennis player, specializing in doubles.",
    password: "0123456789"
  },
  {
    email: "emma.robs@example.com",
    name: "Emma Roberts",
    about: "Squash enthusiast, known for precise shot placement.",
    password: "0123456789"
  },
  {
    email: "james.wiln@example.com",
    name: "James Wilson",
    about: "Pickleball player, always looking for a challenging match.",
    password: "0123456789"
  },
  {
    email: "olivia.smit@example.com",
    name: "Olivia Smith",
    about: "Table tennis lover, with a knack for spin shots.",
    password: "0123456789"
  },
  {
    email: "william.dav@example.com",
    name: "William Davis",
    about: "Badminton enthusiast, mastering the art of smashes.",
    password: "0123456789"
  },
  {
    email: "sophia.jon@example.com",
    name: "Sophia Jones",
    about: "Racquetball player, known for powerful forehand shots.",
    password: "0123456789"
  },
  {
    email: "ethan.wils@example.com",
    name: "Ethan Wilson",
    about: "Padel enthusiast, always up for a strategic match.",
    password: "0123456789"
  },
  {
    email: "mia.garc@example.com",
    name: "Mia Garcia",
    about: "Squash player, passionate about mastering the backhand.",
    password: "0123456789"
  },
  {
    email: "daniel.thom@example.com",
    name: "Daniel Thomas",
    about: "Badminton player, honing the art of net play.",
    password: "0123456789"
  },
  {
    email: "sophie.bak@example.com",
    name: "Sophie Baker",
    about: "Tennis player, aiming for a powerful two-handed backhand.",
    password: "0123456789"
  }
  ]

  new_users.each do |user|
    User.create(user)
  end

club_ids = *(1..27) 
user_ids = *(1..49) 
levels = ['Beginner', 'Intermediate', 'Expert']
membership_types = ['PAYG', 'Annual', 'Monthly']

user_ids.each do |user_id|
#   clubs_sample = club_ids.to_a.sample(5) # Select 5 random club IDs for each user
  clubs_sample = club_ids.to_a.sample(15) # Select 5 random club IDs for each user


  clubs_sample.each do |club_id|
    level = levels.sample
    membership_type = membership_types.sample
    membership_expiry = Date.today + rand(1..365).days

    Membership.create({
      club_id: club_id,
      user_id: user_id,
      level: level,
      membership_type: membership_type,
      membership_expiry: membership_expiry
    })
  end
end

# Membership.create({
#           club_id: 1,
#           user_id: 1,
#           admin: true,
#           level: "beginner",
#           membership_type: "annual",
#           membership_expiry: Date.today
#         })