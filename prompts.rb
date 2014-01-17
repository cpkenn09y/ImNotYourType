module Prompts

  extend self

  PROMPTS = ["Are you an interior decorator? Cause when I saw you, the entire room became beautiful.",
    "Are you religious? 'Cause you're the answer to all my prayers.",
    "Do you have a BandAid? I just scraped my knee falling for you.",
    "They say dating is a numbers game... so can I get your number?",
    "Do you have a sunburn, or are you always this hot?",
    "If I were a stop light, I'd turn red everytime you passed by, just so I could stare at you a bit longer.",
    "You know I'd like to invite you over, but I'm afraid you're so hot that you'll skyrocket my air-conditioning bill.",
    "My buddies bet me that I wouldn't be able to start a conversation with the most beautiful girl in the bar. Wanna buy some drinks with their money?",
    "You'd better direct that beauty somewhere else, you'll set the carpet on fire.",
    "For a moment I thought I had died and gone to heaven. Now I see that I am very much alive, and heaven has been brought to me.",
    "You look cold. Want to use me as a blanket?",
    "I was so enchanted by your beauty that I ran into that wall over there. So I'm going to need your name and number for insurance purposes.",
    "Do you know what my shirt is made of? Boyfriend material.",
    "Do you have a map? I'm getting lost in your eyes.",
    "I'm not a photographer, but I can picture me and you together.",
    "You shouldn't wear makeup. It's messing with perfection!",
    "If I had a star for every time you brightened my day, I'd have a galaxy in my hand.",
    "I was wondering if you had an extra heart mine seems to have been stolen",
    "There isn't a word in the dictionary for how good you look.",
    "Me without you is like a nerd without braces, A shoe without laces, aSentenceWithoutSpaces",
    "Is there an airport nearby or is that just my heart taking off?"
  ]

  def random
    PROMPTS.sample
  end

  def wrap_each_letter(prompt)
    prompt.split('').map {|letter| "<span id='letter'>#{letter}</span>" }.join('')
  end

end

# From http://www.pickuplinesgalore.com/cheesy.html