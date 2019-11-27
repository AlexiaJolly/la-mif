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

florence = User.create!(
  email: 'florance.durand@gmail.com',
  password: 'ertyuiop')



puts 'Finished user'

# image = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574171146/canape.jpg')

  puts 'Creating events'

  noel2019 = Event.create!(
    name:         'Noël 2019',
    date:           Date.today,
    user:          User.first)

  anniversaireLouise = Event.create!(
    name:         '21 ans de Louise',
    date:           Date.today,
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

  photo_1 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574787785/La-mif/echarpe_grise_kbdiqu.jpg")
  echarpe = Idea.create!(
    title:       "echarpe grise",
    description: "grande echarpe en laine gris clair",
    url:         " ",
    list:       listenoel2019,
    user:        marie,
    chosen_by:   paulette,
    status:      true)
  echarpe.save
  echarpe.photo.attach(io: photo_1, filename: 'echarpe_grise.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
   photo_2 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786878/La-mif/velo_ville_tphbip.jpg")
   velo = Idea.create!(
    title:       "velo de ville",
    description: "velo de ville cadre taille 54",
    url:         " ",
    list:       listenoel2019,
    user:        marie,
    chosen_by:   thomas,
    status:     :true)
   velo.photo.attach(io: photo_2, filename: 'velo_ville_tphbip.jpg', content_type: 'image/jpg')


   photo_3 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786659/La-mif/gants_cashemire_hmxwb2.jpg")
   gants = Idea.create!(
    title:       "Gants en cashemire",
    description: "Gants en cashemire couleur bleue",
    url:         " ",
    user:        marie,
    list:        listenoel2019,
    chosen_by:   paulette,
    status:     :true)
   gants.photo.attach(io: photo_3, filename: 'gants_cashemire_hmxwb2.jpg', content_type: 'image/jpg')

   photo_4 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786555/La-mif/casque_audio_qpjfyp.jpg")
   casque = Idea.create!(
    title:       "Casque de musique",
    description: "Casque de musique blutooth",
    url:         " ",
    user:        marie,
    list:        listenoel2019,
    chosen_by:   paulette,
    status:     :true)
   casque.photo.attach(io: photo_4, filename: 'casque_audio_qpjfyp.jpg', content_type: 'image/jpg')


   photo_5 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786932/La-mif/jeu_video_gtcduy.jpg")
   jeu = Idea.create!(
    title:       "Jeu video",
    description: "Jeu video pour la PS4: Blacksad ou Citadel",
    url:         " ",
    user:        marie,
    list:       listenoel2019,
    chosen_by:   paulette,
    status:     :true)
   jeu.photo.attach(io: photo_5, filename: 'jeu_video_gtcduy.jpg', content_type: 'image/jpg')


   photo_6 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574787389/La-mif/livre_renaudot_dwutqp.png")
   renaudot = Idea.create!(
    title:       "Livre",
    description: "Prix renaudot 2019",
    url:         " ",
    user:        marie,
    list:        listedepapi,
    chosen_by:   thomas,
    status:     :true)
   renaudot.photo.attach(io: photo_6, filename: 'livre_renaudot_dwutqp.jpg', content_type: 'image/jpg')

puts 'Finished lists...'

puts 'OK'

