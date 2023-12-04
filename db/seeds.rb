# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Message.destroy_all
Chatroom.destroy_all
Category.destroy_all
User.destroy_all
Article.destroy_all

user1 = User.create!(email: "adel@mail.com", password: "123456", nickname: "Adel")
category = Category.create!(name: "foot")
chatroom = Chatroom.create!(title: "batch1410", user:user1, category: category)
message = chatroom.messages.create!(user:user1, content: "hello")

user2 = User.create!(email: "jeremy@mail.com", password: "123456", nickname: "Jeremy")
category = Category.create!(name: "tennis")
message = chatroom.messages.create!(user: user2, content: "hello")

user3 = User.create!(email: "jerome@mail.com", password: "123456", nickname: "Jerome")
message = chatroom.messages.create!(user: user3, content: "hello")

user4 = User.create!(email: "alex@mail.com", password: "123456", nickname: "Alex")
message = chatroom.messages.create!(user: user4, content: "hello")

# article1 = Article.new(title: "Voyage Culinaire en Asie : Plongée dans les Saveurs Exotiques de la Street Food.", article_url: "tot.com", image_url: "https://images.unsplash.com/photo-1495214783159-3503fd1b572d")
# article1.category = Category.all.sample
# article1.save!
# article2 = Article.new(title: "Victoire 4-0 du PSG dans le classico contre marseille", article_url: "toto.com")
# article2.category = Category.all.sample
# article2.save!
# article3 = Article.new(title: "Vers un Avenir Durable : Initiatives Écologiques et Changements Indispensables pour la Préservation de notre Planète.", article_url: "toto.com")
# article3.category = Category.all.sample
# article3.save!
# article4 = Article.new(title: "Les Innovations Technologiques qui Transforment Notre Quotidien : De la 5G à l'Intelligence Artificielle.", article_url: "toto.com")
# article4.category = Category.all.sample
# article4.save!
# article5 = Article.new(title: "L'Évolution du Fitness : Tendances Actuelles et Innovations qui Redéfinissent l'Entraînement Sportif.", article_url: "toto.com")
# article5.category = Category.all.sample
# article5.save!
# article6 = Article.new(title: "Civilisations Anciennes : À la Découverte des Mystères de l'Égypte Antique.", article_url: "toto.com")
# article6.category = Category.all.sample
# article6.save!
# article7 = Article.new(title: "Plongée Dans l'Univers Virtuel : Les Jeux Vidéo les Plus Attendus de l'Année et les Tendances Émergentes.", article_url: "world.com")
# article7.category = Category.all.sample
# article7.save!
# article8 = Article.new(title: "JO-2024 : le prix du ticket de métro va quasiment doubler durant l'été", article_url: "sport.com")
# article8.category = Category.all.sample
# article8.save!
# article9 = Article.new(title: "Japon Éternel : Une Odyssée Culturelle à Travers les Traditions, la Technologie et la Beauté Naturelle.", article_url: "japon.com")
# article9.category = Category.all.sample
# article9.save!
# article10 = Article.new(title: "Facebook et Instagram payants : une plainte pour infraction au droit européen des données personnelles", article_url: "facebook.com")
# article10.category = Category.all.sample
# article10.save!

category_translation = { "Automotive"=>"Automobile", "Auto Body Styles"=>"Styles de carrosserie", "Commercial Trucks"=>"Camions commerciaux", "Convertible"=>"Cabriolet", "Coupe"=>"Coupé", "Crossover"=>"Crossover", "Hatchback"=>"Hatchback", "Microcar"=>"Microcar", "Minivan"=>"Fourgonnette", "Off-Road Vehicles"=>"Véhicules tout-terrain", "Pickup Trucks"=>"Camions pick-up", "SUV"=>"SUV", "Sedan"=>"Berline", "Van"=>"Fourgon", "Auto Buying and Selling"=>"Achat et vente d'automobiles", "Auto Insurance"=>"Assurance automobile", "Auto Parts"=>"Pièces détachées", "Auto Recalls"=>"Rappels de véhicules", "Auto Rentals"=>"Location d'automobiles", "Auto Repair"=>"Réparation automobile", "Auto Safety"=>"Sécurité automobile", "Auto Shows"=>"Salons de l'auto", "Auto Type"=>"Type d'auto", "Budget Cars"=>"Voitures à prix réduit", "Certified Pre-Owned Cars"=>"Véhicules d'occasion certifiés", "Classic Cars"=>"Voitures de collection", "Concept Cars"=>"Voitures conceptuelles", "Driverless Cars"=>"Voitures sans conducteur", "Green Vehicles"=>"Véhicules verts", "Luxury Cars"=>"Voitures de luxe", "Performance Cars"=>"Voitures de performance", "Car Culture"=>"Culture automobile", "Motorcycles"=>"Motos", "Scooters"=>"Scooters", "Careers"=>"Carrières", "Apprenticeships"=>"Apprentissages", "Career Advice"=>"Conseils de carrière", "Career Planning"=>"Planification de carrière", "Job Search"=>"Recherche d'emploi", "Remote Working"=>"Travail à distance", "Vocational Training"=>"Formation professionnelle", "Education"=>"L'éducation", "Adult Education"=>"Éducation des adultes", "College Education"=>"Enseignement supérieur", "Early Childhood Education"=>"Éducation de la petite enfance", "Educational Assessment"=>"Évaluation de l'éducation", "Homeschooling"=>"L'école à la maison", "Homework and Study"=>"Devoirs et études", "Language Learning"=>"Apprentissage des langues", "Online Education"=>"Enseignement en ligne", "Primary Education"=>"Enseignement primaire", "Private School"=>"École privée", "Secondary Education"=>"Enseignement secondaire", "Special Education"=>"Éducation spéciale", "Events and Attractions"=>"Événements et attractions", "Amusement and Theme Parks"=>"Parcs d'attractions et parcs à thèmes", "Bars & Restaurants"=>"Bars et restaurants", "Business Expos & Conferences"=>"Expositions et conférences d'entreprises", "Casinos & Gambling"=>"Casinos et jeux de hasard", "Comedy Events"=>"Événements comiques", "Concerts & Music Events"=>"Concerts et événements musicaux", "Historic Site and Landmark Tours"=>"Visites des sites et monuments historiques", "Museums & Galleries"=>"Musées et galeries", "Musicals"=>"Comédies musicales", "National & Civic Holidays"=>"Jours fériés nationaux et civiques", "Nightclubs"=>"Boîtes de nuit", "Outdoor Activities"=>"Activités de plein air", "Parks & Nature"=>"Parcs et nature", "Party Supplies and Decorations"=>"Fournitures et décorations de fête", "Personal Celebrations & Life Events"=>"Célébrations personnelles et événements de la vie", "Funeral"=>"Funérailles", "Zoos & Aquariums"=>"Zoos et aquariums", "Family and Relationships"=>"Famille et relations", "Bereavement"=>"Le deuil", "Dating"=>"Rencontres", "Divorce"=>"Divorce", "Eldercare"=>"Soins aux personnes âgées", "Marriage and Civil Unions"=>"Mariage et unions civiles", "Parenting"=>"L'éducation des enfants", "Fine Art"=>"Beaux-arts", "Digital Arts"=>"Arts numériques", "Modern Art"=>"Art moderne", "Opera"=>"Opéra", "Theater"=>"Théâtre", "Food & Drink"=>"Alimentation et boissons", "Alcoholic Beverages"=>"Boissons alcoolisées", "Barbecues and Grilling"=>"Barbecues et grillades", "Cooking"=>"La cuisine", "Desserts and Baking"=>"Desserts et pâtisserie", "Dining Out"=>"Restauration", "Food Allergies"=>"Allergies alimentaires", "Healthy Cooking and Eating"=>"Cuisiner et manger sainement", "Non-Alcoholic Beverages"=>"Boissons non alcoolisées", "Vegan Diets"=>"Régimes végétaliens", "Vegetarian Diets"=>"Régimes végétariens", "Healthy Living"=>"Vie saine", "Children's Health"=>"Santé des enfants", "Fitness and Exercise"=>"Forme physique et exercice", "Men's Health"=>"Santé masculine", "Nutrition"=>"La nutrition", "Senior Health"=>"Santé des personnes âgées", "Weight Loss"=>"Perte de poids", "Wellness"=>"Bien-être", "Women's Health"=>"Santé des femmes", "Hobbies & Interests"=>"Loisirs et centres d'intérêt", "Antiquing and Antiques"=>"Antiquité et antiquités", "Arts and Crafts"=>"Arts et artisanat", "Beekeeping"=>"Apiculture", "Birdwatching"=>"Observation des oiseaux", "Cigars"=>"Cigares", "Musical Instruments"=>"Instruments de musique", "Paranormal Phenomena"=>"Phénomènes paranormaux", "Home & Garden"=>"Maison et jardin", "Gardening"=>"Jardinage", "Home Appliances"=>"Appareils ménagers", "Home Improvement"=>"Amélioration de l'habitat", "Home Security"=>"Sécurité domestique", "Interior Decorating"=>"Décoration intérieure", "Landscaping"=>"Aménagement paysager", "Outdoor Decorating"=>"Décoration extérieure", "Remodeling & Construction"=>"Remodelage et construction", "Smart Home"=>"Maison intelligente", "Medical Health"=>"Santé médicale", "Cosmetic Medical Services"=>"Services médicaux esthétiques", "Diseases and Conditions"=>"Maladies et conditions", "Allergies"=>"Allergies", "Blood Disorders"=>"Troubles sanguins", "Bone and Joint Conditions"=>"Affections osseuses et articulaires", "Brain and Nervous System Disorders"=>"Troubles du cerveau et du système nerveux", "Cancer"=>"Le cancer", "Cold and Flu"=>"Rhume et grippe", "Dental Health"=>"Santé dentaire", "Diabetes"=>"Diabète", "Digestive Disorders"=>"Troubles digestifs", "Ear, Nose and Throat Conditions"=>"Affections de l'oreille, du nez et de la gorge", "Endocrine and Metabolic Diseases"=>"Maladies endocriniennes et métaboliques", "Hormonal Disorders"=>"Troubles hormonaux", "Menopause"=>"Ménopause", "Thyroid Disorders"=>"Troubles de la thyroïde", "Eye and Vision Conditions"=>"Affections des yeux et de la vision", "Foot Health"=>"Santé des pieds", "Heart and Cardiovascular Diseases"=>"Maladies cardiaques et cardiovasculaires", "Infectious Diseases"=>"Maladies infectieuses", "Injuries"=>"Blessures", "First Aid"=>"Premiers secours", "Lung and Respiratory Health"=>"Santé pulmonaire et respiratoire", "Mental Health"=>"Santé mentale", "Reproductive Health"=>"Santé reproductive", "Birth Control"=>"Contrôle des naissances", "Infertility"=>"Infertilité", "Pregnancy"=>"Grossesse", "Sexual Health"=>"Santé sexuelle", "Sexual Conditions"=>"Conditions sexuelles", "Skin and Dermatology"=>"Peau et dermatologie", "Sleep Disorders"=>"Troubles du sommeil", "Substance Abuse"=>"Abus de substances", "Medical Tests"=>"Tests médicaux", "Pharmaceutical Drugs"=>"Médicaments pharmaceutiques", "Surgery"=>"Chirurgie", "Vaccines"=>"Vaccins", "Movies"=>"Cinéma", "Music and Audio"=>"Musique et audio", "News and Politics"=>"Actualités et politique", "Crime"=>"Criminalité", "Disasters"=>"Catastrophes", "Law"=>"Droit", "Local News"=>"Actualités locales", "Politics"=>"Politique", "Elections"=>"Élections", "Political Issues"=>"Questions politiques", "War and Conflicts"=>"Guerre et conflits", "Weather"=>"Météo", "Personal Finance"=>"Finances personnelles", "Financial Assistance"=>"Aide financière", "Financial Planning"=>"Planification financière", "Frugal Living"=>"Vie frugale", "Insurance"=>"Assurance", "Personal Investing"=>"Investissements personnels", "Retirement Planning"=>"Planification de la retraite", "Books and Literature"=>"Livres et littérature", "Biographies"=>"Biographies", "Comics and Graphic Novels"=>"Bandes dessinées et romans graphiques", "Cookbooks"=>"Livres de cuisine", "Poetry"=>"Poésie", "Pets"=>"Animaux de compagnie", "Birds"=>"Oiseaux", "Cats"=>"Chats", "Dogs"=>"Chiens", "Pet Adoptions"=>"Adoptions d'animaux de compagnie", "Pet Supplies"=>"Fournitures pour animaux de compagnie", "Reptiles"=>"Reptiles", "Veterinary Medicine"=>"Médecine vétérinaire", "Pop Culture"=>"Culture populaire", "Celebrity Deaths"=>"Décès de célébrités", "Celebrity Homes"=>"Maisons de célébrités", "Celebrity Relationships"=>"Relations avec les célébrités", "Celebrity Style"=>"Le style des célébrités", "Humor and Satire"=>"Humour et satire", "Real Estate"=>"Immobilier", "Religion & Spirituality"=>"Religion et spiritualité", "Astrology"=>"Astrologie", "Atheism"=>"Athéisme", "Buddhism"=>"Le bouddhisme", "Christianity"=>"Le christianisme", "Hinduism"=>"Hindouisme", "Islam"=>"L'Islam", "Judaism"=>"Le judaïsme", "Spirituality"=>"Spiritualité", "Science"=>"La science", "Biological Sciences"=>"Sciences biologiques", "Chemistry"=>"Chimie", "Environment"=>"Environnement", "Genetics"=>"Génétique", "Geography"=>"Géographie", "Geology"=>"Géologie", "Physics"=>"Physique", "Space and Astronomy"=>"Espace et astronomie", "Shopping"=>"Achats", "Coupons and Discounts"=>"Coupons et réductions", "Flower Shopping"=>"Achats de fleurs", "Gifts and Greetings Cards"=>"Cadeaux et cartes de vœux", "Grocery Shopping"=>"Faire ses courses", "Holiday Shopping"=>"Achats de Noël", "Sales and Promotions"=>"Ventes et promotions", "Sports"=>"Sports", "American Football"=>"Football américain", "Australian Rules Football"=>"Football australien", "Auto Racing"=>"Course automobile", "Badminton"=>"Badminton", "Baseball"=>"Baseball", "Basketball"=>"Basket-ball", "Beach Volleyball"=>"Volley-ball de plage", "Bodybuilding"=>"Le culturisme", "Bowling"=>"Bowling", "Boxing"=>"Boxe", "Cheerleading"=>"Cheerleading", "College Sports"=>"Sports universitaires", "College Baseball"=>"Baseball universitaire", "College Basketball"=>"Basket-ball universitaire", "College Football"=>"Football universitaire", "Cricket"=>"Cricket", "Cycling"=>"Cyclisme", "Darts"=>"Fléchettes", "Disabled Sports"=>"Sports pour handicapés", "Diving"=>"Plongée", "Extreme Sports"=>"Sports extrêmes", "Canoeing and Kayaking"=>"Canoë-kayak", "Climbing"=>"Escalade", "Paintball"=>"Paintball", "Scuba Diving"=>"Plongée sous-marine", "Skateboarding"=>"Skateboarding", "Snowboarding"=>"Snowboarding", "Surfing and Bodyboarding"=>"Surf et Bodyboard", "Fantasy Sports"=>"Sports fantastiques", "Field Hockey"=>"Hockey sur gazon", "Figure Skating"=>"Patinage artistique", "Fishing Sports"=>"Sports de pêche", "Golf"=>"Golf", "Gymnastics"=>"Gymnastique", "Horse Racing"=>"Courses de chevaux", "Ice Hockey"=>"Hockey sur glace", "Lacrosse"=>"Crosse", "Martial Arts"=>"Arts martiaux", "Olympic Sports"=>"Sports olympiques", "Summer Olympic Sports"=>"Sports olympiques d'été", "Winter Olympic Sports"=>"Sports olympiques d'hiver", "Poker and Professional Gambling"=>"Poker et jeux d'argent professionnels", "Rodeo"=>"Rodéo", "Rowing"=>"Aviron", "Rugby"=>"Rugby", "Sailing"=>"Voile", "Skiing"=>"Ski", "Snooker/Pool/Billiards"=>"Snooker/Pool/Billiards", "Soccer"=>"Football", "Softball"=>"Softball", "Sports Equipment"=>"Équipement sportif", "Swimming"=>"Natation", "Table Tennis"=>"Tennis de table", "Tennis"=>"Tennis", "Track and Field"=>"Athlétisme", "Volleyball"=>"Volley-ball", "Walking"=>"La marche", "Water Polo"=>"Water Polo", "Weightlifting"=>"Haltérophilie", "Wrestling"=>"Lutte", "Business and Finance"=>"Affaires et finances", "Business"=>"Entreprises", "Awards"=>"Prix", "Business Accounting & Finance"=>"Comptabilité et finance d'entreprise", "Business Administration"=>"Administration des affaires", "Business Banking & Finance"=>"Banque d'affaires et finance", "Acquisitions, Mergers and Takeovers"=>"Acquisitions, fusions et rachats", "Angel Investment"=>"Investissement providentiel", "Bankruptcy"=>"Faillite", "Business Loans"=>"Prêts aux entreprises", "Debt Factoring & Invoice Discounting"=>"Affacturage et escompte de factures", "Private Equity"=>"Capital-investissement", "Sale & Lease Back"=>"Vente et reprise en crédit-bail", "Venture Capital"=>"Capital-risque", "Business I.T."=>"Technologies de l'information et de la communication (TIC) pour les entreprises", "Business Operations"=>"Opérations commerciales", "Business Utilities"=>"Utilitaires professionnels", "Consumer Issues"=>"Questions relatives aux consommateurs", "Recalls"=>"Rappels", "Contracts and Agreements"=>"Contrats et accords", "Environmental, Social and Governance (ESG)"=>"Environnement, social et gouvernance (ESG)", "Executive Leadership & Management"=>"Leadership et gestion des cadres", "Funding"=>"Financement", "Government Business"=>"Entreprises publiques", "Green Solutions"=>"Solutions vertes", "Human Resources"=>"Ressources humaines", "Intellectual Property"=>"Propriété intellectuelle", "Large Business"=>"Grandes entreprises", "Litigation"=>"Litiges", "Logistics"=>"Logistique", "Marketing and Advertising"=>"Marketing et publicité", "Partnerships and Joint Ventures"=>"Partenariats et entreprises communes", "Personnel Changes"=>"Changements de personnel", "Key Hires"=>"Principaux recrutements", "Layoffs"=>"Licenciements", "Products and Services Announcements"=>"Annonces de produits et services", "Real Estate Transactions"=>"Transactions immobilières", "Regulatory Approvals"=>"Approbations réglementaires", "Sales"=>"Vente", "Small and Medium-sized Business"=>"Petites et moyennes entreprises", "Startups"=>"Startups", "Stock Offerings and IPOs"=>"Offres d'actions et introductions en bourse", "Stock Price News"=>"Actualités sur le cours des actions", "Dividends"=>"Dividendes", "Investment Opinion"=>"Avis d'investissement", "Sales and Earnings"=>"Ventes et bénéfices", "Stock Split"=>"Fractionnement d'actions", "Economy"=>"L'économie", "Commodities"=>"Produits de base", "Currencies"=>"Monnaies", "Financial Crisis"=>"Crise financière", "Financial Reform"=>"Réforme financière", "Financial Regulation"=>"Règlement financier", "Gasoline Prices, Gas Prices"=>"Prix de l'essence, Prix de l'essence", "Housing Market"=>"Marché du logement", "Interest Rates"=>"Taux d'intérêt", "Job Market"=>"Marché de l'emploi", "Industries"=>"Industries", "Advertising Industry"=>"Industrie de la publicité", "Agriculture"=>"Agriculture", "Apparel Industry"=>"Industrie de l'habillement", "Automotive Industry"=>"Industrie automobile", "Aviation Industry"=>"Industrie aéronautique", "Biotech and Biomedical Industry"=>"Industrie biotechnologique et biomédicale", "Civil Engineering Industry"=>"Industrie du génie civil", "Construction Industry"=>"Industrie de la construction", "Defense Industry"=>"Industrie de la défense", "Education industry"=>"Secteur de l'éducation", "Entertainment Industry"=>"Industrie du divertissement", "Environmental Services Industry"=>"Industrie des services environnementaux", "Financial Industry"=>"Industrie financière", "Food Industry"=>"Industrie alimentaire", "Healthcare Industry"=>"Industrie des soins de santé", "Hospitality Industry"=>"Industrie hôtelière", "Information Services Industry"=>"Industrie des services d'information", "Legal Services Industry"=>"Industrie des services juridiques", "Logistics and Transportation Industry"=>"Industrie de la logistique et des transports", "Management Consulting Industry"=>"Industrie du conseil en gestion", "Manufacturing Industry"=>"Industrie manufacturière", "Mechanical and Industrial Engineering Industry"=>"Industrie du génie mécanique et industriel", "Media Industry"=>"Industrie des médias", "Metals Industry"=>"Industrie des métaux", "Non-Profit Organizations"=>"Organisations à but non lucratif", "Pharmaceutical Industry"=>"Industrie pharmaceutique", "Power and Energy Industry"=>"Industrie de l'électricité et de l'énergie", "Publishing Industry"=>"Industrie de l'édition", "Real Estate Industry"=>"Industrie immobilière", "Retail Industry"=>"Commerce de détail", "Technology Industry"=>"Industrie technologique", "Telecommunications Industry"=>"Industrie des télécommunications", "Style & Fashion"=>"Style et mode", "Beauty"=>"Beauté", "Body Art"=>"Art corporel", "Fashion Trends"=>"Tendances de la mode", "Men's Fashion"=>"Mode masculine", "Women's Fashion"=>"Mode féminine", "Technology & Computing"=>"Technologie et informatique", "Artificial Intelligence"=>"Intelligence artificielle", "Augmented Reality"=>"Réalité augmentée", "Computing"=>"Informatique", "Computer Networking"=>"Réseaux informatiques", "Computer Peripherals"=>"Périphériques informatiques", "Computer Software and Applications"=>"Logiciels et applications informatiques", "3-D Graphics"=>"Graphiques en 3D", "Antivirus Software"=>"Logiciel antivirus", "Browsers"=>"Navigateurs", "Computer Animation"=>"Animation par ordinateur", "Databases"=>"Bases de données", "Desktop Publishing"=>"Publication assistée par ordinateur", "Digital Audio"=>"Audio numérique", "Graphics Software"=>"Logiciel graphique", "Operating Systems"=>"Systèmes d'exploitation", "Photo Editing Software"=>"Logiciel d'édition de photos", "Shareware and Freeware"=>"Shareware et Freeware", "Video Software"=>"Logiciel vidéo", "Web Conferencing"=>"Conférence en ligne", "Data Storage and Warehousing"=>"Stockage et entreposage de données", "Desktops"=>"Ordinateurs de bureau", "Information and Network Security"=>"Sécurité de l'information et des réseaux", "Internet"=>"Internet", "Cloud Computing"=>"Informatique en nuage", "Email"=>"Courriel", "IT and Internet Support"=>"Assistance informatique et Internet", "Internet for Beginners"=>"Internet pour les débutants", "Internet of Things"=>"Internet des objets", "Search"=>"Recherche", "Social Networking"=>"Réseaux sociaux", "Web Design and HTML"=>"Conception de sites web et HTML", "Web Development"=>"Développement Web", "Web Hosting"=>"Hébergement web", "Laptops"=>"Ordinateurs portables", "Programming Languages"=>"Langages de programmation", "Consumer Electronics"=>"Électronique grand public", "Cameras and Camcorders"=>"Appareils photo et caméscopes", "Home Entertainment Systems"=>"Systèmes de divertissement à domicile", "Smartphones"=>"Smartphones", "Tablets and E-readers"=>"Tablettes et lecteurs électroniques", "Wearable Technology"=>"Technologie portable", "Robotics"=>"Robotique", "Virtual Reality"=>"Réalité virtuelle", "Television"=>"Télévision", "Travel"=>"Voyage", "Travel Locations"=>"Lieux de voyage", "Africa Travel"=>"Voyages en Afrique", "Asia Travel"=>"Voyage en Asie", "Australia and Oceania Travel"=>"Voyage en Australie et en Océanie", "Europe Travel"=>"Voyages en Europe", "North America Travel"=>"Voyage en Amérique du Nord", "Polar Travel"=>"Voyage polaire", "South America Travel"=>"Voyage en Amérique du Sud", "Travel Preparation and Advice"=>"Préparation des voyages et conseils", "Travel Type"=>"Type de voyage", "Adventure Travel"=>"Voyages d'aventure", "Air Travel"=>"Voyages aériens", "Beach Travel"=>"Voyage à la plage", "Budget Travel"=>"Budget Voyage", "Business Travel"=>"Voyages d'affaires", "Camping"=>"Camping", "Cruises"=>"Croisières", "Day Trips"=>"Excursions d'une journée", "Family Travel"=>"Voyages en famille", "Honeymoons and Getaways"=>"Lunes de miel et escapades", "Hotels and Motels"=>"Hôtels et motels", "Rail Travel"=>"Voyages en train", "Road Trips"=>"Voyages en voiture", "Spas"=>"Spas", "Video Gaming"=>"Jeux vidéo", "Console Games"=>"Jeux de console", "Mobile Games"=>"Jeux mobiles", "PC Games"=>"Jeux PC", "eSports"=>"Sports électroniques"}
category_translation.each do |name_en, name_fr|
  Category.create(name_en: name_en, name: name_fr)
end
FetchAndSaveArticlesFromBing.new(keyword:"foot",category_present:false).call
