# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

videos = [
  {
    title: "Interstellar",
    description: "Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.",
    small_cover_url: "/images/interstellar_sm.jpg",
    large_cover_url: "/images/interstellar_lg2.jpg"
  },
  {
    title: "The Hobbit",
    description: "Mere seconds after the events of 'Desolation', Bilbo and Company continue to claim a mountain of treasure that was guarded long ago: But with Gandalf the Grey also facing some formidable foes of his own, the Hobbit is outmatched when the brutal army of orcs led by Azog the Defiler returns. But with other armies such as the elves and the men of Lake-Town, which are unsure to be trusted, are put to the ultimate test when Smaug's wrath, Azog's sheer strength, and Sauron's force of complete ends attack. All in all, the trusted armies have two choices: unite or die. But even worse, Bilbo gets put on a knife edge and finds himself fighting with Hobbit warfare with all of his might for his dwarf-friends, as the hope for Middle-Earth is all put in Bilbo's hands. The one 'precious' thing to end it all.",
    small_cover_url: "/images/hobbit_sm.jpg",
    large_cover_url: "/images/hobbit_lg2.jpg"
  },
  {
    title: "Big Hero",
    description: "The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.",
    small_cover_url: "/images/bighero_sm.jpg",
    large_cover_url: "/images/bighero_lg2.jpg"
  },
  {
    title: "Fury",
    description: "Last months of World War II in April 1945. As the Allies make their final push in the European Theater, a battle-hardened U.S. Army sergeant in the 2nd Armored Division named Wardaddy commands a Sherman tank called 'Fury' and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.",
    small_cover_url: "/images/fury_sm.jpg",
    large_cover_url: "/images/fury_lg2.jpg"
  }
]

videos.each do |video| 
  Video.create( title: video[:title],
                description: video[:description],
                small_cover_url: video[:small_cover_url],
                large_cover_url: video[:large_cover_url]
  )
end
