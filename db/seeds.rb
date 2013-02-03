# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#create User
2.times do |i|
  user = User.new(name: "demouser#{i}", email: "demo#{i}@test.com", password: "123456", password_confirmation: "123456")
  user.save
end

category = [
  ["Movie","Want to discover the greatest movies? We listing here!"],
  ["Music","This is for the Music lovers"]]

category.each do |data|
  blog_category  = BlogCategory.new(name: data[0],description: data[1],user_id: User.first.id)
  blog_category.save
end

[
  ["The Shawshank Redemption","Andy Dufresne is a young and successful banker whose life changes drastically when he is convicted and sentenced to life imprisonment for the murder of his wife and her lover. Set in the 1940's, the film shows how Andy, with the help of his friend Red, the prison entrepreneur, turns out to be a most unconventional prisoner."],
  ["The Dark Knight","When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level."],
  ["Pulp Fiction","Jules Winnfield and Vincent Vega are two hitmen who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his next fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents."],
  ["Inception","Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb's rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible-inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming."],
  ["Fight Club","A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground 'fight clubs' forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion."],
  ["The Lord of the Rings: The Fellowship of the Ring","An ancient Ring thought lost for centuries has been found, and through a strange twist in fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it! However he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir and his three Hobbit friends Merry, Pippin and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign!"],
  ["Vishwaroopam","Ms.Nirupama was from a middle class family in Chennai, she comes to U.S to pursue her higher studies. There she marries the dance master Vishwanath and they both lead a rather happy and peaceful life. But when Nirupama wants to do her Ph.D further she wants to break up with her husband and wants to find a fault with her husband. So she puts a detective to find more about her husband. Thats when all the pandora's box opens up"],
  ["The Third Half ","Determined to build the best football club in the country, Dimitry hires the German coach, Rudolph Spitz, to galvanize his rag tag team but - when the first Nazi tanks roll through the city and Rebecca, the beautiful daughter of a local banker, elopes with his star player, all Dimitry's plans must change."],
  ["Django Unchained","Former dentist, Dr. King Schultz, buys the freedom of a slave, Django, and trains him with the intent to make him his deputy bounty hunter. Instead, he is led to the site of Django's wife who is under the hands of Calvin Candie, a ruthless plantation owner."],
  ["The Intouchables","After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caretaker."],
  ["A Separation","Nader ('Peyman Moaadi' ) and Simin (Leila Hatami) argue about living abroad. Simin prefers to live abroad to provide better opportunities for their only daughter, Termeh. However, Nader refuses to go because he thinks he must stay in Iran and take care of his father (Ali-Asghar Shahbazi), who suffers from Alzheimers. However, Simin is determined to get a divorce and leave the country with her daughter."],
  ["Gangs of Wasseypur","Shahid Khan is exiled after impersonating the legendary Sultana Daku in order to rob British trains. Now outcast, Shahid becomes a worker at Ramadhir Singh's colliery, only to spur a revenge battle that passes on to generations. At the turn of the decade, Shahid's son, the philandering Sardar Khan vows to get his father's honor back, becoming the most feared man of Wasseypur."],
  ["Barfi!","Set in the 1970s in a pretty corner of India, Barfi! is the story of three young people who learn that love can neither be defined nor contained by society's norms of normal and abnormal. Barfi, a hearing and speech impaired boy falls in love with Shruti. In spite of her deep affection for Barfii, Shruti gives into societal and parental pressure to marry a 'normal' man and lead a 'normal' life. Many years later their paths cross once again when Barfi, now in love with Jhilmil, is on the run from the police. Barfi is desperately seeking Jhilmil, who has gone missing. Shruti's realization that Jhilmil is autistic makes her recognize that true love is really blind. Caught in a cat and mouse game, in the search for the girl Barfi loves, Shruti realizes that she is still in love with him. She must now choose between her happiness and Barfi! stars three of India's most loved young stars, all essaying roles of a lifetime. The uber cool Ranbir Kapoor plays the lead role of Barfi!, the very ..."],
  ["The Avengers","Nick Fury is director of S.H.I.E.L.D, an international peace keeping agency. The agency is a who's who of Marvel Super Heroes, with Iron Man, The Incredible Hulk, Thor, Captain America, Hawkeye and Black Widow. When global security is threatened by Loki and his cohorts, Nick Fury and his team will need all their powers to save the world from disaster."],
  ["Suits","While running from a drug deal gone bad, Mike Ross, a brilliant young college-dropout, slips into a job interview with one of New York City's best legal closers, Harvey Specter. Tired of cookie-cutter law school grads, Harvey takes a gamble by hiring Mike on the spot after he recognizes his raw talent and photographic memory. Mike and Harvey are a winning team. Even though Mike is a genius, he still has a lot to learn about law. And while Harvey may seem like an emotionless, cold-blooded shark, Mike's sympathy and concern for their cases and clients will help remind Harvey why he went into law in the first place. Mike's other allies in the office include the firm's best paralegal Rachel and Harvey's no-nonsense assistant Donna to help him serve justice. Proving to be an irrepressible duo and invaluable to the practice, Mike and Harvey must keep their secret from everyone including managing partner Jessica and Harvey's arch nemesis Louis, who seems intent on making Mike's life as"],
  ["Glee","When a High School Spanish teacher, Will Schuester, becomes the director of the school's failing Glee club, New Directions, he hopes to be able to rejuvenate it. The club competes in the choir competition circuit. It's been called 'a High School Musical for adults', the series follows the club and its mixture of oddball members as they try and restore it to its former glory. It is a musical comedy in which the eager and ambitious students not only compete to win the Nationals, but also have to deal with the tough and cruel realities of their school, McKinley High. At the same time, Will is trying to rejuvenate his failing love life whilst preventing the school's cheer leading coach Sue Sylvester from sabotaging the choir."],
  ["White Collar ","The unlikely partnership between charming con artist Neal Caffrey and straightman FBI agent Peter Burke. Caffrey provides his expertise to help Burke catch other elusive criminals in exchange for his freedom, and together they prove that to solve the hardest crimes, you must hire the smartest criminal. "],
  ].each do |entry_data|
    entry = BlogEntry.new(title: entry_data[0],content: entry_data[1],user_id: User.first.id)
    entry.blog_categories << BlogCategory.first
    entry.save
  end





