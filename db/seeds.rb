# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples·#
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
  password: '123456789',
  name: 'John')
john.photo.attach(io: photo_john, filename: '_JBU3064-1_John_Schults_v2_rsouhb.jpg', content_type: 'image/jpg')
john.save


photo_pierre = URI.open( "https://res.cloudinary.com/alexiajjjj/image/upload/v1574872874/_JBU2368-1_Pierre_Nicoletti_v2_xobvkz.jpg")
pierre = User.create!(
  email: 'thomas.durand@gmail.com',
  password: 'azertyazerty',
  name: 'Pierre')
pierre.photo.attach(io: photo_pierre, filename: '_JBU2368-1_Pierre_Nicoletti_v2_xobvkz.jpg', content_type: 'image/jpg')
pierre.save


photo_bernard = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574937236/_JBU1933-1_Bernard_Le_Moullec_v2_fgbzz5.jpg" )
bernard = User.create!(
  email: 'bernard@gmail.com',
  password: '123456789',
  name: 'Bernard')
bernard.photo.attach(io: photo_bernard, filename: '_JBU1933-1_Bernard_Le_Moullec_v2_fgbzz5.jpg', content_type: 'image/jpg')
bernard.save


photo_muriel = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574937236/_JBU1968-1_Muriel_Oger_v2_vnm1fx.jpg")
muriel = User.create!(
  email: 'muriel@gmail.com',
  password: 'vanille',
  name: 'Muriel')
muriel.photo.attach(io: photo_muriel, filename: '_JBU1968-1_Muriel_Oger_v2_vnm1fx.jpg', content_type: 'image/jpg')
muriel.save

photo_paul = URI.open( "https://res.cloudinary.com/alexiajjjj/image/upload/v1574937236/_JBU2216-1_Paul_Lahana_v2_ns4bzl.jpg")
paul = User.create!(
  email: 'paul@gmail.com',
  password: 'qwerty',
  name: 'Paul')
paul.photo.attach(io: photo_paul, filename: '_JBU2216-1_Paul_Lahana_v2_ns4bzl.jpg', content_type: 'image/jpg')
paul.save

photo_raph = URI.open('https://res.cloudinary.com/alexiajjjj/image/upload/v1575381421/raph_cowfga.jpg')
raph = User.create!(
  email: 'raphaele@gmail.com',
  password: 'demoday',
  name: 'Raphaële')
raph.photo.attach(io: photo_raph, filename: 'raph_cowfga.jpg', content_type: 'image/jpg')
raph.save


puts 'Finished user'


  puts 'Creating events'

  noel2019 = Event.create!(
    name:         'Noël 2019',
    date:           Date.today,
    user:          User.first)



   mariage2020 = Event.create!(
    name:         'Wedding Raph',
    date:           Date.today,
    user:          raph)


  puts 'Finished events'

  puts 'Creating lists...'

  listejohn = List.create!(
    title:        'Ma liste pour Noël 2019',
    user:          john,
    event:         Event.first)

  listedepierre = List.create!(
    title:        'List Pierre',
    user:          pierre,
    event:         Event.first)

  listedeBernard = List.create!(
    title:        'Ma xmas list youpi',
    user:          bernard,
    event:         Event.first)

  listemuriel = List.create!(
    title:        'Ma xmas whish',
    user:          muriel,
    event:         Event.first)

  listedepaul = List.create!(
    title:        'Xmas 2019 Paul',
    user:          paul,
    event:         Event.first)

  listederaph = List.create!(
    title:        'I love Xmas 2019',
    user:          raph,
    event:         noel2019)

   listeannivB = List.create!(
    title:        'Mon bday',
    user:          bernard,
    event:         Event.second)

    weddingraph = List.create!(
    title:        'Getting married',
    user:          raph,
    event:         mariage2020)


    puts 'Creating ideas...'

  photo_1 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574787785/La-mif/echarpe_grise_kbdiqu.jpg")
  echarpe = Idea.create!(
    title:       "Echarpe grise",
    description: "Grande echarpe en laine gris clair",
    url:         "https://www.asos.fr/asos-design/asos-design-longue-echarpe-tissee-ultra-douce-a-franges-gris/prd/11826276?affid=24693&channelref=product+search&mk=abc&ppcadref=6931128475%7C79807354236%7Cpla-294682000766&cpn=6931128475&_cclid=Google_EAIaIQobChMIs8TZxvCb5gIVT8DeCh0WMQNAEAQYAyABEgKTTPD_BwE&gclid=EAIaIQobChMIs8TZxvCb5gIVT8DeCh0WMQNAEAQYAyABEgKTTPD_BwE",
    list:        listemuriel,
    user:        muriel,
    chosen_by:   raph,
    status:      :false)
  echarpe.photo.attach(io: photo_1, filename: 'echarpe_grise.jpg', content_type: 'image/jpg')

  photo_annex = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1575283067/La-mif/chevalet_bernard_risdx9.jpg")
  autre = Idea.create!(
    title:       "Echarpe grise",
    description: "Grande écharpe en laine gris clair",
    url:         "https://www.asos.fr/asos-design/asos-design-longue-echarpe-tissee-ultra-douce-a-franges-gris/prd/11826276?affid=24693&channelref=product+search&mk=abc&ppcadref=6931128475%7C79807354236%7Cpla-294682000766&cpn=6931128475&_cclid=Google_EAIaIQobChMIs8TZxvCb5gIVT8DeCh0WMQNAEAQYAyABEgKTTPD_BwE&gclid=EAIaIQobChMIs8TZxvCb5gIVT8DeCh0WMQNAEAQYAyABEgKTTPD_BwE",
    list:        listeannivB,
    user:        bernard,
    chosen_by:   john,
    status:      true)
  autre.photo.attach(io: photo_annex, filename: 'chevalet_bernard_risdx9.jpg.jpg', content_type: 'image/jpg')



# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
   photo_2 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786878/La-mif/velo_ville_tphbip.jpg")
   velo = Idea.create!(
    title:       "Vélo de ville",
    description: "Vélo de ville cadre taille 54",
    url:         "https://www.decathlon.fr/p/velo-de-ville-elops-520-cadre-bas-mint/_/R-p-145734?mc=8500066&gclid=EAIaIQobChMIve_e1_Cb5gIVTflRCh0bjg_hEAQYAiABEgLG0fD_BwE",
    list:       listedepierre,
    user:        pierre,
    chosen_by:   raph,
    status:     :true)
   velo.photo.attach(io: photo_2, filename: 'velo_ville_tphbip.jpg', content_type: 'image/jpg')


   photo_3 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786659/La-mif/gants_cashemire_hmxwb2.jpg")
   gants = Idea.create!(
    title:       "Gants en cachemire",
    description: "Gants pour l'hiver de couleur bleue",
    url:         "https://www.uniqlo.com/fr/fr/product/gants-en-cachemire-418379COL63SIZ999000.html?LGWCODE=418379COL63SIZ999000;110103;6475&utm_source=Google&utm_term=&utm_medium=cpc&utm_campaign=shopping&gclid=EAIaIQobChMIo4n44_Cb5gIVUtHeCh2g-gCaEAQYASABEgJaZPD_BwE",
    user:        bernard,
    list:        listeannivB,
    chosen_by:   john,
    status:     :true)
   gants.photo.attach(io: photo_3, filename: 'gants_cashemire_hmxwb2.jpg', content_type: 'image/jpg')

   photo_4 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786555/La-mif/casque_audio_qpjfyp.jpg")
   casque = Idea.create!(
    title:       "Casque de musique",
    description: "Casque de musique bluetooth",
    url:         "https://www.cultura.com/casque-major-iii-bt-noir-7340055352369.html",
    user:        john,
    list:        listejohn,
    chosen_by:   john,
    status:     :true)
   casque.photo.attach(io: photo_4, filename: 'casque_audio_qpjfyp.jpg', content_type: 'image/jpg')


   photo_5 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574786932/La-mif/jeu_video_gtcduy.jpg")
   jeu = Idea.create!(
    title:       "Jeu video",
    description: "Pour la PS4 Blacksad ou Citadel",
    url:         "https://jeux-video.fnac.com/a13495825/Blacksad-Under-the-Skin-Edition-Limitee-PS4-Jeu-PlayStation-4?esl-k=sem-google%7cng%7cc231831805437%7cm%7ckpla293946777986%7cp%7ct%7cdc%7ca49351713035%7cg979193495&gclid=EAIaIQobChMIk6zDlfGb5gIVQ0PTCh2zWgFIEAkYASABEgKB3vD_BwE&gclsrc=aw.ds&Origin=SEA_GOOGLE_PLA_LOGIC",
    user:        bernard,
    list:        listedeBernard,
    chosen_by:   john,
    status:     :true)
   jeu.photo.attach(io: photo_5, filename: 'jeu_video_gtcduy.jpg', content_type: 'image/jpg')


   photo_6 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574787389/La-mif/livre_renaudot_dwutqp.png")
   renaudot = Idea.create!(
    title:       "Livre",
    description: "Prix Renaudot 2019",
    url:         "https://www.ebay.fr/i/202834463473?chn=ps&norover=1&mkevt=1&mkrid=709-134431-41854-0&mkcid=2&itemid=202834463473&targetid=489619546266&device=c&mktype=pla&googleloc=9056135&poi=&campaignid=1669940627&mkgroupid=64137313349&rlsatarget=pla-489619546266&abcId=1139516&merchantid=116393636&gclid=EAIaIQobChMIk7Woo_Gb5gIVDUPTCh36bw8lEAkYAyABEgKwbfD_BwE",
    user:        bernard,
    list:        listeannivB,
    chosen_by:   pierre,
    status:     :true)
   renaudot.photo.attach(io: photo_6, filename: 'livre_renaudot_dwutqp.jpg', content_type: 'image/jpg')

  photo_7 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574947576/320_lpnmql.jpg")
  escape = Idea.create!(
    title:       "Escape Game",
    description: "Livre sur les meilleurs escape game",
    url:         "https://www.philibertnet.com/fr/livre-jeu/65806-escape-game-saurez-vous-vous-evader-9782317015236.html?gclid=EAIaIQobChMI0uX9uvGb5gIVWoXVCh0VMwdqEAQYASABEgLVGPD_BwE",
    list:       listedeBernard,
    user:        bernard,
    chosen_by:   raph,
    status:      :true)
  escape.photo.attach(io: photo_7, filename: '320_lpnmql.jpg', content_type: 'image/jpg')

  # Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
  photo_8 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/15204880_P1_ma2tar.jpg")
  orloge = Idea.create!(
    title:       "Horloge de méditation",
    description: "Horloge qui facilite la méditation",
    url:         "https://www.redbubble.com/fr/people/wishtopia/works/27171586-yoga-meditation-chakra?frame_color=black&hand_color=white&p=clock&utm_source=google&utm_medium=cpc&utm_campaign=g.pla+notset&country_code=FR&gclid=EAIaIQobChMIx6ChnPKb5gIVBJ7VCh1WvgbDEAQYBSABEgJOHfD_BwE",
    list:        listemuriel,
    user:        muriel,
    chosen_by:   raph,
    status:     :true)
  orloge.photo.attach(io: photo_8, filename: '15204880_P1_ma2tar.jpg', content_type: 'image/jpg')


  photo_9 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/329_zymisw.jpg")
  crayons = Idea.create!(
    title:       "Crayons en Cire",
    description: "Crayons de toutes les couleurs en cire",
    url:         "https://www.bakerross.fr/gros-crayons?&gclid=EAIaIQobChMI_dm7i_Kb5gIVk_hRCh0hKwijEAkYASABEgLL6_D_BwE",
    user:        pierre,
    list:        listedepierre,
    chosen_by:   paul,
    status:     :true)
  crayons.photo.attach(io: photo_9, filename: '329_zymisw.jpg', content_type: 'image/jpg')

  photo_10 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/330_kudo5e.jpg")
  chosette = Idea.create!(
    title:       "Chaussettes",
    description: "Chaussettes bleues en laine",
    url:         "https://www.ctshirts.com/fr/lot-de-3%C2%A0paires-de-chaussettes-bleu-marine-en-laine-majoritaire/ACK0262NAV.html?utm_term=ACK0262NAV&gclid=EAIaIQobChMI74jI_vGb5gIVCMreCh2TJABKEAQYASABEgI1P_D_BwE&marketing=true&utm_campaign=FR-Shopping-Smart&utm_medium=cpc&marketingCode=frbg34&utm_source=google",
    user:        bernard,
    list:        listedeBernard,
    chosen_by:   muriel,
    status:     :true)
  chosette.photo.attach(io: photo_10, filename: '330_kudo5e.jpg', content_type: 'image/jpg')


  photo_11 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/328_kkfea8.jpg")
  boite = Idea.create!(
    title:       "Boite de couteaux",
    description: "Superbes couteaux à viande",
    url:         "https://www.mathon.fr/cat-couteaux/couteaux-a-steaks-viandes/Jean-Dubost-Coffret-6-couteaux-Laguiole-Stand-Up-bois-naturel-PID471091.aspx?esl-k=Google|nu|c287850046021|m|k486736414746|p|t|dc|a59760087482|g1507021088&gclid=EAIaIQobChMI5rGI9fGb5gIVRPlRCh0GMgJTEAQYASABEgLMyvD_BwE",
    user:       bernard,
    list:       listedeBernard,
    chosen_by:   pierre,
    status:     :true)
  boite.photo.attach(io: photo_11, filename: '328_kkfea8.jpg', content_type: 'image/jpg')


  photo_12 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575037550/set_jardinage_kkxv8r.jpg")
  cie = Idea.create!(
    title:       "Kit jardinage",
    description: "Pour avoir la main verte enfin",
    url:         "https://www.natureetdecouvertes.com/jardin/jardinage/outillage-accessoires-jardinage/set-outils-de-jardinage-91109860?gclsrc=aw.ds&&gclid=EAIaIQobChMI56L_5vGb5gIVhvdRCh154geOEAQYASABEgK0l_D_BwE&gclsrc=aw.ds",
    user:        paul,
    list:        listedepaul,
    chosen_by:   muriel,
    status:     :true)
  cie.photo.attach(io: photo_12, filename: 'set_jardinage_kkxv8r.jpg', content_type: 'image/jpg')

  photo_13 = URI.open("https://res.cloudinary.com/alexiajjjj/image/upload/v1574947560/320-2_zk7swd.jpg")
  telescope = Idea.create!(
    title:       "Téléscope",
    description: "Mini téléscope pour voir les étoiles",
    url:         "https://www.natureetdecouvertes.com/optique-astronomie/telescopes/telescopes-lunettes/telescope-dobson-sky-watcher-76mm-91745320?gclsrc=aw.ds&&gclid=EAIaIQobChMIiPv92PGb5gIVWoXVCh0VMwdqEAQYASABEgKxLfD_BwE&gclsrc=aw.ds",
    list:        listedepaul,
    user:        paul,
    chosen_by:   john,
    status:      :true)
  telescope.photo.attach(io: photo_13, filename: '320-2_zk7swd.jpg', content_type: 'image/jpg')

  photo_14 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/324_d4yrhe.jpg")
  lego = Idea.create!(
    title:       "Lego Robots",
    description: "Petit kit pour créer des robots",
    url:         "https://fr.zavvi.com/toys-lego/lego-mindstorms-ev3-31313/10757770.html?affil=thggpsad&switchcurrency=EUR&shippingcountry=FR&shoppingpid=10_pc_off_lego&&thg_ppc_campaign=71700000014500802&gclid=EAIaIQobChMIyfnvzfGb5gIV15rVCh0m_QQiEAQYBCABEgLJhvD_BwE&gclsrc=aw.ds",
    list:        listedepierre,
    user:        pierre,
    chosen_by:   bernard,
    status:     :true)
  lego.photo.attach(io: photo_14, filename: '324_d4yrhe.jpg', content_type: 'image/jpg')


  photo_15 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574938512/321_r1ydn9.jpg")
  monde = Idea.create!(
    title:       "Coffret Le Monde",
    description: "A la découverte du monde",
    url:         "https://www.oxybul.com/jeux-pour-apprendre/histoire-et-geographie/geographie/coffret-a-la-decouverte-du-monde/produit/337892?LGWCODE=337892;46203;5537&&cmpid=SN-GOO-ShoppingCSS-tous-produits-prospection&gclid=EAIaIQobChMIotz3qfCb5gIVDkPTCh1xjw5GEAQYASABEgIv0PD_BwE&gclsrc=aw.ds",
    user:        john,
    list:        listejohn,
    chosen_by:   raph,
    status:     :true)
  monde.photo.attach(io: photo_15, filename: '321_r1ydn9.jpg', content_type: 'image/jpg')

  photo_16 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575037439/jardiniere_qvihmt.jpg")
  livres = Idea.create!(
    title:       "Jardiniere d'intérieur",
    description: "Pratique pour le salon",
    url:         "https://www.conranshop.fr/potager-d-interieur-smart-garden-3.html?pdg=pla-866862863884:kwd-866862863884:cmp-759514009:adg-86976266081:crv-396197267643:pid-1108170:dev-c&gclid=EAIaIQobChMIuKDJmPCb5gIVS1XTCh2Klwn2EAQYBCABEgILkfD_BwE",
    user:        paul,
    list:        listedepaul,
    chosen_by:   john,
    status:     :true)
  livres.photo.attach(io: photo_16, filename: 'jardiniere_qvihmt.jpg', content_type: 'image/jpg')


  photo_17 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1574948173/319_obyrja.jpg")
  nuit = Idea.create!(
    title:       "Horloge",
    description: "Horloge fluorescente",
    url:         "https://www.manomano.fr/horloge-4549?model_id=13056830&g=1&referer_id=687129&gclid=EAIaIQobChMIoZfnjPCb5gIV15rVCh0m_QQiEAkYBCABEgI4QPD_BwE",
    user:        bernard,
    list:       listeannivB,
    chosen_by:   pierre,
    status:     :true)
  nuit.photo.attach(io: photo_17, filename: '319_obyrja.jpg', content_type: 'image/jpg')


  photo_18 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575037303/pret_a_pousser_ax46w7.jpg")
  hibou = Idea.create!(
    title:       "Potager d'intérieur",
    description: "Menthe, basilic, origan à planter",
    url:         "https://www.natureetdecouvertes.com/thes-epicerie/a-faire-soi-meme/a-faire-pousser/jardin-potager-d-interieur-lilo-4-61168140?gclsrc=aw.ds&&gclid=EAIaIQobChMInIrd8O-b5gIVB57VCh3WXQwOEAQYASABEgLrlvD_BwE&gclsrc=aw.ds",
    user:        paul,
    list:        listedepaul,
    # chosen_by:   paul,
    status:     :true)
  hibou.photo.attach(io: photo_18, filename: 'pret_a_pousser_ax46w7.jpg', content_type: 'image/jpg')

  photo_19 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575038134/raquette_whz6se.jpg")
  raquette = Idea.create!(
    title:       "Raquette de tennis",
    description: "Pour jouer comme Federer",
    url:         "https://www.tennis.fr/raquette-wilson-federer-pro-105-wrt56610u.html?gclid=EAIaIQobChMI1Prf3--b5gIVCbLtCh3cCgzUEAQYAiABEgKVH_D_BwE&ef_id=EAIaIQobChMI1Prf3--b5gIVCbLtCh3cCgzUEAQYAiABEgKVH_D_BwE:G:s",
    user:        pierre,
    list:        listedepierre,
    chosen_by:   paul,
    status:     :true)
  raquette.photo.attach(io: photo_19, filename: 'raquette_whz6se.jpg', content_type: 'image/jpg')

  photo_20 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575384139/hamac_pwshn4.jpg")
  gants = Idea.create!(
    title:       "Hamac",
    description: "Qui ne rêve pas d'un hamac d'intérieur ?",
    url:         "http://www.google.fr/shopping/product/12850033768401357731?lsf=seller:7541524,store:3985223037558695264,s:h,lsfqd:0&prds=oid:8073605733489989815&q=si%C3%A8ges+d%27ext%C3%A9rieur+et+bains+de+soleil&hl=fr&ei=FpbnXej-BKOYlwTdoprABQ&lsft=gclid:EAIaIQobChMI4oeSz--b5gIVAVPTCh2HZA5ZEAkYByABEgKxZvD_BwE,gclsrc:aw.ds",
    user:        raph,
    list:        listederaph,
    chosen_by:   pierre,
    status:     :true)
  gants.photo.attach(io: photo_20, filename: 'hamac_pwshn4.jpg', content_type: 'image/jpg')

  photo_21 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575384162/chausson_ohpqca.jpg")
  chausson = Idea.create!(
    title:       "Chaussons moumoute",
    description: "Pour profiter de l'hiver au chaud et confortablement",
    url:         "https://www.uniqlo.com/fr/fr/product/chaussons-dinterieur-polaire-frisee-femme-418428COL31SMA004000.html?LGWCODE=418428COL31SMA004000;110103;6475&utm_source=Google&utm_term=&utm_medium=cpc&utm_campaign=shopping&gclid=EAIaIQobChMIwJvhu--b5gIVUdTeCh1FNQFREAQYAyABEgIqsPD_BwE",
    user:        raph,
    list:        listederaph,
    chosen_by:   john,
    status:     :true)
  chausson.photo.attach(io: photo_21, filename: 'chausson_ohpqca.jpg', content_type: 'image/jpg')


  photo_23 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575385575/poncho_ygbqqj.jpg")
  poncho = Idea.create!(
    title:       "Poncho",
    description: "Vous enveloppe de douceur et de chaleur pour affronter les frimas de l'hiver",
    url:         "https://www.linvosges.com/fr/les-vetements-d-interieur/cache-coeur-veste/poncho-ma-tribu/?LGWCODE=313595901;60677;3891&gclid=EAIaIQobChMIlOOgje-b5gIVz8jeCh3p5QBBEAkYAiABEgKxevD_BwE",
    user:        raph,
    list:        listederaph,
    chosen_by:   paul,
    status:     :true)
  poncho.photo.attach(io: photo_23, filename: 'poncho_ygbqqj.jpg', content_type: 'image/jpg')

  photo_24 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575465168/canap_bleu_alqtoy.jpg")
  canape = Idea.create!(
    title:       "Canapé vert en velours",
    description: "Pour notre nouvel appart",
    url:         "https://www.maisonsdumonde.com/FR/fr/p/canape-lit-3-places-en-velours-vert-elvis-198168.htm?LGWCODE=198168%3B152039%3B3071&gclid=EAIaIQobChMI1L3m2Pab5gIVjLHtCh3LGA85EAQYAiABEgJotPD_BwE",
    user:        raph,
    list:        weddingraph,
    chosen_by:   bernard,
    status:     :true)
  canape.photo.attach(io: photo_24, filename: 'canap_bleu_alqtoy', content_type: 'image/jpg')

  photo_25 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575467822/maldives_jgtfqf.jpg")
  voyage = Idea.create!(
    title:       "Voyage aux Maldives",
    description: "J'en rêve depuis si longtemps",
    url:         "https://www.voyageursdumonde.fr/voyage-sur-mesure/recherche-voyage/voyage-maldives",
    user:        raph,
    list:        weddingraph,
    chosen_by:   paul,
    status:     :true)
  voyage.photo.attach(io: photo_25, filename: 'maldives_jgtfqf', content_type: 'image/jpg')

  photo_26 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575465697/vespa_ulad9t.jpg")
  vespa = Idea.create!(
    title:       "Vespa rouge",
    description: "Pour aller partout malgré les grèves !",
    url:         "https://www.picwictoys.com/p/runrun-toys-scooter-electrique-12v-vespa-rouge-1764162",
    user:        raph,
    list:        weddingraph,
    chosen_by:   muriel,
    status:     :true)
  vespa.photo.attach(io: photo_26, filename: 'vespa_ulad9t', content_type: 'image/jpg')

  photo_27 = URI.open ("https://res.cloudinary.com/alexiajjjj/image/upload/v1575466149/bracelet_wqomem.jpg")
  bracelet = Idea.create!(
    title:       "Bracelet en or",
    description: "Un intemporel :-)",
    url:         "https://www.maty.com/Bijoux/0468312/bracelet-plaque-or-maille-palmier.html?LGWCODE=0468312;63567;3219&gclid=EAIaIQobChMIydO00Iyc5gIVGIjVCh0rBwK2EAQYByABEgJzsfD_BwE",
    user:        raph,
    list:        weddingraph,
    chosen_by:   john,
    status:     :true)
  bracelet.photo.attach(io: photo_27, filename: 'bracelet_wqomem', content_type: 'image/jpg')

puts 'Finished lists...'

puts 'OK'

