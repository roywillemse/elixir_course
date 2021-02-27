alias Server.Categories.Category
alias Server.Products.Product
alias Server.Reviews.Review
alias Server.Repo

smart_phone_cat =
  %Category{name: "Smartphones", slug: "smartphones", description: "Lijst van alle smartphones"}
  |> Repo.insert!()

tablet_cat = %Category{
  name: "Tablets",
  slug: "tablets",
  description: "Lijst van alle tablets die wij verkopen"
}
|> Repo.insert!()

iphone = %Product{
  name: "Apple iPhone 12 - 64GB - Zwart",
  slug: "apple-iphone-12-64gb",
  description:
    "De iPhone 12 is de meest recente piek in smartphone ontwikkeling van Apple. Het toestel beschikt namelijk over een prachtig 6,1 inch Super Retina XDR-display waardoor alles wat je bekijkt er nog mooier, scherper en realistischer uitziet. Om dit scherm zo goed mogelijk te beschermen heeft Apple vervolgens de Ceramic Shield ontwikkelt. Hiermee heeft de iPhone 12 vier keer betere valbescherming dan voorgaande modellen.",
  price: 889,
  images: [
    "https://media.s-bol.com/qloKBkv58l1D/550x748.jpg",
  ],
  category: smart_phone_cat
}
|> Repo.insert!()

%Product{
  name: "Samsung Galaxy A51 - 128GB - Zwart",
  slug: "samsung-galaxy-a51-128gb-zwart",
  description:
    "Geniet van je favoriete films en series op het symmetrische, 20 bij 9 display. Het randloze 6,5 inch-scherm geeft je de ultieme kijkervaring. Het scherm biedt naast een hoge kwaliteit beeld ook een gebruiksvriendelijke ervaring om je telefoon te ontgrendelen. Het enige wat je hoeft te doen is je vinger op de on-screen vingerscanner leggen.",
  price: 241,
  images: [
    "https://media.s-bol.com/xGy5ymKmYX0P/881x1200.jpg",
  ],
  category: smart_phone_cat
}
|> Repo.insert!()

%Product{
  name: "LG K42 - 64GB - Groen",
  slug: "lg-k42-64gb-groen",
  description:
    "Een groot 6,6 inch scherm vult de voorkant tot aan de rand en zorgt voor een 20:9 filmische kijkverhouding. Dit stelt je in staat om jezelf onder te dompelen in verschillende soorten inhoud, waaronder films en games. de 4.000 mAh batterij zorgt ervoor dat je lang door kan gaan op een enkele lading.",
  price: 149,
  images: [
    "https://media.s-bol.com/gnxYOoD532nk/749x1200.jpg",
  ],
  category: smart_phone_cat
}
|> Repo.insert!()

%Product{
  name: "Motorola Moto E6 Play - 32GB - Steel Black (Zwart)",
  slug: "motorola-mota-e6-play-32gb-steel-black",
  description:
    "De Motorola Moto E6 Play maakt het leven iets gemakkelijker. Deze smartphone ontgrendelt je telefoon direct met een vingerafdrukscanner en gezichtsontgrendeling. Op deze manier kun je snel bij je favoriete apps en entertainment komen zonder een wachtwoord te gebruiken. Het heugen van de Moto E7 Play breid je uit met een MicroSD-kaart, zodat je echt alles op je telefoon kunt opslaan. Deze smartphone is voorzien van een 5.5 inch groot scherm, heeft een 13 Megapixel camera voor mooie foto’s en heeft een mooi design dat je nog gemakkelijk met één hand kunt bedienen. Inclusief hoesje.",
  price: 85,
  images: [
    "https://media.s-bol.com/RoDpxk0W4O1w/858x1200.jpg",
  ],
  category: smart_phone_cat
}
|> Repo.insert!()

%Product{
  name: "Alcatel 1SE (2020) - 32GB - Grijs",
  slug: "alcatel-1se-2020-32gb-grijs",
  description:
    "De Alcatel 1SE maakt de beste smartphone ervaring toegankelijk voor iedereen. Dankzij zijn grote 6,22 inch HD+ scherm, drievoudige camera, 32GB geheugen en een octa-core processor. Multitasken en downloaden doe je in een handomdraai en je kunt zelfs de meest veeleisende apps gebruiken dankzij de octa-core processor met 3GB RAM en 32GB ROM. Daarnaast kan je de hele dag je smartphone gebruiken door de 4000 mAh batterij.",
  price: 99,
  images: [
    "https://media.s-bol.com/gZnlm4MvVJok/929x1200.jpg",
  ],
  category: smart_phone_cat
}
|> Repo.insert!()

%Product{
  name: "Nokia 1.3 - 16GB - Grijs",
  slug: "nokia-1.3-16gb-grijs",
  description:
    "Ervaar je visuele content op het prachtige 5.71 inch HD+ edge-to-edge scherm. Schiet prachtige foto's, zelfs in het donker met de speciale low-light sensor in de Nokia 1.3. Maak scherpe en gedetailleerde foto's met de door AI ondersteunde camera. Leg momenten vast zoals ze plaatsvinden met de snellere shot-to-shot tijden dankzij de gestroomlijnde Google Camera Go. Plus, deel deze speciale momenten makkelijk en vind ze ook sneller terug (ook offline) met de Gallery Go.",
  price: 95,
  images: [
    "https://media.s-bol.com/YvAwn6P9v5WK/914x1200.jpg",
  ],
  category: smart_phone_cat
}
|> Repo.insert!()

%Product{
  name: "Samsung Galaxy Tab A7 (2020) - WiFi - 32GB - Grijs",
  slug: "samsung-galaxy-tab-a7-2020-wifi-32gb-grijs",
  description:
    "De Samsung Galaxy Tab A7 is de opvolger van de succesvolle Tab A 10.1. De Tab A7 beschikt over een 10,4 inch display en is slechts 7mm dik. Dankzij de verbeterde chipset, het 10,4 inch display en het quad speaker systeem van Dolby Atmos zorgt de Tab A7 voor een meeslepende entertainment ervaring. Er wordt gebruik gemaakt van een 7.040 mAh batterij voor een lange accuduur. Hiernaast is de tablet uitermate geschikt voor kinderen met het Samsung Kids platform.",
  price: 195,
  images: [
    "https://media.s-bol.com/r9EOzvjBrJlL/998x1200.jpg",
  ],
  category: tablet_cat
}
|> Repo.insert!()

%Product{
  name: "Apple iPad (2020) - 10.2 inch - WiFi - 32GB - Spacegrijs",
  slug: "apple-ipad-10-2-inch-wifi-32gb-spacegrijs",
  description:
    "De nieuwe iPad. Digitaal notitieblok, mobiel kantoor, fotostudio, gameconsole en je eigen bioscoop. Met de A12 Bionic-chip die met gemak essentiële apps en indrukwekkende games aankan. Zo kun je dus de laatste hand leggen aan een bestand terwijl je op het internet naar informatie zoekt en tegelijkertijd via FaceTime met je collega praat. Apple Pencil is ideaal om notities mee te maken op iPad.* Sluit het Smart Keyboard aan om prettig te typen op een toetsenbord van volledig formaat.* En met wifi en een batterij die de hele dag meegaat kom je nog verder.**",
  price: 388,
  images: [
    "https://media.s-bol.com/JN6Lk3oLAwvD/1027x1200.jpg",
  ],
  category: tablet_cat
}
|> Repo.insert!()

%Product{
  name: "Lenovo TAB M10 HD - 10.1 inch - WiFi - 32GB - Zwart",
  slug: "lenovo-tab-m10-hd-10-1-inch-wifi-32gb-zwart-sleeve",
  description:
    "De Lenovo Tab M10 is een tablet met een 10,1-inch scherm. Wat voornamelijk opvalt is de interne hardware die bijna identiek is aan de veel duurdere Samsung Galaxy Tab A 10.5 en Lenovo Tab P10 maar deze tablet heeft wel weer minder functies. Als we kijken naar het design dan kunnen kan je dit vergelijjken met de duurdere Lenovo Tab P10 die gemaakt is van metaal en glas. Dit model de Tab M10 is gemaakt van plastic, maar het ziet er wel heel goed uit. De tablet is goed gebouwd en 8,1 mm dun met een gewicht van 480 gram.",
  price: 136,
  images: [
    "https://media.s-bol.com/JyEl9EKjPrqg/1200x832.jpg",
  ],
  category: tablet_cat
}
|> Repo.insert!()

%Product{
  name: "Lenovo Tab M10 FHD Plus - 32GB - Grijs",
  slug: "lenovo-tab-m10-fhd-plus-32gb-grijs",
  description:
    "Met een volledig metalen behuizing en een ultramodern ontwerp onderscheidt de Tab M10 FHD Plus (2e generatie) zich van de rest. Het 10,3'' FHD-scherm en de twee luidsprekers met Dolby Atmos® zorgen voor werkelijk meeslepend entertainment. En met het optionele Smart Charging Station kun je je smarthome beheren via de Google Assistent. Je kunt ook kiezen voor een folio case om je apparaat te beschermen wanneer je onderweg bent. Kortom, dit is geen gewone tablet.",
  price: 169,
  images: [
    "https://media.s-bol.com/gnA9OVG5r7WG/985x1200.jpg",
  ],
  category: tablet_cat
}
|> Repo.insert!()

%Product{
  name: "Denver TAQ-70373 / 7 inch Quad Core tablet met 16GB geheugen en Android 10",
  slug: "denver-taq-70373-7-inch-quad-core-tablet-met-16gb-geheugen-android-10",
  description:
    "De TAQ-70373 is een gebruiksvriendelijke tablet van 7 inch groot. Het scherm van de tablet draait automatisch mee wanneer je de tablet draait. Daardoor kun je alle soorten documenten optimaal bekijken en lezen. In- en uitzoomen doe je eenvoudig door met je vingers op het scherm te tikken. Deze tablet is vanwege de eenvoudige bediening zeer geschikt voor ouderen.",
  price: 70,
  images: [
    "https://media.s-bol.com/x6nQvZJnPZGl/1200x728.jpg",
  ],
  category: tablet_cat
}
|> Repo.insert!()

%Product{
  name: "Alcatel 1T 7 16GB + blauwe bumper",
  slug: "alcatel-1t-7-16gb-blauwe-bumper",
  description:
    "De Alcatel 1T7 Family kindertablet komt met een kids mode, waarin je met applicatiebeheer zelf kunt bepalen welke apps geschikt zijn voor jouw kinderen en waar ze toegang tot kunnen krijgen. Daarnaast kan je met tijdscontrole precies bepalen hoe lang en wanneer jouw kinderen op deze kindertablet mogen spelen.",
  price: 81,
  images: [
    "https://media.s-bol.com/x2YWvyQD9K1E/1200x708.jpg",
  ],
  category: tablet_cat
}
|> Repo.insert!()

%Review{ name: "John Doe", description: "Geweldige vormen en veel sneller dan de iPhone 11. Openen via Face ID gaat binnen een halve seconde. Overzetten van gegevens gaat ook weer sneller dan bij de iPhone 11. De camera is weergaloos . Het toestel kan een stootje hebben zowel de voor als de achterkant en 30 minuten waterdicht. Geweldige aankoop.", rating: 5, product: iphone} |> Repo.insert!()
