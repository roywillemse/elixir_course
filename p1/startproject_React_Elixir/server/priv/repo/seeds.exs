alias Server.Links.Link
alias Server.Repo

%Link{url: "http://graphql.org/", description: "The Best Query Language"} |> Repo.insert!()
%Link{url: "http://dev.apollodata.com/", description: "Awesome GraphQL Client"} |> Repo.insert!()
