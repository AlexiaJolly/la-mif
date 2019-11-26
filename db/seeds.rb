# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Event.destroy_all
List.destroy_all
Idea.destroy_all

puts 'Creating user...'
marie = User.create!(
  email: 'marie@gmail.com',
  password: '123456789')

paulette = User.create!(
  email: 'paulette@gmail.com',
  password: 'groseille')

thomas = User.create!(
  email: 'thomas.durand@gmail.com',
  password: 'azertyazerty')

puts 'Finished user'

# image = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574171146/canape.jpg')

  puts 'Creating events'

  noel2019 = Event.create!(
    name:         'Noël 2019',
    date:         '23 décembre 2019',
    user:          User.first)

  anniversaireLouise = Event.create!(
    name:         '21 ans de Louise',
    date:         '25 février 2020',
    user:          User.second)

  puts 'Finished events'

  puts 'Creating lists...'

  listenoel2019 = List.create!(
    title:        'Ma liste pour Noël 2019',
    user:          User.first,
    event:         Event.first)

  listedepapi = List.create!(
    title:        'Liste de Papi Jacques',
    user:          User.third,
    event:         Event.first)

  puts 'Creating ideas...'

  Echarpe = Idea.create!(
    title:       "echarpe rouge",
    description: "grande echarpe en laine rouge",
    url:         " ",
    list:       listenoel2019,
    user:        marie,
    chosen_by:   paulette,
    status:      true)

   Velo = Idea.create!(
    title:       "velo de ville",
    description: "velo de ville cadre taille 54",
    url:         " ",
    list:       listenoel2019,
    user:        marie,
    chosen_by:   thomas,
    status:     :true)

   Gants = Idea.create!(
    title:       "Gants en cashemire",
    description: "Gants en cashemire couleur noire",
    url:         " ",
    user:        marie,
    list:        listenoel2019,
    chosen_by:   paulette,
    status:     :true)

   Casque = Idea.create!(
    title:       "Casque de musique",
    description: "Casque de musique blutooth",
    url:         " ",
    user:        marie,
    list:        listenoel2019,
    chosen_by:   paulette,
    status:     :true)

   Jeu = Idea.create!(
    title:       "Jeu video",
    description: "Jeu video pour la PS4: Blacksad ou Citadel",
    url:         " ",
    user:        marie,
    list:       listenoel2019,
    chosen_by:   paulette,
    status:     :true)

   Goncourt = Idea.create!(
    title:       "Livre",
    description: "Roman",
    url:         " ",
    user:        marie,
    list:        listedepapi,
    chosen_by:   thomas,
    status:     :true)

puts 'Finished lists...'

puts 'OK'

