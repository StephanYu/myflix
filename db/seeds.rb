
videos = [
  {
    title: "Interstellar",
    description: "Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.",
    small_cover_url: "/tmp/interstellar_sm.jpg",
    large_cover_url: "/tmp/interstellar_lg2.jpg",
    category_name: "Action"
  },
  {
    title: "The Hobbit",
    description: "Mere seconds after the events of 'Desolation', Bilbo and Company continue to claim a mountain of treasure that was guarded long ago: But with Gandalf the Grey also facing some formidable foes of his own, the Hobbit is outmatched when the brutal army of orcs led by Azog the Defiler returns. But with other armies such as the elves and the men of Lake-Town, which are unsure to be trusted, are put to the ultimate test when Smaug's wrath, Azog's sheer strength, and Sauron's force of complete ends attack. All in all, the trusted armies have two choices: unite or die.",
    small_cover_url: "/tmp/hobbit_sm.jpg",
    large_cover_url: "/tmp/hobbit_lg2.jpg",
    category_name: "Action"
  },
  {
    title: "Big Hero",
    description: "The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.",
    small_cover_url: "/tmp/bighero_sm.jpg",
    large_cover_url: "/tmp/bighero_lg2.jpg",
    category_name: "Comedy"
  },
  {
    title: "Fury",
    description: "Last months of World War II in April 1945. As the Allies make their final push in the European Theater, a battle-hardened U.S. Army sergeant in the 2nd Armored Division named Wardaddy commands a Sherman tank called 'Fury' and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.",
    small_cover_url: "/tmp/fury_sm.jpg",
    large_cover_url: "/tmp/fury_lg2.jpg",
    category_name: "Reality TV"
  },
  {
    title: "Jupiter Ascending",
    description: "In a universe where human genetic material is the most precious commodity, an impoverished young Earth woman becomes the key to strategic maneuvers and internal strife within a powerful dynasty…",
    small_cover_url: "/tmp/jupiter_sm.jpg",
    large_cover_url: "/tmp/jupiter_lg.jpg",
    category_name: "Action"
  },
  {
    title: "Furious 7",
    description: "Continuing the global exploits in the unstoppable franchise built on speed, Vin Diesel, Paul Walker and Dwayne Johnson lead the returning cast of Fast & Furious 7. James Wan directs this chapter of the hugely successful series that also welcomes back favorites Michelle Rodriguez, Jordana Brewster, Tyrese Gibson, Chris 'Ludacris' Bridges, Elsa Pataky and Lucas Black. They are joined by international action stars new to the franchise including Jason Statham, Djimon Hounsou, Tony Jaa, Ronda Rousey and Kurt Russell.",
    small_cover_url: "/tmp/furious7_sm.jpg",
    large_cover_url: "/tmp/furious7_lg.jpg",
    category_name: "Action"
  },
  {
    title: "Dracula Untold",
    description: "Vlad Tepes is a great hero, but when he learns the Sultan is preparing for battle and needs to form an army of 1,000 boys, including Vlad's son, he vows to find a way to protect his family. Vlad turns to dark forces in order to get the power to destroy his enemies and agrees to go from hero to monster as he's turned into the mythological vampire Dracula.",
    small_cover_url: "/tmp/dracula_sm.jpg",
    large_cover_url: "/tmp/dracula_lg.jpg",
    category_name: "Action"
  },
  {
    title: "Exodus",
    description: "The defiant leader Moses rises up against the Egyptian Pharaoh Ramses, setting 600,000 slaves on a monumental journey of escape from Egypt and its terrifying cycle of deadly plagues.",
    small_cover_url: "/tmp/exodus_sm.jpg",
    large_cover_url: "/tmp/exodus_lg.jpg",
    category_name: "Action"
  },
  {
    title: "Lucy",
    description: "A woman, accidentally caught in a dark deal, turns the tables on her captors and transforms into a merciless warrior evolved beyond human logic.",
    small_cover_url: "/tmp/lucy_sm.jpg",
    large_cover_url: "/tmp/lucy_lg.jpg",
    category_name: "Action"
  },
  {
    title: "Night at the Museum",
    description: "When the magic powers of The Tablet of Ahkmenrah begin to die out, Larry Daley (Ben Stiller) spans the globe, uniting favorite and new characters while embarking on an epic quest to save the magic before it is gone forever.",
    small_cover_url: "/tmp/night_at_museum_sm.jpg",
    large_cover_url: "/tmp/night_at_museum_lg.jpg",
    category_name: "Comedy"
  },
  {
    title: "Penguins",
    description: "Skipper, Kowalski, Rico and Private join forces with undercover organization The North Wind to stop the villainous Dr. Octavius Brine from destroying the world as we know it.",
    small_cover_url: "/tmp/penguins_sm.jpg",
    large_cover_url: "/tmp/penguins_lg.jpg",
    category_name: "Comedy"
  },
  {
    title: "Guardians of the Galaxy",
    description: "Light years from Earth, 26 years after being abducted, Peter Quill finds himself the prime target of a manhunt after discovering an orb wanted by Ronan the Accuser.",
    small_cover_url: "/tmp/guardians_sm.jpg",
    large_cover_url: "/tmp/guardians_lg.jpg",
    category_name: "Comedy"
  }
]

categories = ["Comedy", "Action", "Reality TV"]

# reseed current databases
categories.each do |category|
  Category.create(
    name: category
  )
end

videos.each do |video| 
  Video.create( title: video[:title],
                description: video[:description],
                small_cover_url: video[:small_cover_url],
                large_cover_url: video[:large_cover_url],
                category_id: Category.where(name: video[:category_name]).first.id
  )
end

