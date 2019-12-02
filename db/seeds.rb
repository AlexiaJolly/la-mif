# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

List.destroy_all
Event.destroy_all
Idea.destroy_all
User.destroy_all


puts 'Creating user...'
photo_john = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574872880/_JBU3064-1_John_Schults_v2_rsouhb.jpg" )
john = User.create!(
  email: 'john@gmail.com',
  password: '123456789')
john.photo.attach(io: photo_john, filename: '_JBU3064-1_John_Schults_v2_rsouhb.jpg', content_type: 'image/jpg')
john.save

photo_marie = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574873552/_JBU1110-1_Paula_Beltran_2_uznwhi.jpg")
marie = User.create!(
  email: 'marie@gmail.com',
  password: 'groseille')
marie.photo.attach(io: photo_marie, filename: '_JBU1110-1_Paula_Beltran_2_uznwhi.jpg', content_type: 'image/jpg')
marie.save

photo_thomas = URI.open( "https://res.cloudinary.com/alexiajjjj/image/upload/v1574872874/_JBU2368-1_Pierre_Nicoletti_v2_xobvkz.jpg")
thomas = User.create!(
  email: 'thomas.durand@gmail.com',
  password: 'azertyazerty')
thomas.photo.attach(io: photo_thomas, filename: '_JBU2368-1_Pierre_Nicoletti_v2_xobvkz.jpg', content_type: 'image/jpg')
thomas.save


photo_bernard = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574937236/_JBU1933-1_Bernard_Le_Moullec_v2_fgbzz5.jpg" )
bernard = User.create!(
  email: 'bernard@gmail.com',
  password: '123456789')
bernard.photo.attach(io: photo_bernard, filename: '_JBU1933-1_Bernard_Le_Moullec_v2_fgbzz5.jpg', content_type: 'image/jpg')
bernard.save


photo_muriel = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574937236/_JBU1968-1_Muriel_Oger_v2_vnm1fx.jpg")
muriel = User.create!(
  email: 'muriel@gmail.com',
  password: 'vanille')
muriel.photo.attach(io: photo_muriel, filename: '_JBU1968-1_Muriel_Oger_v2_vnm1fx.jpg', content_type: 'image/jpg')
muriel.save

photo_paul = URI.open( "https://res.cloudinary.com/alexiajjjj/image/upload/v1574937236/_JBU2216-1_Paul_Lahana_v2_ns4bzl.jpg")
paul = User.create!(
  email: 'paul@gmail.com',
  password: 'qwerty')
paul.photo.attach(io: photo_paul, filename: '_JBU2216-1_Paul_Lahana_v2_ns4bzl.jpg', content_type: 'image/jpg')
paul.save


puts 'Finished user'

# image = URI.open('https://res.cloudinary.com/dwu8ckzto/image/upload/v1574171146/canape.jpg')

  puts 'Creating events'

  noel2019 = Event.create!(
    name:         'Noël 2019',
    date:           Date.today,
    user:          User.first)


  puts 'Finished events'

  puts 'Creating lists...'

  listejohn = List.create!(
    title:        'Ma liste pour Noël 2019',
    user:          john,
    event:         Event.first)

  listemarie = List.create!(
    title:        'Ma liste pour Noël 2019',
    user:          marie,
    event:         Event.first)

  listedethomas = List.create!(
    title:        'Liste de thomas',
    user:          thomas,
    event:         Event.first)

  listedeBernard = List.create!(
    title:        'Ma liste de Noël',
    user:          bernard,
    event:         Event.first)

  listemuriel = List.create!(
    title:        'Ma liste pour les fetes de Noël',
    user:          muriel,
    event:         Event.first)

  listedepaul = List.create!(
    title:        'Xmas 2019',
    user:          paul,
    event:         Event.first)


    puts 'Creating ideas...'

  photo_1 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574787785/La-mif/echarpe_grise_kbdiqu.jpg")
  echarpe = Idea.create!(
    title:       "echarpe grise",
    description: "grande echarpe en laine gris clair",
    url:         " ",
    list:        listemuriel,
    user:        muriel,
    chosen_by:   john,
    status:      :false)
  echarpe.photo.attach(io: photo_1, filename: 'echarpe_grise.jpg', content_type: 'image/jpg')

# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
   photo_2 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786878/La-mif/velo_ville_tphbip.jpg")
   velo = Idea.create!(
    title:       "velo de ville",
    description: "velo de ville cadre taille 54",
    url:         " ",
    list:       listedethomas,
    user:        thomas,
    chosen_by:   thomas,
    status:     :true)
   velo.photo.attach(io: photo_2, filename: 'velo_ville_tphbip.jpg', content_type: 'image/jpg')


   photo_3 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786659/La-mif/gants_cashemire_hmxwb2.jpg")
   gants = Idea.create!(
    title:       "gants en cashemire",
    description: "gants en cashemire couleur bleue",
    url:         " ",
    user:        marie,
    list:        listemarie,
    chosen_by:   john,
    status:     :true)
   gants.photo.attach(io: photo_3, filename: 'gants_cashemire_hmxwb2.jpg', content_type: 'image/jpg')

   photo_4 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786555/La-mif/casque_audio_qpjfyp.jpg")
   casque = Idea.create!(
    title:       "casque de musique",
    description: "casque de musique blutooth",
    url:         " ",
    user:        john,
    list:        listejohn,
    chosen_by:   john,
    status:     :true)
   casque.photo.attach(io: photo_4, filename: 'casque_audio_qpjfyp.jpg', content_type: 'image/jpg')


   photo_5 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786932/La-mif/jeu_video_gtcduy.jpg")
   jeu = Idea.create!(
    title:       "Jeu video",
    description: "Jeu video pour la PS4: Blacksad ou Citadel",
    url:         " ",
    user:        bernard,
    list:        listedeBernard,
    chosen_by:   john,
    status:     :true)
   jeu.photo.attach(io: photo_5, filename: 'jeu_video_gtcduy.jpg', content_type: 'image/jpg')


   photo_6 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574787389/La-mif/livre_renaudot_dwutqp.png")
   renaudot = Idea.create!(
    title:       "Livre",
    description: "Prix renaudot 2019",
    url:         " ",
    user:        marie,
    list:        listemarie,
    chosen_by:   thomas,
    status:     :true)
   renaudot.photo.attach(io: photo_6, filename: 'livre_renaudot_dwutqp.jpg', content_type: 'image/jpg')

  photo_7 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574947576/320_lpnmql.jpg")
  escape = Idea.create!(
    title:       "Escape Game",
    description: "Livre",
    url:         " ",
    list:       listedeBernard,
    user:        bernard,
    chosen_by:   muriel,
    status:      :true)
  escape.photo.attach(io: photo_7, filename: '320_lpnmql.jpg', content_type: 'image/jpg')

  # Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
  photo_8 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/15204880_P1_ma2tar.jpg")
  orloge = Idea.create!(
    title:       "Horloge de Meditation",
    description: "Horloge qui facilite la meditation",
    url:         " ",
    list:        listemuriel,
    user:        muriel,
    chosen_by:   bernard,
    status:     :true)
  orloge.photo.attach(io: photo_8, filename: '15204880_P1_ma2tar.jpg', content_type: 'image/jpg')


  photo_9 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/329_zymisw.jpg")
  crayons = Idea.create!(
    title:       "Crayons en Cire",
    description: "Crayons de toutes les couleurs en cire",
    url:         " ",
    user:        thomas,
    list:        listedethomas,
    chosen_by:   paul,
    status:     :true)
  crayons.photo.attach(io: photo_9, filename: '329_zymisw.jpg', content_type: 'image/jpg')

  photo_10 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/330_kudo5e.jpg")
  chosette = Idea.create!(
    title:       "Chausettes",
    description: "Chausettes bleu en laine",
    url:         " ",
    user:        bernard,
    list:        listedeBernard,
    chosen_by:   muriel,
    status:     :true)
  chosette.photo.attach(io: photo_10, filename: '330_kudo5e.jpg', content_type: 'image/jpg')


  photo_11 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/328_kkfea8.jpg")
  boite = Idea.create!(
    title:       "Boite de couteaux",
    description: "Boite de couteaux à steak",
    url:         " ",
    user:       bernard,
    list:       listedeBernard,
    chosen_by:   thomas,
    status:     :true)
  boite.photo.attach(io: photo_11, filename: '328_kkfea8.jpg', content_type: 'image/jpg')


  photo_12 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575037550/set_jardinage_kkxv8r.jpg")
  cie = Idea.create!(
    title:       "Kit jardinage",
    description: "pour avoir la main verte",
    url:         " ",
    user:        paul,
    list:        listedepaul,
    chosen_by:   marie,
    status:     :true)
  cie.photo.attach(io: photo_12, filename: 'set_jardinage_kkxv8r.jpg', content_type: 'image/jpg')

  photo_13 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574947560/320-2_zk7swd.jpg")
  telescope = Idea.create!(
    title:       "Telescope",
    description: "Mini Telescope pour voir les étoiles",
    url:         " ",
    list:        listedepaul,
    user:        paul,
    chosen_by:   john,
    status:      :true)
  telescope.photo.attach(io: photo_13, filename: '320-2_zk7swd.jpg', content_type: 'image/jpg')

  # Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
  photo_14 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/324_d4yrhe.jpg")
  lego = Idea.create!(
    title:       "Lego Robots",
    description: "Petit kit pour créer des robots",
    url:         " ",
    list:        listedethomas,
    user:        thomas,
    chosen_by:   bernard,
    status:     :true)
  lego.photo.attach(io: photo_14, filename: '324_d4yrhe.jpg', content_type: 'image/jpg')


  photo_15 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/321_r1ydn9.jpg")
  monde = Idea.create!(
    title:       "Le Monde",
    description: "Jouets le monde",
    url:         " ",
    user:        john,
    list:        listejohn,
    chosen_by:   marie,
    status:     :true)
  monde.photo.attach(io: photo_15, filename: '321_r1ydn9.jpg', content_type: 'image/jpg')

  photo_16 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575037439/jardiniere_qvihmt.jpg")
  livres = Idea.create!(
    title:       "Jardiniere d'intérieur",
    description: "pour le salon",
    url:         " ",
    user:        paul,
    list:        listedepaul,
    chosen_by:   john,
    status:     :true)
  livres.photo.attach(io: photo_16, filename: 'jardiniere_qvihmt.jpg', content_type: 'image/jpg')


  photo_17 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574948173/319_obyrja.jpg")
  nuit = Idea.create!(
    title:       "Horloge",
    description: "Horloge fluorescente",
    url:         " ",
    user:        marie,
    list:       listemarie,
    chosen_by:   thomas,
    status:     :true)
  nuit.photo.attach(io: photo_17, filename: '319_obyrja.jpg', content_type: 'image/jpg')


  photo_18 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575037303/pret_a_pousser_ax46w7.jpg")
  hibou = Idea.create!(
    title:       "Potager d'intérieur",
    description: "menthe, basilic, origan",
    url:         " ",
    user:        paul,
    list:        listedepaul,
    chosen_by:   paul,
    status:     :true)
  hibou.photo.attach(io: photo_18, filename: 'pret_a_pousser_ax46w7.jpg', content_type: 'image/jpg')

  photo_19 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575038134/raquette_whz6se.jpg")
  gants = Idea.create!(
    title:       "Raquette de tenis",
    description: "pour jouer comme Federer",
    url:         " ",
    user:        thomas,
    list:        listedethomas,
    chosen_by:   thomas,
    status:     :true)
  gants.photo.attach(io: photo_19, filename: 'gants_cashemire_hmxwb2.jpg', content_type: 'image/jpg')

puts 'Finished lists...'

puts 'OK'

