alias Server.Categories.Category
alias Server.Products.Product
alias Server.Repo

smartPhone =
  %Category{name: "Smartphones", slug: "smartphones", description: "List of all smartphones"}
  |> Repo.insert!()

%Product{
  name: "Apple iPhone 12 - 64GB - Zwart",
  slug: "apple-iphone-12-64gb",
  description:
    "De iPhone 12 is de meest recente piek in smartphone ontwikkeling van Apple. Het toestel beschikt namelijk over een prachtig 6,1 inch Super Retina XDR-display waardoor alles wat je bekijkt er nog mooier, scherper en realistischer uitziet. Om dit scherm zo goed mogelijk te beschermen heeft Apple vervolgens de Ceramic Shield ontwikkelt. Hiermee heeft de iPhone 12 vier keer betere valbescherming dan voorgaande modellen.",
  price: 889,
  images: [
    "https://media.s-bol.com/qloKBkv58l1D/550x748.jpg",
    "https://media.s-bol.com/JN10p9V1KYJK/414x840.jpg",
    "https://media.s-bol.com/7pMgZxEX2GgQ/550x587.jpg",
    "https://media.s-bol.com/gnywoWWA5oLj/550x550.jpg"
  ],
  category: smartPhone
}
|> Repo.insert!()
