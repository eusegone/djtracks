
Track.delete_all

Track.create!(name: "Acceptable in the 80's" )

User.delete_all

User.create!(name:'Tony', email: 'tony@tony.com', password: 'password', role:'admin')
User.create!(name:'Luke', password: 'password',email: 'tony2@tony.com', role:'user')
User.create!(name:'Nina', password: 'password', email: 'tony3@tony.com',role:'artist')