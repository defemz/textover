
class DBSource{

  List<String> assetsFileList = [
    "assets/emojis/1.gif","assets/emojis/2.gif","assets/emojis/3.gif"
  ];

  List<List<String>> workoutArray = [
  ["General","All our dreams can come true, if we have the courage to pursue them. – Walt Disney"],
  ["General","The secret of getting ahead is getting started. – Mark Twain"],
  ["General","I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life and that is why I succeed. – Michael Jordan"],
  ["General","Don’t limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve. – Mary Kay Ash"],
  ["General","The best time to plant a tree was 20 years ago. The second best time is now. – Chinese Proverb"],
  ["General","Only the paranoid survive. – Andy Grove"],
  ["General","It’s hard to beat a person who never gives up. – Babe Ruth"],
  ["General","I wake up every morning and think to myself, ‘how far can I push this company in the next 24 hours.’ – Leah Busque"],
  ["General","If people are doubting how far you can go, go so far that you can’t hear them anymore. – Michele Ruiz"],
  ["General","We need to accept that we won’t always make the right decisions, that we’ll screw up royally sometimes – understanding that failure is not the opposite of success, it’s part of success. – Arianna Huffington"],
  ["General","Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE. – Joss Whedon"],
  ["General","You’ve gotta dance like there’s nobody watching, love like you’ll never be hurt, sing like there’s nobody listening, and live like it’s heaven on earth. – William W. Purkey"],
  ["General","Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.– Neil Gaiman"],
  ["General","Everything you can imagine is real.– Pablo Picasso"],
  ["General","When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us. – Helen Keller"],
  ["General","Do one thing every day that scares you.– Eleanor Roosevelt"],
  ["General","It’s no use going back to yesterday, because I was a different person then.– Lewis Carroll"],
  ["General","Smart people learn from everything and everyone, average people from their experiences, stupid people already have all the answers. – Socrates"],
  ["General","Do what you feel in your heart to be right – for you’ll be criticized anyway.– Eleanor Roosevelt"],
  ["General","Happiness is not something ready made. It comes from your own actions. – Dalai Lama"],
  ["General","Whatever you are, be a good one. – Abraham Lincoln"],
  ["General","The same boiling water that softens the potato hardens the egg. It’s what you’re made of. Not the circumstances. – Unknown"],
  ["General","If we have the attitude that it’s going to be a great day it usually is. – Catherine Pulsifier"],
  ["General","You can either experience the pain of discipline or the pain of regret. The choice is yours.  – Unknown"],
  ["General","Impossible is just an opinion. – Paulo Coelho"],
  ["General","Your passion is waiting for your courage to catch up. – Isabelle Lafleche"],
  ["General","Magic is believing in yourself. If you can make that happen, you can make anything happen. – Johann Wolfgang Von Goethe"],
  ["General","If something is important enough, even if the odds are stacked against you, you should still do it. – Elon Musk"],
  ["General","Hold the vision, trust the process. – Unknown"],
  ["General","Don’t be afraid to give up the good to go for the great. – John D. Rockefeller"],
  ["General","People who wonder if the glass is half empty or full miss the point. The glass is refillable. – Unknown"],
  ["General","Just another Magic Monday – Unknown"],
  ["General","One day or day one. You decide. – Unknown"],
  ["General","It’s Monday… time to motivate and make dreams and goals happen. Let’s go! – Heather Stillufsen"],
  ["General","It was a Monday and they walked on a tightrope to the sun.– Marcus Zusak"],
  ["General","Goodbye blue Monday. – Kurt Vonnegut"],
  ["General","So. Monday. We meet again. We will never be friends—but maybe we can move past our mutual enmity toward a more-positive partnership. – Julio-Alexi Genao"],
  ["General","When life gives you Monday, dip it in glitter and sparkle all day. – Ella Woodword"],

  ["General","No one is to blame for your future situation but yourself. If you want to be successful, then become “Successful.– Jaymin Shah"],
  ["General","Things may come to those who wait, but only the things left by those who hustle.– Abraham Lincoln"],
  ["General","Everything comes to him who hustles while he waits.– Thomas Edison"],
  ["General","Every sucessful person in the world is a hustler one way or another. We all hustle to get where we need to be. Only a fool would sit around and wait on another man to feed him. – K’wan"],
  ["General","Invest in your dreams. Grind now. Shine later. – Unknown"],
  ["General","Hustlers don’t sleep, they nap. – Unknown"],
  ["General","Greatness only comes before hustle in the dictionary. – Ross Simmonds"],
  ["General","Without hustle, talent will only carry you so far. – Gary Vaynerchuk"],
  ["General","Work like there is someone working twenty four hours a day to take it away from you. – Mark Cuban"],
  ["General","Hustle in silence and let your success make the noise. – Unknown"],
  ["General","We are what we repeatedly do. Excellence, then, is not an act, but a habit. – Aristotle"],
  ["General","If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on. – Sheryl Sandberg"],
  ["General","I always did something I was a little not ready to do. I think that’s how you grow. When there’s that moment of ‘Wow, I’m not really sure I can do this,’ and you push through those moments, that’s when you have a breakthrough. – Marissa Mayer"],
  ["General","If you hear a voice within you say ‘you cannot paint,’ then by all means paint and that voice will be silenced. – Vincent Van Gogh"],
  ["General","How wonderful it is that nobody need wait a single moment before starting to improve the world. – Anne Frank"],
  ["General","Some people want it to happen, some wish it would happen, others make it happen. – Michael Jordan"],
  ["General","Great things are done by a series of small things brought together – Vincent Van Gogh"],
  ["General","If you hire people just because they can do a job, they’ll work for your money. But if you hire people who believe what you believe, they’ll work for you with blood and sweat and tears. – Simon Sinek"],
  ["General","Very often, a change of self is needed more than a change of scene.’ – A.C. Benson"],
  ["General","Leaders can let you fail and yet not let you be a failure. – Stanley McChrystal"],
  ["General","It’s not the load that breaks you down, it’s the way you carry it. – Lou Holtz"],
  ["General","The hard days are what make you stronger. – Aly Raisman"],
  ["General","If you believe it’ll work out, you’ll see opportunities. If you don’t believe it’ll work out, you’ll see obstacles. – Wayne Dyer"],
  ["General","Keep your eyes on the stars, and your feet on the ground. – Theodore Roosevelt"],
  ["General","You can waste your lives drawing lines. Or you can live your life crossing them. – Shonda Rhimes"],
  ["General","You’ve got to get up every morning with determination if you’re going to go to bed with satisfaction. – George Lorimer"],
  ["General","I now tried a new hypothesis: It was possible that I was more in charge of my happiness than I was allowing myself to be. – Michelle Obama"],
  ["General","In a gentle way, you can shake the world. – Mahatma Gandhi"],
  ["General","If opportunity doesn’t knock, build a door. – Kurt Cobain"],
  ["General","Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart. – Roy T. Bennett"],
  ["General","Work hard in silence, let your success be the noise. – Frank Ocean"],
  ["General","Don’t say you don’t have enough time. You have exactly the same number of hours per day that were given to Helen Keller, Pasteur, Michelangelo, Mother Teresa, Leonardo Da Vinci, Thomas Jefferson, and Albert Einstein. – H. Jackson Brown Jr."],
  ["General","Hard work beats talent when talent doesn’t work hard. – Tim Notke"],
  ["General","If everything seems to be under control, you’re not going fast enough. – Mario Andretti"],
  ["General","Opportunity is missed by most people because it is dressed in overalls and looks like work. – Thomas Edison"],
  ["General","The only difference between ordinary and extraordinary is that little extra. – Jimmy Johnson"],
  ["General","The best way to appreciate your job is to imagine yourself without one. – Oscar Wilde"],
  ["General","Unsuccessful people make their decisions based on their current situations. Successful people make their decisions based on where they want to be. – Benjamin Hardy"],
  ["General","Never stop doing your best just because someone doesn’t give you credit. – Kamari aka Lyrikal"],
  ["General","Work hard for what you want because it won’t come to you without a fight. You have to be strong and courageous and know that you can do anything you put your mind to. If somebody puts you down or criticizes you, just keep on believing in yourself and turn it into something positive. – Leah LaBelle"],
  ["General","Work hard, be kind, and amazing things will happen. – Conan O’Brien"],
  ["General","The miracle is not that we do this work, but that we are happy to do it. – Mother Teresa"],
  ["General","Never give up on a dream just because of the time it will take to accomplish it. The time will pass anyway. – Earl Nightingale"],
  ["General","If you work on something a little bit every day, you end up with something that is massive. – Kenneth Goldsmith"],
  ["General","The big secret in life is that there is no secret. Whatever your goal, you can get there if you’re willing to work. – Oprah Winfrey"],
  ["General","If you cannot do great things, do small things in a great way. – Napoleon Hill"],
  ["General","Never allow a person to tell you no who doesn’t have the power to say yes. – Eleanor Roosevelt"],
  ["General","At any given moment you have the power to say: this is not how the story is going to end. – Unknown"],
  ["General","Amateus sit around and wait for inspiration. The rest of us just get up and go to work. – Stephen King"],
  ["General","Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven’t found it yet, keep looking. Don’t settle. As with all matters of the heart, you’ll know when you find it. – Steve Jobs"],
  ["General","Nothing will work unless you do. – Maya Angelou"],
  ["General","Sometimes when you’re in a dark place you think you’ve been buried but you’ve actually been planted. – Christine Caine"],
  ["General","Don’t limit your challenges. Challenge your limits. – Unknown"],
  ["General","Whenever you find yourself doubting how far you can go, just remember how far you have come. – Unknown"],
  ["General","Everyone has inside them a piece of good news. The good news is you don’t know how great you can be! How much you can love! What you can accomplish! And what your potential is. – Anne Frank"],
  ["General","Some luck lies in not getting what you thought you wanted but getting what you have, which once you have got it you may be smart enough to see is what you would have wanted had you known. – Garrison Keillor"],
  ["General","Don’t quit yet, the worst moments are usually followed by the most beautiful silver linings. You have to stay strong, remember to keep your head up and remain hopeful. – Unknown"],
  ["General","When written in Chinese the word “crisis” is composed of two characters – one represents danger and the other represents opportunity. – John F Kennedy"],
  ["General","Good. Better. Best. Never let it rest. ‘Til your good is better and your better is best. – St. Jerome."],
  ["General","In the middle of every difficulty lies opportunity. – Albert Einstein"],
  ["General","Start where you are. Use what you have. Do what you can. – Arthur Ashe"],
  ["General","Dreams don’t work unless you do. – John C. Maxwell"],
  ["General","Go the extra mile. It’s never crowded there. – Dr. Wayne D. Dyer"],
  ["General","Keep your face always toward the sunshine – and shadows will fall behind you. – Walt Whitman"],
  ["General","What defines us is how well we rise after falling. – Lionel from Maid in Manhattan Movie"],

  ["General","Make each day your masterpiece. – John Wooden"],
  ["General","Wherever you go, go with all your heart – Confucius"],
  ["General","Turn your wounds into wisdom – Oprah"],
  ["General","We can do anything we want to if we stick to it long enough. – Helen Keller"],
  ["General","Begin anywhere. – John Cage"],
  ["General","Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do. – Pele"],
  ["General","Would you like me to give you a formula for success? It’s quite simple, really: Double your rate of failure. You are thinking of failure as the enemy of success. But it isn’t at all. You can be discouraged by failure or you can learn from it, so go ahead and make mistakes. Make all you can. Because remember that’s where you will find success. – Thomas J. Watson"],
  ["General","Every champion was once a contender that didn’t give up. – Gabby Douglas"],
  ["General","To be a champion, I think you have to see the big picture. It’s not about winning and losing; it’s about every day hard work and about thriving on a challenge. It’s about embracing the pain that you’ll experience at the end of a race and not being afraid. I think people think too hard and get afraid of a certain challenge. – Summer Sanders"],
  ["General","Don’t dream about success. Get out there and work for it."],
  ["General","The difference between successful people and very successful people is that very successful people say ‘no’ to almost everything. – Warren Buffett"],
  ["General","You can cry, scream, and bang your head in frustration but keep pushing forward. It’s worth it."],
  ["General","I hated every minute of training, but I said, ‘Don’t quit. Suffer now and live the rest of your life as a champion. – Muhammad Ali"],
  ["General","Opportunities don’t happen. You create them. – Chris Grosser"],
  ["General","Success is liking yourself, liking what you do, and liking how you do it. – Maya Angelou"],
  ["General","If you obey all the rules, you miss all the fun. – Katharine Hepburn"],
  ["General","You were born to be a player. You were meant to be here. This moment is yours. – Herb Brooks"],
  ["General","Life is not what you alone make it. Life is the input of everyone who touched your life and every experience that entered it. We are all part of one another. – Yuri Kochiyama"],
  ["General","When you reach the end of your rope, tie a knot and hang out. – Abraham Lincoln"],
  ["General","Never regret anything that made you smile. – Mark Twain"],
  ["General","You must do the thing you think you cannot do. – Eleanor Roosevelt"],
  ["General","If you want to fly give up everything that weighs you down. – Buddha"],
  ["General","Doubt kills more dreams than failure ever will. – Suzy Kassem"],
  ["General","I never lose. Either I win or learn. – Nelson Mandela"],
  ["General","Today is your opportunity to build the tomorrow you want.” – Ken Poirot"],
  ["General","Getting over a painful experience is much like crossing the monkey bars. You have to let go at some point in order to move forward. – C.S. Lewis"],
  ["General","Focus on being productive instead of busy. – Tim Ferriss"],
  ["General","You don’t need to see the whole staircase, just take the first step. – Martin Luther King Jr."],
  ["General","It’s not all sunshine and rainbows, but a good amount of it actually is. – Unknown"],
  ["General","When someone says you can’t do it, do it twice and take pictures."],
  ["General","I didn’t get there by wishing for it, but by working for it. – Estee Lauder"],
  ["General","She remembered who she was and the game changed. – Lalah Deliah"],
  ["General","If you’re too comfortable, it’s time to move on. Terrified of what’s next? You’re on the right track. – Susan Fales-Hill"],
  ["General","Be happy with what you have while working for what you want. – Helen Keller"],
  ["General","Sunshine all the time makes a desert. – Arabic Proverb"],
  ["General","The big lesson in life is never be scared of anyone or anything. – Frank Sinatra"],
  ["General","You’re so much stronger than your excuses"],
  ["General","Don’t compare yourself to others. Be like the sun and the moon and shine when it’s your time."],

  ["General","Don’t tell everyone your plans, instead show them your results."],
  ["General","I choose to make the rest of my life, the best of my life. – Louise Hay"],
  ["General","Nothing can dim the light that shines from within. – Maya Angelou"],
  ["General","Be so good they can’t ignore you. – Steve Martin"],
  ["General","Take criticism seriously, but not personally. If there is truth or merit in the criticism, try to learn from it. Otherwise, let it roll right off you. – Hillary Clinton"],
  ["General","This is a reminder to you to create your own rule book, and live your life the way you want it. – Reese Evans"],
  ["General","If you don’t get out of the box you’ve been raised in, you won’t understand how much bigger the world is. – Angelina Jolie"],
  ["General","Do the best you can. No one can do more than that. – John Wooden"],
  ["General","Do what you can, with what you have, where you are. – Theodore Roosevelt"],
  ["General","It’s never too late to be what you might’ve been. – George Eliot"],
  ["General","If you can dream it, you can do it. – Walt Disney"],
  ["General","Trust yourself that you can do it and get it. – Baz Luhrmann"],
  ["General","Don’t let what you can’t do interfere with what you can do. – Unknown"],
  ["General","You can do anything you set your mind to. – Benjamin Franklin"],
  ["General","All we can do is the best we can do. – David Axelrod"],
  ["General","You never know what you can do until you try. – William Cobbett"],
  ["General","Twenty years from now you’ll be more disappointed by the things you did not do than the ones you did. – Mark Twain"],
  ["General","I am thankful for all of those who said NO to me. It’s because of them I’m doing it myself. – Wayne W. Dyer"],
  ["General","It’s okay to outgrow people who don’t grow. Grow tall anyways."],
  ["General","When you feel like giving up just remember that there are a lot of people you still have to prove wrong."],
  ["General","The world is full of nice people. If you can’t find one, be one.” – Nishan Panwar"],
  ["General","Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going. – Chantal Sutherland"],
  ["General","A walk to a nearby park may give you more energy and inspiration in life than spending two hours in front of a screen. – Tsang Lindsay"],
  ["General","If you can’t do anything about it then let it go. Don’t be a prisoner to things you can’t change. – Tony Gaskins"],
  ["General","You can’t go back and change the beginning, but you can start where you are and change the ending. – C.S. Lewis"],
  ["General","Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself. – Rumi"],
  ["General","I can and I will. Watch me. – Carrie Green"],
  ["General","Try not to become a man of success, but rather become a man of value. – Albert Einstein"],
  ["General","A winner is a dreamer who never gives up. – Nelson Mandela"],
  ["General","If you don’t have a competitive advantage, don’t compete. – Jack Welch"],
  ["General","The only thing standing in the way between you and your goal is the BS story you keep telling yourself as to why you can’t achieve it. – Jordan Belfort"],
  ["General","What is life without a little risk? – J.K. Rowling"],
  ["General","Only do what your heart tells you. – Princess Diana"],
  ["General","If it’s a good idea, go ahead and do it. It’s much easier to apologize than it is to get permission. – Grace Hopper"],
  ["General","I attribute my success to this: I never gave or took an excuse. – Florence Nightingale"],
  ["General","The question isn’t who is going to let me; it’s who is going to stop me. – Ayn Rand"],
  ["General","A surplus of effort could overcome a deficit of confidence. – Sonia Sotomayer"],
  ["General","And, when you want something, all the universe conspires in helping you to achieve it. – Paulo Coelho, The Alchemist"],
  ["General","Your playing small does not serve the world. There is nothing enlightened about shrinking so that other people won’t feel insecure around you. We are all meant to shine, as children do.” – Marianne Williamson"],
  ["General","Don’t think or judge, just listen.– Sarah Dessen, Just Listen"],
  ["General","I can be changed by what happens to me. But I refuse to be reduced by it. – Maya Angelou, Letter to My Daughter"],
  ["General","Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that. – Martin Luther King Jr., A Testament of Hope: The Essential Writings and Speeches"],
  ["General","You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You’re on your own. And you know what you know. And YOU are the one who’ll decide where to go… – Dr. Seuss"],
  ["General","It’s the possibility of having a dream come true that makes life interesting. – Paulo Coelho, The Alchemist"],
  ["General","There is some good in this world, and it’s worth fighting for. – J.R.R. Tolkien"],
  ["General","Learn to light a candle in the darkest moments of someone’s life. Be the light that helps others see; it is what gives life its deepest significance.– Roy T. Bennett"],
  ["General","Atticus, he was real nice.” “Most people are, Scout, when you finally see them. – Harper Lee"],
  ["General","Oh yes, the past can hurt. But the way I see it, you can either run from it or learn from it. – The Lion King"],
  ["General","We’re on the brink of adventure, children. Don’t spoil it with questions. – Mary Poppins"],
  ["General","Life moves pretty fast. If you don’t stop and look around once in a while, you could miss it.– Ferris Bueller"],
  ["General","I just wanna let them know that they didn’t break me. – Pretty in Pink"],
  ["General","I’m going to make him an offer he can’t refuse. – The Godfather"],
  ["General","No one has ever made a difference by being like everyone else. – The Greatest Showman"],
  ["General","Spend a little more time trying to make something of yourself and a little less time trying to impress people. – The Breakfast Club"],
  ["General","The problem is not the problem. The problem is your attitude about the problem.” – Pirates of the Caribbean"],
  ["General","Remember you’re the one who can fill the world with sunshine. – Snow White"],
  ["General","You’ll have bad times, but it’ll always wake you up to the good stuff you weren’t paying attention to. – Good Will Hunting"],
  ["General","And when you get the choice to sit it out or dance… I hope you dance. – I Hope You Dance, Lee Ann Womack"],
  ["General","Just because it burns doesn’t mean you’re gonna die, you’ve gotta get up and try. – Try, P!nk"],
  ["General","Life’s a game made for everyone and love is the prize – Wake Me Up, Avicii"],
  ["General","It’s a new dawn, it’s a new day, it’s a life for me and I’m feeling good. – Feeling Good, Michael Buble"],
  ["General","Today is where your book begins, the rest is still unwritten. – Unwritten, Natasha Bedingfield"],
  ["General","A million dreams for the world we’re gonna make’ – The Greatest Showman"],
  ["General","It’s my life It’s now or never I ain’t gonna live forever I just want to live while I’m alive – It’s My Life, Bon Jovi"],
  ["General","I could build a castle out of all the bricks they threw at me – New Romantics, Taylor Swift"],
  ["General","Cause the grass is greener under me bright as technicolor, I can tell that you can see – Sorry Not Sorry, Demi Lovato"],
  ["General","Every day women and men become legends – Glory, John Legend and Common"],
  ["General","On my own I will just create and if it works, it works. And if it doesn’t, I’ll just create something else. I don’t have any limitations on what I think I could do or be. – Oprah Winfrey"],
  ["General","We realize the importance of our voices only when we are silenced. – Malala Yousafzai"],
  ["General","We need to accept that we won’t always make the right decisions, that we’ll screw up royally sometimes – understanding that failure is not the opposite of success, it’s part of success. – Arianna Huffington"],
  ["General","Don’t compromise yourself. You’re all you’ve got. – Janis Joplin"],
  ["General","When something I can’t control happens, I ask myself: Where is the hidden gift? Where is the positive in this? – Sara Blakely"],
  ["General","Doubt is a killer. You just have to know who you are and what you stand for.  – Jennifer Lopez"],
  ["General","Be a first rate version of yourself, not a second rate version of someone else. – Judy Garland"],
  ["General","Learn from the mistakes of others. You can’t live long enough to make them all yourself. – Eleanor Roosevelt"],
  ["General","I was smart enough to go through any door that opened. – Joan Rivers"],
  ["General","Done is better than perfect. – Sheryl Sandberg"],
  ["General","If your dreams don’t scare you, they are too small. – Richard Branson"],
  ["General","Today is your opportunity to build the tomorrow you want. – Ken Poirot"],
  ["General","What hurts you blesses you. – Rumi"],
  ["General","Nothing is stronger than a broken man rebuilding himself. – Unknown"],
  ["General","I always thought it was me against the world and then one day I realized it’s just me against me. – Kendrick Lamar"],
  ["General","A man is not finished when he is defeated. He is finished when he quits. – Richard Nixon"],
  ["General","The world is changed by your example, not by your opinion. – Paulo Coelho"],
  ["General","If you don’t build your dream, someone else will hire you to help them build theirs. – Dhirubhai Ambani"],
  ["General","I’m not in this world to live up to your expectations and you’re not in this world to live up to mine. – Bruce Lee"],
  ["General","What’s right is what’s left if you do everything else wrong. – Robin Williams"],
  ["General","Be a fruitloop in a world of Cheerios. – Unknown"],
  ["General","Dream beautiful dreams, and then work to make those dreams come true. – Spencer W. Kimball"],
  ["General","Be the change you want to see in the world. – Mahatma Gandhi"],
  ["General","Believe you can and you will. – Unknown"],
  ["General","Do the right thing even when no one is looking. – Unknown"],
  ["General","Make today the day you learn something new. –Unknown"],
  ["General","Be silly, be honest, be kind.’ – Ralph Waldo Emerson"],
  ["General","If you think someone could use a friend. Be one. – Unknown"],
  ["General","It’s not what happens to you but how you react to it that matters. – Epictetus"],
  ["General","You don’t have to be perfect to be amazing. – Unknown"],
  ["General","The best way to predict your future is to create it. – Abraham Lincoln"],
  ["General","Successful people are not gifted; they just work hard, then succeed on purpose. – G.K. Nielson"],
  ["General","Don’t watch the clock; do what it does. Keep going. – Sam Levenson"],
  ["General","Work until your rivals become idols. – Drake"],
  ["General","You can’t have a million dollar dream on a minimum wage work ethic. – Unknown"],
  ["General","You must do the kind of things you think you cannot do. – Eleanor Roosevelt"],
  ["General","It’s not what you do once in a while it’s what you do day in and day out that makes the difference. – Jenny Craig"],
  ["General","Falling down is how we grow. Staying down is how we die.” – Brian Vaszily"],
  ["General","Wealth isn’t about having a lot of money it’s about having a lot of options. – Chris Rock"],
  ["General","There may be people that have more talent than you, but there’s no excuse for anyone to work harder than you. – Derek Jeter"],
  ["General","Always be careful when you follow the masses. Sometimes the m is silent. – Unknown"],
  ["General","Never let anyone treat you like you’re regular glue. You’re glitter glue."],
  ["General","If you fall – I’ll be there. – Floor"],
  ["General","When Plan “A” doesn’t work, don’t worry, you still have 25 more letters to go through. – Unknown"],
  ["General","If you think you’re too small to make a difference, try sleeping with a mosquito. – Dalai Lama"],
  ["General","If at first you don’t succeed, then skydiving isn’t for you. – Steven Wright"],
  ["General","A diamond is merely a lump of coal that did well under pressure. – Unknown"],
  ["General","I find television very educational. Every time someone turns it on, I go in the other room and read a book.’ – Groucho Marx"],
  ["General","Opportunity does not knock, it presents itself when you beat down the door. – Kyle Chandler"],
  ["General","I have not failed. I’ve just found 10,000 ways that won’t work. – Thomas A. Edison"],
  ["General","You could rattle the stars,” she whispered. “You could do anything, if only you dared. And deep down, you know it, too. That’s what scares you most. – Sarah J. Maas"],
  ["General","It is only when we take chances, when our lives improve. The initial and the most difficult risk that we need to take is to become honest. – Walter Anderson"],
  ["General","The adventure of life is to learn. The purpose of life is to grow. The nature of life is to change. The challenge of life is to overcome. The essence of life is to care. The opportunity of like is to serve. The secret of life is to dare. The spice of life is to befriend. The beauty of life is to give. – William Arthur Ward"],
  ["General","When you know your worth, no one can make you feel worthless. – Unknown"],
  ["General","If you’ve never eaten while crying you don’t know what life tastes like. – Johann Wolfgang von Goethe"],
  ["General","If you judge people, you have no time to love them. – Mother Teresa"],
  ["General","Once you do know what the question actually is, you’ll know what the answer means.– Douglas Adams"],
  ["General","The two most important days in your life are the day you’re born and the day you find out why. – Mark Twain"],
  ["General","Nothing ever goes away until it teaches us what we need to know. – Pema Chodron"],
  ["General","We can see through others only when we can see through ourselves. – Bruce Lee"],
  ["General","You don’t get paid for the hour. You get paid for the value you bring to the hour. – JIm Rohn"],
  ["General","Be an Encourager: When you encourage others, you boost their self-esteem, enhance their self-confidence, make them work harder, lift their spirits and make them successful in their endeavors. Encouragement goes straight to the heart and is always available. Be an encourager. Always. – Roy T. Bennett"],
  ["General","Remember, you have been criticizing yourself for years and it hasn’t worked. Try approving of yourself and see what happens. –Louise L Hay"],
  ["General","Work hard and don’t give up hope. Be open to criticism and keep learning. Surround yourself with happy, warm and genuine people. – Tena Desae"],
  ["General","Stay true to yourself, yet always be open to learn. Work hard, and never give up on your dreams, even when nobody else believes they can come true but you. These are not cliches but real tools you need no matter what you do in life to stay focused on your path. – Phillip Sweet"],
  ["General","You can control two things: your work ethic and your attitude about anything. – Ali Krieger"],
  ["General","Success isn’t always about greatness. It’s about consistency. Consistent hard work leads to success. Greatness will come. – Dwayne Johnson"],
  ["General","One, remember to look up at the stars and not down at your feet. Two, never give up work. Work gives you meaning and purpose and life is empty without it. Three, if you are lucky enough to find love, remember it is there and don’t throw it away. – Stephen Hawking"],
  ["General","Some women choose to follow men, and some women choose to follow their dreams. If you’re wondering which way to go, remember that your career will never wake up and tell you that it doesn’t love you anymore. – Lady Gaga"],
  ["General","Read, read, read. Read everything — trash, classics, good and bad, and see how they do it. Just like a carpenter who works as an apprentice and studies the master. Read! You’ll absorb it. Then write. If it’s good, you’ll find out. If it’s not, throw it out of the window.– William Faulkner"],
  ["General","I really appreciate people who correct me, because without them, I might have been repeating mistakes for a long time. – Mufti Menk"],
  ["General","Motivation comes from working on things we care about. – Sheryl Sandberg"],
  ["General","If today you are a little bit better than you were yesterday, then that’s enough. – David A. Bednar"],
  ["General","Education is the most powerful weapon which you can use to change the world. – Nelson Mandela"],
  ["General","If you can’t make a mistake you can’t make anything. – Marva Collin"],
  ["General","Practice makes progress not perfect. – Unknown"],
  ["General","You may be disappointed if you fail, but you’ll be doomed if you don’t try.” – Beverly Sills"],
  ["General","Failure is the tuition you pay for success.” – Walter Brunell"],
  ["General","If we wait until we’re ready, we’ll be waiting for the rest of our lives.” – Lemony Snicket"],
  ["General","Study while others are sleeping; work while others are loafing; prepare while others are playing; and dream while others are wishing. – William Arthur Ward"],
  ["General","The best revenge is massive success. – Frank Sinatra"],
  ["General","What’s on the other side of fear? Nothing. – Jamie Foxx"],
  ["General","Quitters never win. Winners never quit! – Dr. Irene C. Kassorla"],
  ["General","It’s not your salary that makes you rich, it’s your spending habits. – Charles A. Jaffe"],
  ["General","If there is no wind, row. – Latin Proverb"],
  ["General","It’s never too late for a new beginning in your life. – Joyce Meyers"],
  ["General","If opportunity doesn’t knock build a door. – Milton Berle"],
  ["General","Action is the foundational key to all success. – Pablo Picasso"],
  ["General","I never dreamt of success. I worked for it. – Estee Lauder"],
  ["General","A goal is a dream with a deadline. – Napoleon Hill"],
  ["General","Be the change that you wish to see in the world.– Mahatma Gandhi"],
  ["General","Never doubt that a small group of thoughtful, committed, citizens can change the world. Indeed, it is the only thing that ever has. – Margaret Mead"],
  ["General","Change is painful, but nothing is as painful as staying stuck somewhere you don’t belong. – Mandy Hale"],
  ["General","Those who cannot change their minds cannot change anything. – George Bernard Shaw"],
  ["General","Everyone thinks of changing the world, but no one thinks of changing himself. – Leo Tolstoy"],
  ["General","Change is the law of life. And those who look only to the past or present are certain to miss the future. – John F. Kennedy"],
  ["General","We delight in the beauty of the butterfly, but rarely admit the changes it has gone through to achieve that beauty. – Maya Angelou"],
  ["General","Dreams are the seeds of change. Nothing ever grows without a seed, and nothing ever changes without a dream. – Debby Boone"],
  ["General","Here’s to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They’re not fond of rules. And they have no respect for the status quo. You can quote them, disagree with them, glorify or vilify them. About the only thing you can’t do is ignore them. Because they change things. They push the human race forward. And while some may see them as the crazy ones, we see genius. Because the people who are crazy enough to think they can change the world, are the ones who do.– Rob Siltanen"],
  ["General","It’s not your salary that makes you rich, it’s your spending habits. – Charles A. Jaffe"],
  ["General","Don’t stay in bed unless you can make money in bed. – George Burns"],
  ["General","You must gain control over your money or the lack of it will forever control you. – Dave Ramsey"],
  ["General","Only buy something that you’d be perfectly happy to hold if the market shuts down for ten years.– Warren Buffett"],
  ["General","That man is richest whose pleasures are cheapest.– Henry David Thoreau"],
  ["General","Money can’t buy happiness, but it can make you awfully comfortable while you’re being miserable.” – Clare Boothe Luce"],
  ["General","Money is only a tool. It will take you wherever you wish, but it will not replace you as the driver.” – Jen Sincero"],
  ["General","You’re already a financial trader. You might not think of it in just this way, but if you work for a living, you’re trading your time for money. Frankly, it’s just about the worst trade you can make. Why? You can always get more money, but you can’t get more time. – Tony Robbins"],
  ["General","You can only become truly accomplished at something you love. Don’t make money your goal. Instead pursue the things you love doing and then do them so well that people can’t take their eyes off of you.– Maya Angelou"],
  ["General","Formal education will make you a living; self-education will make you a fortune. –Jim Rohn"],
  ["General","Don’t give up, don’t take anything personally, and don’t take no for an answer. – Sophia Amoruso"],
  ["General","Don’t be upset when people reject you. Nice things are rejected all the time by people who can’t afford them. – Unknown"],
  ["General","The secret of change is to focus all your energy, not on fighting the old, but on building the new. – Socrates"],
  ["General","There are two rules for success. 1: Never reveal everything you know. – Roger H. Lincoln"],
  ["General","Your positive action combined with positive thinking results in success. – Shiv Khera"],
  ["General","Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do  – Pele"],
  ["General","If you talk about it, it’s a dream. If you envision it, it’s possible. If you schedule it, it’s real. – Tony Robbins"],
  ["General","Forget your excuses. You either want it bad or don’t want it at all. – Unknown"],
  ["General","The key to success is to start before you are ready. – Marie Forleo"],
  ["General","I want to be remembered as the one who tried. – Dr. Dorothy Height"],
  ["General","How to stop time: kiss. How to travel in time: read. How to escape time: music. How to feel time: write. How to release time: breathe. – Matt Haig"],
  ["General","Time is what we want most and what we use worst. – William Penn"],
  ["General","It’s not about having enough time, it’s about making enough time.– Rachael Bermingham"],
  ["General","Time is money. – Benjamin Franklin"],
  ["General","Better three hours too soon than a minute too late. – William Shakespeare"],
  ["General","The trouble is, you think you have time. –Buddha"],
  ["General","The greatest gift you could give someone is your time. Because when you give your time, you are giving a portion of your life you can’t get back. – Unknown"],
  ["General","Punctuality is not just limited to arriving at a place at right time, it is also about taking actions at right time. – Amit Kalantri"],
  ["General","Time always exposes what you mean to someone. – Unknown"],
  ["General","After all this time? Always. – J.K. Rowling"],
  ["General","You can’t let your failures define you. You have to let your failures teach you. – Barack Obama"],
  ["General","Success is a lousy teacher. It seduces smart people into thinking they can’t lose. – Bill Gates"],
  ["General","Stop being afraid of what could go wrong, and start being excited about what could go right. – Tony Robbins"],
  ["General","Think like a Queen. A Queen is not afraid to fail. Failure is another stepping stone to greatness. – Oprah"],
  ["General","Defeat is a state of mind; no one is ever defeated until defeat is accepted as a reality. – Bruce Lee"],
  ["General","Our greatest glory is not in never falling, but in rising every time we fall.” – Confucius"],
  ["General","It is impossible to live without failing at something, unless you live so cautiously that you might as well not have lived at all – in which case, you fail by default. – J.K. Rowling"],
  ["General","Success is going from failure to failure without losing your enthusiasm – Winston Churchill"],
  ["General","Why do we grieve failures longer than we celebrate wins? – Komal Kapoor"],
  ["General","Failure isn’t the end of the road. It’s a big red flag saying to you ‘Wrong way. Turn around.’ – Oprah Winfrey"],
  ["General","Whenever you feel like a failure, just remember that even Coca Cola only sold 25 bottles their first year"],
  ["General","No matter what people tell you, words and ideas can change the world. – Robin Williams"],
  ["General","Life is like riding a bicycle. To keep your balance, you must keep moving. – Albert Einstein"],
  ["General","You’re off to Great Places! Today is your day! Your mountain is waiting, so… get on your way! – Dr. Seuss"],
  ["General","When thinking about life, remember this: no amount of guilt can change the past and no amount of anxiety can change the future. – Unknown"],
  ["General","A negative mind will never give you a positive life. – Unknown"],
  ["General","Everything is hard before it is easy. – Goethe"],
  ["General","At the end of the day we can endure much more than we think we can. – Frida Kahlo"],
  ["General","Whatever you do never run back to what broke you. – Frank Ocean"],
  ["General","Take the risk or lose the chance. – Unknown"],
  ["General","I didn’t learn to be quiet when I had an opinion. The reason they knew who I was is because I told them. – Ursula Burns"],
  ["General","Never regret a day in your life. Good days bring you happiness and bad days give you experience. – Unknown"],
  ["General","Either you run the day, or the day runs you. – Jim Rohn"],
  ["General","Only I can change my life. No one can do it for me. – Carol Burnett"],
  ["General","Life is 10% what happens to you and 90% how you react to it. – Charles R. Swindoll"],
  ["General","Act as if what you do makes a difference. It does. – William James"],
  ["General","When the pain of an obstacle is too great, challenge yourself to be stronger."],
  ["General","Even if you’re on the right track, you’ll get run over if you just sit there. – Will Rogers"],
  ["General","Very little is needed to make a happy life; it is all within yourself, in your way of thinking. – Marcus Aurelius"],
  ["General","Life is either a daring adventure or nothing at all.” Helen Keller"],
  ["General","The woman who follows the crowd will usually go no further than the crowd. The woman who walks alone is likely to find herself in places no one has been before.’ – Albert Einstein"],
  ["General","Life’s like a movie, write your own ending. Keep believing, keep pretending. – Jim Hensen"],
  ["General","A reader lives a thousand lives before he dies. The man who never reads lives only one. – George R.R. Martin"],
  ["General","I find television very educating. Every time somebody turns on the set, I go into the other room and read a book.– Groucho Marx"],
  ["General","Never stop learning because life never stops teaching. –Unknown"],
  ["General","If you’re the smartest person in the room, you’re in the wrong room. – Unknown"],
  ["General","The capacity to learn is a gift; the ability to learn is a skill; the willingness to learn is a choice.– Brian Herbert"],
  ["General","The man who does not read has no advantage over the man who cannot read.– Mark Twain"],
  ["General","To learn a language is to have one more window from which to look at the world. – Chinese Proverb"],
  ["General","I’m still learning.” – Michelangelo"],
  ["General","Live as if you were to die tomorrow. Learn as if you were to live forever. – Mahatma Gandhi"],
  ["General","Education is the most powerful weapon you can use to change the world. – Nelson Mandela"],
  ["General","Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength. – Arnold Schwarzenegger"],
  ["General","If it doesn’t challenge you, it doesn’t change you. – Fred DeVito"],
  ["General","A dream doesn’t become reality through magic; it takes sweat, determination and hard work. – Colin Powell"],
  ["General","Every night her thoughts weighed heavily on her soul but every morning she would get up and fight another day, every night she survived. – R.H. Sin"],
  ["General","Still, I rise.” – Maya Angelou"],
  ["General","The best thing you can do is MASTER the chaos in you. You are not thrown into the fire, you ARE the fire. – Mama Indigo"],
  ["General","Flowers grow back even after the harshest winters. You will too. – Jennae Cecilia"],
  ["General","Life has many ways of testing a person’s will, either by having nothing happen at all or by having everything happen all at once. – Paulo Coelho"],
  ["General","Be strong enough to let go and wise enough to wait for what you deserve. – Author Unknown"],
  ["General","It’s okay to be a glowstick: Sometimes we have to break before we shine. – Jadah Sellner"],
  ["General","What is coming is better than what is gone. – Unknown"],
  ["General","Attitude is a choice. Happiness is a choice. Optimism is a choice. Kindness is a choice. Giving is a choice. Respect is a choice. Whatever choice you make makes you. Choose wisely.– Roy T. Bennett"],
  ["General","Dwell on the beauty of life. Watch the stars, and see yourself running with them.– Marcus Aurelius"],
  ["General","Do something today that your future self will thank you for. –Unknown"],
  ["General","The greatest weapon against stress is the ability to choose one thought over another. – William James"],
  ["General","It takes nothing to join the crowd. It takes everything to stand alone. – Hans F. Hansen"],
  ["General","Your mind is powerful. When you fill it with positive thoughts your whole world will change. – Unknown"],
  ["General","Your only limit is your mind. – Unknown"],
  ["General","Stop being afraid of what can go wrong and start being positive about what can go right. – Unknown"],
  ["General","The difference between who you are and who you want to be is what you do. – Unknown"],
  ["General","You were born to win, but to be a winner, you must plan to win, prepare to win, and expect to win. – Zig Ziglar"],
  ["General","One thing’s for sure, if you don’t play, you don’t win. – Kylie Francis"],
  ["General","Winning means you’re willing to go longer, work harder, and give more than anyone else. – Vince Lombardi"],
  ["General","Talent wins games, but teamwork wins championships. – Michael Jordan"],
  ["General","When I win and when I lose, I take ownership of it, because I really am in charge of what I do. – Nicki Minaj"],
  ["General","A champion is afraid of losing. Everyone else is afraid of winning. – Billie Jean King"],
  ["General","Competing at the highest level is not about winning. It’s about preparation, courage, understanding, nurturing your people, and heart. Winning is the result. – Joe Torre"],
  ["General","A winner is a dreamer who never gives up. – Nelson Mandela"],
  ["General","The secret of your future is hidden in your daily routine. – Mike Murdock"],
  ["General","Losers quit when they fail. Winners fail until they succeed. –Robert T. Kiyosaki"],
  ["General","It is never too late to be what you might have been. – George Eliot"],
  ["General","Words can inspire, thoughts can provoke, but only action truly brings you closer to your dreams. – Brad Sugars"],
  ["General","Don’t stop when you are tired. Stop when you are done. – Unknown"],
  ["General","Don’t tell people about your dreams. Show them your dreams. – Unknown"],
  ["General","Revenge is a powerful motivator. – Marcus Luttrell"],
  ["General","Motivation may be what starts you off, but it’s habit that keeps you going back for more.  – Miya Yamanouchi"],
  ["General","I will not erase all my hard work this week because it’s the weekend. – Unknown"],
  ["General","It might not be easy but it’ll be worth it. – Unknown"],
  ["General","Make your fear of losing your greatest motivator. – Unknown"],
  ["General","You will never always be motivated, so you must learn to be disciplined.” –Unknown"],
  ["General","I’m not a product of my circumstances. I am a product of my decisions.” – Stephen Covey"],

  ["General","Success is not final; failure is not fatal: It is the courage to continue that counts.– Winston S. Churchill"],

  ["General","It is better to fail in originality than to succeed in imitation.– Herman Melville"],

  ["General","The road to success and the road to failure are almost exactly the same.– Colin R. Davis"],

  ["General","Success usually comes to those who are too busy to be looking for it.– Henry David Thoreau"],

  ["General","Opportunities don't happen. You create them.– Chris Grosser"],

  ["General","Don't be afraid to give up the good to go for the great.–John D. Rockefeller"],

  ["General","I find that the harder I work, the more luck I seem to have.– Thomas Jefferson"],

  ["General","There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.– Ray Goforth"],

  ["General","Successful people do what unsuccessful people are not willing to do. Don't wish it were easier; wish you were better.– Jim Rohn"],

  ["General","Try not to become a man of success. Rather become a man of value.– Albert Einstein"],

  ["General","Never give in except to convictions of honor and good sense.– Winston Churchill"],

  ["General","Stop chasing the money and start chasing the passion.– Tony Hsieh"],

  ["General","Success is walking from failure to failure with no loss of enthusiasm.– Winston Churchill"],

  ["General","I owe my success to having listened respectfully to the very best advice, and then going away and doing the exact opposite.– G. K. Chesterton"],

  ["General","Would you like me to give you a formula for success? It's quite simple, really: Double your rate of failure. You are thinking of failure as the enemy of success. But it isn't at all. You can be discouraged by failure or you can learn from it, so go ahead and make mistakes. Make all you can. Because remember that's where you will find success.– Thomas J. Watson"],

  ["General","If you are not willing to risk the usual, you will have to settle for the ordinary.- Jim Rohn"],

  ["General","The ones who are crazy enough to think they can change the world, are the ones that do.– Anonymous"],

  ["General","Do one thing every day that scares you.– Anonymous"],

  ["General","All progress takes place outside the comfort zone.– Michael John Bobak"],

  ["General","People who succeed have momentum. The more they succeed, the more they want to succeed, and the more they find a way to succeed. Similarly, when someone is failing, the tendency is to get on a downward spiral that can even become a self-fulfilling prophecy.– Tony Robbins"],

  ["General","Don't let the fear of losing be greater than the excitement of winning.– Robert Kiyosaki"],

  ["General","If you really look closely, most overnight successes took a long time.– Steve Jobs"],

  ["General","The real test is not whether you avoid this failure, because you won't. It's whether you let it harden or shame you into inaction, or whether you learn from it; whether you choose to persevere.– Barack Obama"],

  ["General","The only limit to our realization of tomorrow will be our doubts of today.– Franklin D. Roosevelt"],

  ["General","Character cannot be developed in ease and quiet. Only through experience of trial and suffering can the soul be strengthened, ambition inspired, and success achieved.– Helen Keller"],

  ["General","The way to get started is to quit talking and begin doing.– Walt Disney"],
  ["General","The successful warrior is the average man, with laser-like focus.– Bruce Lee"],
  ["General","There are no secrets to success. It is the result of preparation, hard work, and learning from failure.– Colin Powell"],

  ["General","Success seems to be connected with action. Successful people keep moving. They make mistakes, but they don't quit.– Conrad Hilton"],

  ["General","If you really want to do something, you'll find a way. If you don't, you'll find an excuse.– Jim Rohn"],

  ["General","I cannot give you the formula for success, but I can give you the formula for failure–It is: Try to please everybody.– Herbert Bayard Swope"],

  ["General","Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.– Albert Schweitzer"],

  ["General","Success isn't just about what you accomplish in your life; it's about what you inspire others to do.– Unknown"],

  ["General","Fall seven times and stand up eight.– Japanese Proverb"],

  ["General","Some people dream of success while others wake up and work.– Unknown"],

  ["General","If you can dream it, you can do it.– Walt Disney"],

  ["General","The difference between who you are and who you want to be is what you do.– Unknown"],

  ["General","A successful man is one who can lay a firm foundation with the bricks that other throw at him.– David Brinkley"],

  ["General","In order to succeed, your desire for success should be greater than your fear of failure.– Bill Cosby"],

  ["General","In order to succeed, we must first believe that we can.– Nikos Kazantzakis"],

  ["General","Many of life's failures are people who did not realize how close they were to success when they gave up.– Thomas Edison"],

  ["General","Don't be distracted by criticism. Remember–the only taste of success some people get is to take a bite out of you.– Zig Ziglar"],

  ["General","The secret of success is to do the common thing uncommonly well.– John D. Rockefeller Jr."],

  ["General","You know you are on the road to success if you would do your job, and not be paid for it.– Oprah Winfrey"],

  ["General","There is a powerful driving force inside every human being that, once unleashed, can make any vision, dream, or desire a reality.– Anthony Robbins"],

  ["General","The secret to success is to know something nobody else knows.– Aristotle Onassis"],

  ["General","I failed my way to success.– Thomas Edison"],

  ["General","I never dreamed about success, I worked for it.– Estee Lauder"],

  ["General","I never did anything worth doing by accident, nor did any of my inventions come indirectly through accident, except the phonograph. No, when I have fully decided that a result is worth getting, I go about it, and make trial after trial, until it comes.– Thomas Edison"],

  ["General","The only place where success comes before work is in the dictionary.– Vidal Sassoon"],

  ["General","Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it. I never heard of anyone ever stumbling on something sitting down.– Charles F. Kettering"],


  ["Love","I saw that you were perfect, and so I loved you. Then I saw that you were not perfect and I loved you even more. — Angelita Lim"],

  ["Love","I look at you and see the rest of my life in front of my eyes."],

  ["Love","The greatest happiness of life is the conviction that we are loved; loved for ourselves, or rather, loved in spite of ourselves. — Victor Hugo"],

  ["Love","All, everything that I understand, I only understand because I love. — Leo Tolstoy"],

  ["Love","I'm much more me when I'm with you."],

  ["Love","It's a very dangerous state. You are inclined to recklessness and kind of tune out the rest of your life and everything that's been important to you. It's actually not all that pleasurable. I don't know who the hell wants to get in a situation where you can't bear an hour without somebody's company. — Colin Firth"],


  ["Love","The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart. — Helen Keller"],

  ["Love","To love is nothing. To be loved is something. But to love and be loved, that’s everything. — T. Tolis"],

  ["Love","In order to be happy oneself it is necessary to make at least one other person happy. — Theodor Reik"],

  ["Love","Maybe the only vow we ever need to offer the one we love is this: I will never, not for a sliver of a second, make you feel alone. — Tyler Knott Gregson"],


  ["Love","There's no substitute for a great love who says, 'No matter what's wrong with you, you're welcome at this table.' — Tom Hanks"],

  ["Love","Being deeply loved by someone gives you strength, while loving someone deeply gives you courage. — Lao-Tzu"],

  ["Love","I have decided to stick to love; hate is too great a burden to bear. — Martin Luther King, Jr."],


  ["Love","Where there is love there is life. — Mahatma Gandhi"],


  ["Love","If I could give you one thing in life, I would give you the ability to see yourself through my eyes, only then would you realize how special you are to me."],


  ["Love","I can't promise to fix all your problems, but I can promise you won't have to face them all alone."],

  ["Love","So, I love you because the entire universe conspired to help me find you. — Pablo Coelho"],

  ["Love","At the touch of love everyone becomes a poet. – Plato"],

  ["Love","His love roared louder than her demons."],

  ["Love","One word frees us of all the weight and pain of life: That word is love. – Sophocles"],
  ["Love","The greatest thing you’ll ever learn is just to love, and be loved in return. — Moulin Rouge"],
  ["Love","There is no greater lesson in life than love."],

  ["Love","The best love is the kind that awakens the soul; that makes us reach for more, that plants the fire in our hearts and brings peace to our minds. That’s what I hope to give you forever. — Nicholas Sparks"],

  ["Love","You don't love someone because they're perfect, you love them in spite of the fact that they're not. – Jodi Picoult"],

  ["Love","And remember, as it was written, to love another person is to see the face of God. — Victor Hugo"],


  ["Love","I would rather spend one lifetime with you, than face all the ages of this world alone. — J.R.R. Tolkien"],

  ["Love","If you live to be a hundred, I want to live to be a hundred minus one day so I never have to live without you. — A. A. Milne"],


  ["Love","If I know what love is, it is because of you. — Herman Hesse"],

  ["Love","Don’t forget I’m just a girl, standing in front of a boy, asking him to love her. — Julia Roberts"],

  ["Love","When you realize you want to spend the rest of your life with somebody, you want the rest of your life to start as soon as possible.Billy Crystal"],

  ["Love","You have bewitched me body and soul, and I love, I love, I love you. — Jane Austen"],

  ["Love","Once I knew you I never wanted to know anyone else. — Leo Christopher"],

  ["Love","Pleasure of love lasts but a moment. Pain of love lasts a lifetime. — Bette Davis"],

  ["Love","Love is like war: easy to begin but very hard to stop. — H. L. Mencken"],

  ["Love","I never want to stop making memories with you. — Pierre Jeanty"],

  ["Love","You can't rush something you want to last forever."],

  ["Love","We were together. I forget the rest. — Walt Whitman"],

  ["Love","I love you past the moon and miss you beyond the stars. — J.M. Storm"],

  ["Love","Love you more."],

  ["Love","Saw your worst and I stayed."],
  ["Love","I looked at him as a friend until I realized I loved him."],


  ["Love","Darling, you are all I ever wanted love to be."],

  ["Love","You are what I need in my life. You are my one."],

  ["Love","The first time you touched me, I knew I was born to be yours."],

  ["Love","I'll never have enough of your lips."],

  ["Love","The greatest thing you'll ever learn Is to love and be loved in return. — Nat King Cole"],

  ["Love","And in the end, the love you take, is equal to the love you make. — Sir Paul McCartney"],

  ["Love","However far away, I will always love you. However long I stay, I will always love you. Whatever words I say, I will always love you. I will always love you. — The Cure"],

  ["Love","You and me together, through the days and nights. I don't worry 'cause everything's gonna be alright. — Alicia Keys"],

  ["Love","It was always you. — Maroon 5"],

  ["Love","And when you’re needing your space to do some navigating, I’ll be here patiently waiting to see what you find.— Jason Mraz"],

  ["Love","Before the day I met you, life was so unkind. But you're the key to my peace of mind. — Aretha Franklin"],

  ["Love","I love you more than I have ever found a way to say to you. — Ben Folds"],

  ["Love","You give me the most gorgeous sleep that I've ever had."],

  ["Love","All you need is love. But a little chocolate now and then doesn't hurt. — Charles Schulz"],

  ["Love","If you are lucky enough to find a weirdo, never let them go."],

  ["Love","Because I could watch you for a single minute and find a thousand things that I love about you."],

  ["Love","I still haven't figured out how to sit across from you, and not be madly in love with everything you do. — William C. Hannan"],

  ["Love","In French, you don't say 'I miss you.' You say 'Tu me manques', which means 'you are missing from me.' I love that."],

  ["Love","Real love doesn't meet you at your best. It meets you in your mess."],

  ["Love","Your voice is my favorite sound."],

  ["Love","I am totally completely eye-popping seriously groundbreaking passionately deliciously in love with you."],

  ["Love","You're pretty much my most favorite of all time in the history of ever."],

  ["Love","I remember the first day I ever looking into your eyes and felt my entire world flip."],

  ["Love","I just wanna see you. Hold you. Hug you. Touch you. Kiss you. Cuddle with you. Love you."],

  ["Love","You're all my heart ever talks about."],

  ["Love","I love you. You annoy me more than I ever thought possible. But I want to spend every irritating minute with you."],

  ["Love","You are my favorite notification."],

  ["Love","We fight, we kiss, we hug, we text, we talk, we argue, we laugh, we smile, we love ... That's us."],
  ["Love","I choose you. And I'll choose you over and over and over. Without pause, without a doubt, in a heartbeat. I'll keep choosing you."],

  ["Love","I realized I was thinking of you, and I began to wonder how long you'd been on my mind. Then it occurred to me: Since I met you, you've never left."],
  ["Love","I swear I couldn't love you more than I do right now, and yet I know I will tomorrow. — Leo Christopher"],

  ["Love","Thinking of you keeps me awake. Dreaming of you keeps me asleep. Being with you keeps me alive."],

  ["Love","We are shaped and fashioned by those we love. — Geothe"],

  ["Love","When love is not madness it is not love. – Pedro Calderón de la Barca"],

  ["Love","Love is an untamed force. When we try to control it, it destroys us. When we try to imprison it, it enslaves us. When we try to understand it, it leaves us feeling lost and confused. – Paulo Coelho"],

  ["Love","Love is so short, forgetting is so long. – Pablo Neruda"],

  ["Love","I wish I could turn back the clock. I'd find you sooner and love you longer."],

  ["Love","You know it's love when all you want is that person to be happy, even if you're not part of their happiness. — Julia Roberts"],

  ["Love","I hope you know that every time I tell you to get home safe, stay warm, have a good day, or sleep well what I am really saying is I love you. I love you so damn much that it is starting to steal other words' meanings."],

  ["Love","You don't love someone for their looks, or their clothes, or for their fancy car, but because they sing a song only you can hear. — Oscar Wilde"],

  ["Love","'Tis better to have loved and lost than never to have loved at all. — Alfred, Lord Tennyson"],

  ["Love","When I say I love you more, I don't mean I love you more than you love me. I mean I love you more than the bad days ahead of us, I love you more than any fight we will ever have. I love you more than the distance between us, I love you more than any obstacle that could try and come between us. I love you the most."],

  ["Love","I want you. All of you. Your flaws. Your mistakes. Your imperfections. I want you, and only you."],

  ["Love","There is a madness in loving you, a lack of reason that makes it feel so flawless. — Leo Christopher"],

  ["Love","She knew she loved him when 'home' went from being a place to being a person. — E. Leventhal"],

  ["Love","Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you."],

  ["Love","Make sure you marry someone who laughs at the same things you do. — J.D. Salinger"],

  ["Love","If you only knew how much those little moments with you mattered to me."],

  ["Love","How strange to dream of you even when I am wide awake. — d.j."],

  ["Love","Sometimes, someone comes into your life, so unexpectedly, takes your heart by surprise, and changes your life forever."],

  ["Love","And suddenly all the love songs were about you."],

  ["Love","If I did anything right in my life, it was when I gave my heart to you."],

  ["Love","I love that you are my person and I am yours, that whatever door we come to, we will open it together. — A.R. Asher"],

  ["Love","I was, and I remain, utterly and completely and totally in love with you. — J.R. Ward"],

  ["Love","And when I loved you, I realized, I have never truly loved anyone. I realized, I never will truly love anyone the way I love you."],

  ["Love","I fall more deeply in love with you, every single day."],

  ["Love","It's not being in love that makes me happy. It is the person that I am in love with that does."],




 ["Encouragement","Never give up, for that is just the place and time that the tide will turn. – Harriet Beecher Stowe"],

  ["Encouragement","We must embrace pain and burn it as fuel for our journey. – Kenji Miyazawa"],

  ["Encouragement","Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails. Explore, Dream, Discover. – Mark Twain"],

  ["Encouragement","Discouragement and failure are two of the surest stepping stones to success. – Dale Carnegie"],

  ["Encouragement","How wonderful it is that nobody need wait a single moment before starting to improve the world. – Anne Frank"],

  ["Encouragement","I’ve always loved journaling as a way to clear my mind. Whether I’m traveling or at home, the first thing I do when I wake up is pull out my notebook and record positive things that have happened to me as well as uplifting thoughts. –  Gloria Reuben"],

  ["Encouragement","Do not let what you cannot do interfere with what you can do. – John Wooden"],

  ["Encouragement","Nothing splendid has ever been achieved except by those who dared believe that something inside of them was superior to circumstance. – Bruce Barton"],

  ["Encouragement","Be thankful for what you have and you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough. – Oprah Winfrey"],

  ["Encouragement","Life is a series of natural and spontaneous changes. Don’t resist them – that only creates sorrow. Let reality be reality. Let things flow naturally forward in whatever way they like. – Lao Tzu"],

  ["Encouragement","A successful man is one who can lay a firm foundation with the bricks others have thrown at him. – David Brinkley"],

  ["Encouragement","Focus on the journey, not the destination. Joy is found not in finishing an activity but in doing it. – Greg Anderson"],

  ["Encouragement","When we stop opposing reality, action becomes simple, fluid, kind, and fearless. – Byron Katie"],

  ["Encouragement","Each morning when I open my eyes I say to myself: I, not events, have the power to make me happy or unhappy today. I can choose which it shall be. Yesterday is dead, tomorrow hasn’t arrived yet. I have just one day, today, and I’m going to be happy. – Groucho Marx"],

  ["Encouragement","Happiness resides not in possessions and not in gold, the feeling of happiness dwells in the soul. – Democritus"],

  ["Encouragement","Precious’ is strangely uplifting. It goes down into the valley but it also goes to the mountain tops. A lot of difficult realities are explored in ‘Precious,’ but the peaks make the valleys and the valleys make the peaks. – Geoffrey S. Fletcher"],

  ["Encouragement","If there is no struggle, there is no progress. – Frederick Douglass"],

  ["Encouragement","In essence, if we want to direct our lives, we must take control of our consistent actions. It’s not what we do once in a while that shapes our lives, but what we do consistently. – Tony Robbins"],

  ["Encouragement","A constructive, useful life, good works, and good relationships are as valid as writing poetry or inventing a machine. Anything that one does well and obtains satisfaction from is a good enough reason for living. To be a decent human being that people like and feel better for knowing is enough. – Robert Gould"],

  ["Encouragement","A ship is always safe at the shore – but that is NOT what it is built for. – Albert Einstein"],

  ["Encouragement","The best way to cheer yourself up is to try to cheer somebody else up. – Mark Twain"],

  ["Encouragement","I believe that one defines oneself by reinvention. To not be like your parents. To not be like your friends. To be yourself. To cut yourself out of stone. – Henry Rollins"],

  ["Encouragement","Cherish your visions and your dreams as they are the children of your soul, the blueprints of your ultimate achievements. – Napoleon Hill"],

  ["Encouragement","Your destiny is to fulfill those things upon which you focus most intently. So choose to keep your focus on that which is truly magnificent, beautiful, uplifting and joyful. Your life is always moving toward something. – Ralph Marston"],

  ["Encouragement","Next to trying and winning, the best thing is trying and failing. – L.M. Montgomery"],

  ["Encouragement","I Won’ is not a love song. It’s just me uplifting women in general. I’m giving women the power to treat themselves as a trophy – to show that and know it in yourself and be confident – because when they do that, whoever they’re with is winning. – Nayvadius Cash"],
  ["Encouragement","Rise above the storm and you will find the sunshine. – Mario Fernandez"],

  ["Encouragement","Count your age by friends, not years. Count your life by smiles, not tears. – John Lennon"],

  ["Encouragement","Every small positive change we make in ourselves repays us in confidence in the future. – Alice Walker"],

  ["Encouragement","Life is like riding a bicycle. To keep your balance you must keep moving. – Albert Einstein"],

  ["Encouragement","Even if you’re on the right track, you’ll get run over if you just sit there. – Will Rogers"],

  ["Encouragement","The best way out is always through. – Robert Frost"],

  ["Encouragement","Your destiny is to fulfill those things upon which you focus most intently. So choose to keep your focus on that which is truly magnificent, beautiful, uplifting and joyful. Your life is always moving toward something. – Ralph Marston"],

  ["Encouragement","Choice is more than picking ‘x’ over ‘y.’ It is a responsibility to separate the meaningful and the uplifting from the trivial and the disheartening. It is the only tool we have that enables us to go from who we are today to who we want to be tomorrow. – Sheena Iyengar"],

  ["Encouragement","It does not matter how slowly you go as long as you do not stop. – Confucius"],

  ["Encouragement","I think Romeo and Juliet is uplifting. That’s how much a son wishes to avenge his father. That is how much two young people can love each other. – Ben Kingsley"],

  ["Encouragement","Life has no limitations, except the ones you make. – Les Brown"],

  ["Encouragement","Don’t wait. The time will never be just right. – Napoleon Hill"],

  ["Encouragement","We are each gifted in a unique and important way. It is our privilege and our adventure to discover our own special light. – Mary Dunbar"],

  ["Encouragement","I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed. – Michael Jordan"],

  ["Encouragement","If I persist long enough I will win. – Og Mandino"],

  ["Encouragement","With all its sham, drudgery, and broken dreams, it is still a beautiful world. Be cheerful. Strive to be happy. – Max Ehrmann"],

  ["Encouragement","Many men go fishing all of their lives without knowing that it is not fish they are after. – Henry David Thoreau"],

  ["Encouragement","A memoir should have some uplifting quality, inspiring or illuminating, and that’s what separates a life story that can influence other people. – Mitch Albom"],

  ["Encouragement","It always seems impossible until it’s done. – Nelson Mandela"],

  ["Encouragement","In my books and in romance as a genre, there is a positive, uplifting feeling that leaves the reader with a sense of encouragement and hope for a brighter future – or a brighter present. – Debbie Macomber"],

  ["Encouragement","I believe in being strong when everything seems to be going wrong. I believe that happy girls are the prettiest girls. I believe that tomorrow is another day and I believe in miracles. – Audrey Hepburn"],

  ["Encouragement","Thankfully, persistence is a great substitute for talent. – Steve Martin"],

  ["Encouragement","Like success, failure is many things to many people. With a positive mental attitude, failure is a learning experience, a rung on the ladder, a plateau at which to get your thoughts in order and prepare to try again. – Clement Stone"],

  ["Encouragement","You cannot expect victory and plan for defeat. – Joel Osteen"],

  ["Encouragement","I’ve been absolutely terrified every moment of my life and I’ve never let it keep me from doing a single thing I wanted to do. – Georgia O’Keeffe"],

  ["Encouragement","Don’t give up. Don’t lose hope. Don’t sell out. – Christopher Reeve"],

  ["Encouragement","The truest greatness lies in being kind, the truest wisdom in a happy mind. – Ella Wheeler Wilcox"],

  ["Encouragement","Music does a lot of things for a lot of people. It’s transporting, for sure. It can take you right back, years back, to the very moment certain things happened in your life. It’s uplifting, it’s encouraging, it’s strengthening. – Aretha Franklin"],

  ["Encouragement","Defeat is simply a signal to press onward. – Helen Keller"],

  ["Encouragement","I was recently asked about the business side of ‘Biggest Loser,’ but as long as we entertain people, we can keep coming back and making a difference. It’s a delicate balance, but one feeds off the other. I feel so good about the show – it’s uplifting and inspiring and entertaining at the same time. – Alison Sweeney"],

  ["Encouragement","I can’t change the direction of the wind, but I can adjust my sails to always reach my destination. – Jimmy Dean"],

  ["Encouragement","Character cannot be developed in ease and quiet. Only through experience of trial and suffering can the soul be strengthened, ambition inspired, and success achieved. – Helen Keller"],

  ["Encouragement","Keep your thoughts positive because your thoughts become your words. Keep your words positive because your words become your behavior. Keep your behavior positive because your behavior becomes your habits. Keep your habits positive because your habit. – Mahatma Gandhi"],

  ["Encouragement","I’d rather be a failure at something I love than a success at something I hate. – George Burns"],

  ["Encouragement","Insanity is doing the same thing, over and over again, but expecting different results. – Albert Einstein"],

  ["Encouragement","We are shaped by our thoughts; we become what we think. When the mind is pure, joy follows like a shadow that never leaves. – Buddha"],

  ["Encouragement","Forgiveness is a funny thing. It warms the heart and cools the sting. – William Arthur Ward"],

  ["Encouragement","Sometimes before we make a record I go back and listen to a few. It’s equally humbling and uplifting. – Michael Stipe"],

  ["Encouragement","I’ve failed over and over and over again in my life. And that is why I succeed. – Michael Jordan"],

  ["Encouragement","The more the panic grows, the more uplifting the image of a man who refuses to bow to the terror. – Ernst Junger"],


  ["Encouragement","Real Integrity is doing the right thing, knowing that nobody’s going to know whether you did it or not. – Oprah Winfrey"],

  ["Encouragement","The world is more malleable than you think and it’s waiting for you to hammer it into shape. – Bono"],

  ["Encouragement","It is by going down into the abyss that we recover the treasures of life. Where you stumble, there lies your treasure. – Joseph Campbell"],

  ["Encouragement","Problems are not stop signs, they are guidelines. – Robert H. Schuller"],

  ["Encouragement","I am determined to be cheerful and happy in whatever situation I may find myself. For I have learned that the greater part of our misery or unhappiness is determined not by our circumstance but by our disposition. – Martha Washington"],

  ["Encouragement","There are two ways to live: you can live as if nothing is a miracle; you can live as if everything is a miracle. – Albert Einstein"],

  ["Encouragement","I try to make my mood uplifting and peaceful, then watch the world around me reflect that mood. – Yaya DaCosta"],

  ["Encouragement","In the middle of a difficulty lies opportunity. – Albert Einstein"],

  ["Encouragement","Listening to music is such an uplifting, spiritual thing. It’s far-fetched to some – I understand that. But the way dance music brings people together, it’s not a big stretch from hymns. – Kaskade"],

  ["Encouragement","Failure is the condiment that gives success its flavor. – Truman Capote"],

  ["Encouragement","Talent is cheaper than table salt. What separates the talented individual from the successful one is a lot of hard work. – Stephen King"],

  ["Encouragement","Don’t be intimidated by what you don’t know. That can be your greatest strength and ensure that you do things differently from everyone else. – Sara Blakely"],

  ["Encouragement","Believe you can and you’re halfway there. – Theodore Roosevelt"],

  ["Encouragement","Only those who dare to fail greatly can ever achieve greatly. – Robert F. Kennedy"],

  ["Encouragement","If more of us valued food and cheer and song above hoarded gold, it would be a merrier world. – J.R.R. Tolkien"],

  ["Encouragement","Do not anticipate trouble or worry about what may never happen. Keep in the sunlight. – Benjamin Franklin"],

  ["Encouragement","What can a pencil do for all of us? Amazing things. It can write transcendent poetry, uplifting music, or life-changing equations; it can sketch the future, give life to untold beauty, and communicate the full-force of our love and aspirations. – Adam Braun"],

  ["Encouragement","The best way to predict the future is to create it. – Abraham Lincoln"],

  ["Encouragement","An uplifting sense of purpose is more than an impetus for individual accomplishment, it is also a necessary insurance policy against expediency and impropriety. – Gary Hamel"],

  ["Encouragement","Try Again. Fail again. Fail better. – Samuel Beckett"],

  ["Encouragement","Big jobs usually go to the men who prove their ability to outgrow small ones. – Ralph Waldo Emerson"],

  ["Encouragement","Learn to enjoy every minute of your life. Be happy now. Don’t wait for something outside of yourself to make you happy in the future. Think how really precious is the time you have to spend, whether it’s at work or with your family. Every minute should be enjoyed and savored. – Earl Nightingale"],

  ["Encouragement","Life is 10 percent what happens to me and 90 percent how I react to it. – Charles R. Swindoll"],

  ["Encouragement","The first step is you have to say that you can. – Will Smith"],

  ["Encouragement","I don’t believe people are looking for the meaning of life as much as they are looking for the experience of being alive. – Joseph Campbell"],

  ["Encouragement","How you think about a problem is more important than the problem itself. So always think positively. – Norman Vincent Peale"],

  ["Encouragement","I want people to see that the cosmic perspective is simultaneously honest about the universe we live in and uplifting, when we realize how far we have come and how wonderful is this world of ours. – Neil deGrasse Tyson"],

  ["Encouragement","Most great people have attained their greatest success one step beyond their greatest failure. – Napoleon Hill"],

  ["Encouragement","It is not the first duty of the novelist to provide blueprints for insurrection, or uplifting tales of successful resistance for the benefit of the opposition. The naming of what is there is what is important. – Ian Mcewan"],

  ["Encouragement","All life is an experiment. The more experiments you make, the better. – Ralph Waldo Emerson"],

  ["Encouragement","Once you choose hope, anything’s possible. – Christopher Reeve"],

  ["Encouragement","Never be bullied into silence. Never allow yourself to be made a victim. Accept no one’s definition of your life; define yourself. – Harvey Fierstein"],

  ["Encouragement","Nothing is impossible, the word itself says ‘I’m possible’! – Audrey Hepburn"],

  ["Encouragement","There is nothing in a caterpillar that tells you it’s going to be a butterfly. – Buckminster Fuller"],

  ["Encouragement","Keep your face always toward the sunshine—and shadows will fall behind you. —Walt Whitman"],

  ["Encouragement","Life itself is the most wonderful fairy tale. – Hans Christian Andersen"],

  ["Encouragement","The world is full of magical things patiently waiting for our wits to grow sharper. —Bertrand Russell"],

  ["Encouragement","Choose to be optimistic, it feels better. – Dalai Lama"],

  ["Encouragement","All you need is the plan, the road map, and the courage to press on to your destination. —Earl Nightingale"],

  ["Encouragement","In three words I can sum up everything I’ve learned about life. It goes on.– Robert Frost"],

  ["Encouragement","The glow of one warm thought is to me worth more than money. —Thomas Jefferson"],

  ["Encouragement","Success is the sum of small efforts, repeated day-in and day-out.– Robert Collier"],

  ["Encouragement","Try to be a rainbow in someone’s cloud. —Maya Angelou"],

  ["Encouragement","A big part of being a well-adjusted person is accepting that you can’t be good at everything.– Kelly Williams Brown"],

  ["Encouragement","It is always the simple that produces the marvelous. —Amelia Barr"],

  ["Encouragement","Believe that life is worth living and your belief will help create the fact.– William James"],

  ["Encouragement","Let us make our future now, and let us make our dreams tomorrow’s reality. —Malala Yousafzai"],

  ["Encouragement","Even if happiness forgets you a little bit, never completely forget about it.– Jacques Prevert"],

  ["Encouragement","Once we believe in ourselves, we can risk curiosity, wonder, spontaneous delight, or any experience that reveals the human spirit. —E. E. Cummings"],

  ["Encouragement","It doesn’t matter how slow you go, as long as you don’t stop.– Confucius"],

  ["Encouragement","I believe that if one always looked at the skies, one would end up with wings. —Gustave Flaubert"],

  ["Encouragement","When the sun is shining I can do anything; no mountain is too high, no trouble too difficult to overcome. —Wilma Rudolph"],

  ["Encouragement","I dwell in possibility. —Emily Dickinson"],

  ["Encouragement","Any kind of crisis can be good. It wakes you up. – Ryan Reynolds"],
  ["Encouragement","Work hard in silence, let your success be your noise.— Frank Ocean"],

  ["Encouragement","Close scrutiny will show that most ‘crisis situations’ are opportunities to either advance, or stay where you are. – Maxwell Maltz"],

  ["Encouragement","If you want something you have never had, you must be willing to do something you have never done.— Thomas Jefferson"],

  ["Encouragement","Crises and deadlocks when they occur have at least this advantage, that they force us to think. – Jawaharlal Nehru"],

  ["Encouragement","Two things define you: Your patience when you have nothing and your attitude when you have everything.— Imam Ali"],
  ["Encouragement","Great occasions do not make heroes or cowards; they simply unveil them to our eyes. Silently and imperceptibly, as we wake or sleep, we grow strong or weak; and at last some crisis shows what we have become. –Brooke Foss Westcott"],

  ["Encouragement","The greatest pleasure in life is doing what people say you cannot do.— Walter Bagehot"],

  ["Encouragement","Something good comes out of every crisis. – Dave Pelzer"],

  ["Encouragement","Never give up on a dream just because of the time it will take to accomplish it. The time will pass anyway.— Earl Nightingale"],

  ["Encouragement","Always be a first-rate version of yourself, instead of a second-rate version of somebody else. — Judy Garland"],

  ["Encouragement","I don’t think of all the misery but of the beauty that still remains. — Anne Frank"],

  ["Encouragement","I think the best way to have confidence is not to allow everyone else’s insecurities to be your own. — Jessie J"],

  ["Encouragement","You learn something out of everything, and you come to realize more than ever that we’re all here for a certain space of time, and, and then it’s going to be over, and you better make this count. — Nancy Reagan"],

  ["Encouragement","When you notice that you’re having negative thoughts about how all of this is going to pan out, you need to remind yourself that you are not a very good fortune teller. — Donna W. Hill"],

  ["Encouragement","The most common way people give up their power is by thinking they don’t have any. – Alice Walker"],

  ["Encouragement","Doing the best at this moment puts you in the best place for the next moment. — Oprah"],

  ["Encouragement","The most difficult thing is the decision to act, the rest is merely tenacity. – Amelia Earhart"],

  ["Encouragement","Keep your sunny side up, keep yourself beautiful, and indulge yourself. — Betsey Johnson"],

  ["Encouragement","Remember that not getting what you want is sometimes a wonderful stroke of luck. – Dalai Lama"],
  ["Encouragement","It doesn’t matter who you are, where you come from. The ability to triumph begins with you. Always. – Oprah Winfrey"],

  ["Encouragement","The only person you are destined to become is the person you decide to be. – Ralph Waldo Emerson"],

 ["Encouragement","I will love the light for it shows me the way, yet I will endure the darkness because it shows me the stars. – Og Mandino"],

  ["Encouragement","It is time for us all to stand and cheer for the doer, the achiever – the one who recognizes the challenges and does something about it. – Vince Lombardi"],

  ["Encouragement","In the middle of difficulty lies opportunity. – Albert Einstein"],

  ["Encouragement","You just can’t beat the person who never gives up. – Babe Ruth"],

  ["Encouragement","It doesn’t matter how slow you go as long as you don’t stop. –Confucius"],

  ["Encouragement","Start where you are. Use what you have. Do what you can. – Arthur Ashe"],

  ["Encouragement","He who has a why to live can bear almost any how. – Friedrich Nietzsche"],

  ["Encouragement","In order to succeed, we must first believe that we can. – Nikos Kazantzakis"],

  ["Encouragement","Sometimes we create our own heartbreaks through expectation."],

  ["Encouragement","You will end up really disappointed if you think people will do for you as you do for them. Not everyone has the same heart as you."],

  ["Encouragement","Disappointment is the nurse of wisdom. – Sir Bayle Roche"],

  ["Encouragement","It’s amazing how quickly your mood can change, how deep your heart can sink, and how much one person can affect you."],

  ["Encouragement","Things are as they are, we suffer because we imagined different."],

  ["Encouragement","Sometimes when you get disappointment it makes you stronger. – David Rudisha"],

  ["Encouragement","Assuming is the root of all disappointments. – Rogienel Reyes"],

  ["Encouragement","One’s best success comes after their greatest disappointments. – Henry Ward Beecher"],

  ["Encouragement","The size of your success is measured by the strength of your desire; the size of your dream; and how you handle disappointment along the way. – Robert Kiyosaki"],

  ["Encouragement","If I am to meet with a disappointment, the sooner I know it, the more of life I shall have to wear it off. – Thomas Jefferson"],

  ["Encouragement","Disappointment has no place in a heart full of gratitude."],

  ["Encouragement","Sometimes we expect more from others because we would be willing to do that much for them."],

  ["Encouragement","I’m sad, hurt, angry, mad, disappointed. But you know what? I will put on a happy face and move on. It will hurt but I will survive."],

  ["Encouragement","It hurts to let go, but sometimes it hurts more to hold on."],

  ["Encouragement","It’s sad when you realize you aren’t as important to someone as you thought you were."],

  ["Encouragement","Disappointment is just the action of your brain readjusting itself to reality after discovering things are not the way you thought they were. – Brad Warner"],

  ["Encouragement","Disappointments are just God’s way to saying ‘I’ve got something better’. Be patient, live life, have faith."],

  ["Encouragement","Disappointment is a sort of bankruptcy- the bankruptcy of a soul that expends too much in hope and expectation. – Eric Hoffer"],

  ["Encouragement","After being disappointed so many times, you start to lose hope in everything."],

  ["Encouragement","Most things disappoint till you look deeper. – Graham Greene"],

  ["Encouragement","I’m never shocked when people let me down nowadays. I just hate the fact that I put myself in a position to be let down in the first place."],

  ["Encouragement","Suspense is worse than disappointment. – Robert Burns"],

  ["Encouragement","Sometimes you don’t need to hear their excuses or what they have to say for themselves because their actions already spoke the truth."],

  ["Encouragement","It was one of those times you feel a sense of loss, even though you didn’t have something in the first place. I guess that’s what disappointment is- a sense of loss for something you never had. – Deb Caletti"],

  ["Encouragement","You will find that it is necessary to let things go; simply for the reason that they are heavy."],

  ["Encouragement","Disappointments are not meant to destroy you; they are meant to strengthen you."],

  ["Encouragement","Let me tell you this: if you meet a loner, no matter what they tell you, it’s not because they enjoy solitude. It’s because they have tried to blend into the world before, and people continue to disappoint them."],

  ["Encouragement","Hope, but never expect. Look forward, but never wait."],

  ["Encouragement","One of the worst feelings in the world is having to doubt something you thought was unquestionable."],

  ["Encouragement","There’s only so many times you can allow someone to let you down before you will no longer tolerate being disappointed. When things go wrong between two people, something has got to give. You get to the point where you get tired of being the only one trying to fix things, it’s not giving up, it’s realizing you had enough. You’ve got to do what’s right for you, even if it hurts. – Brigitte Nicole"],

  ["Encouragement","Nothing hurts more than being disappointed by the single person you thought would never hurt you."],

  ["Encouragement","Expectation is the root of all heartache. – William Shakespeare"],

  ["Encouragement","I don’t hate you. I’m just disappointed you turned into everything you said you’d never be."],

  ["Encouragement","You cannot be disappointed by something that doesn’t exist."],

  ["Encouragement","Understanding is the key to getting over disappointment."],

  ["Encouragement","Never trust a person that has let you down more than twice. Once was a warning, twice was a lesson, and anything more than that is simply taking advantage."],

  ["Encouragement","Each pain makes you stronger, each betrayal more intelligent, every disappointment more skillful and each experience wiser."],

  ["Encouragement","Nothing annoys me more than when someone expects you to be okay with something that they wouldn’t be okay with if you did it."],

  ["Encouragement","Disappointment is really just a term for our refusal to look on the bright side. – Richelle E. Goodrich"],

  ["Encouragement","When someone disappoints you, there is nothing that can be done but to accept it."],

  ["Encouragement","When you have no expectations, you’ll never have disappointments."],

  ["Encouragement","Beware of wallowing in disappointment for it is in this state that depression creeps from behind."],

  ["Encouragement","Do not make a person wait for a decision. To wait forever is a more cruel fate than to be disappointed."],

  ["Encouragement","Disappointment is preferable to being kept in suspense for it is the start of healing."],

  ["Encouragement","There is no rush to acquire success. Do not be disappointed that you have not yet reached your potential."],

  ["Encouragement","One suffers from disappointment, which is to say like every pain, it may be cured."],

  ["Encouragement","Once cannot feel true disappointment until the very end, and even then, it is only another beginning."],

  ["Encouragement","Save the excuses. It’s not about ‘having time’ it’s about making time. If it matters, you will make time."],

  ["Encouragement","Disappointment is a disease that starts with malaise in one’s heart and spreads to those around them."],

  ["Encouragement","Getting disappointed is like becoming broke. You invested so much in something and end up with nothing for your troubles."],

  ["Encouragement","Regret is a bedmate of disappointment and is a lethal combination."],

  ["Encouragement","Like a mortal wound, getting over a disappointment will only make you stronger."],

  ["Encouragement","We must all suffer one of two things: the pain of discipline or the pain of regret or disappointment. –Jim Rohn"],

  ["Encouragement","Everything you do in life takes you higher. That is why a disappointment of having less than the best hurts like a fall."],

  ["Encouragement","Sometimes, when something you dreamed of doesn’t happen, a sigh of relief is in order rather than disappointment."],

  ["Encouragement","Children will always be a disappointment for parents who are never satisfied even with themselves."],

  ["Encouragement","Disappointment is a tiny sign that leads you to an evil path."],

  ["Encouragement","Only the fear of disappointment will keep one from following through their goals."],

  ["Encouragement","Disappointment is an ominous cloud of self-doubt and fear which must be broken through at all costs."],

  ["Encouragement","Don’t care for the expectations of others on yourself for their disappointment will unfairly weigh on you."],

  ["Encouragement","When presenting yourself to the world, always show confidence. People are more excited with the prospect of something curious than be turned off by a forecasted disappointment."],

  ["Encouragement","Disappointment is a quicksand of unreality which does not sink in until you have been sucked in."],

  ["Encouragement","No matter how much in love you are, in the end, you are disappointed by either a flamed out affair or until death does you part."],

  ["Encouragement","We can be disappointed with the world but it does us no good as the world will revolve despite us not moving."],

  ["Encouragement","When you work so hard and get back so little is a soul crushing disappointment that must be shelved in order to make life go on."],

  ["Encouragement","Parents ought to teach children how to deal with disappointment and stress. I think the world would be better off full of dysfunctional happy people than those who become disruptive."],

  ["Encouragement","Sometimes we love our children too much that we try protect them from all the hurts in the world, including disappointment. This is often a disappointment in itself."],

  ["Encouragement","We do not understand it when we first feel disappointment but in time, it will become an unwanted companion that walks with us through life."],

  ["Encouragement","When hope suddenly dies it leaves a scar and a throbbing pain of disappointment."],

  ["Encouragement","Try your best and reach for the stars. But do not try to reach without stretching or you would be disappointed."],

  ["Encouragement","If a man does not read, he prepares himself for a life full of shocking realities and disappointments."],

  ["Encouragement","If you expect the unexpected all the time, nothing will disappoint you."],

  ["Encouragement","Disappointment is a terrible feeling where your insides are twisted up so bad that no medicine but time can heal it."],

  ["Encouragement","How do you deal with disappointment? How do you deal with a monster that holds a hammer and is smashing your glass heart to pieces?"],

  ["Encouragement","A perfect life is to have expectations without the disappointment."],

  ["Encouragement","Disappointments are everyday cuts that must be taken cared of or else death will come from profuse bleeding of the soul."],

  ["Encouragement","Life is full of pain and pleasure and between the two, disappointment and ecstasy."],

  ["Encouragement","A true friend will listen to your disappointments, say, I told you so, and help you back up."],

  ["Encouragement","It is our fate in life to be disappointed. The human mind is so vast and full of imagination that real life will never live up to its expectations."],

  ["Encouragement","You must, for the sake of your sanity, transcend disappointment."],

  ["Encouragement","Disappointment is a festering infected disease that takes out the joy from your soul and the smile from your heart."],

  ["Encouragement","Disappointment is a beautiful sadness, a fitting end to a tragic tale of expectation."],

  ["Encouragement","We run with the desire to fulfill that which is written in our destinies with the spikes and warnings of disappointment and regret lurking beneath."],

  ["Encouragement","At the end of a love affair or a job, test how deep your disappointment is and be merry. For if it is deep, it means you have invested in it fully, and if it is shallow, you can easily move on."],

  ["Encouragement","Hope and expectations are different names for the first part of the path to disappointment."],

  ["Encouragement","Never stop building toward your dreams. Should there be any disappointments along the way, use them for a sturdier foundation."],

  ["Encouragement","Marriages that end in disappointment happens when each other’s expectations are not put on the table."],

  ["Encouragement","Disappointment is a troll that follows you around the house, cluttering things you have put in order, moving the things you need around, and generally disrupting life. Best way to get rid of this pest is to face it head on and tell it to go away before it multiplies."],

  ["Encouragement","Children are often disappointed with their lot in life and suffer the injustice at living when they did not ask to be born."],

  ["Encouragement","When suffering a blow of disappointment, take time to heal one’s wounds. One can go on, surely, but without the strength necessary to succeed."],

  ["Encouragement","To grow up is a disappointment, to make the best of it is maturity."],

  ["Encouragement","Laughter is a cure to the bitter disappointments in life. When you are sad, look for laughter to ease the pain."],

  ["Encouragement","Beauty can cause disappointment for if there is no substance beneath, the image becomes nothing but an empty picture."],

  ["Encouragement","Greet disappointment with cheerfulness. There is nothing like a spring in your step to dispel the ugly gloom."],

  ["Encouragement","Do not believe others when they say they love you. If you do not see the actions with your own eyes, you shall experience disappointment."],

  ["Encouragement","Friends who tell you that you cannot are a disappointment and should be kept away from as they are not friends, but doubts in human form."],

  ["Encouragement","If your purpose is just discovery, never commit. This is a path that would lead to disappointment."],

  ["Encouragement","A cynic is someone who’s had his dreams shattered by the realities of disappointment."],

  ["Encouragement","You can’t really disappoint yourself. You can do stupid stuff that can lead you to bad consequences, but knowing that you are who you are can ease the pain."],

  ["Encouragement","Choosing a path to follow and getting lost is a common occurrence for people. Do not be disappointed with your human frailty."],

  ["Encouragement","It is the fear to cause disappointments that leads to it. Such is the irony of life."],

  ["Encouragement","You can hate life and be done with it, but it is an underlying fear of disappointment that causes you to do so. Look for the light in your soul to free you from this prison."],

  ["Encouragement","We simultaneously feel relieved and disappointed when someone sees through our facade and sets us straight."],

  ["Encouragement","It is a gift when someone shares your disappointment. Often, the mere listening of one’s woes is enough to dispel it."],

  ["Encouragement","We are our own sculptors. We chisel away to create our life’s work but sit down in disappointment when a part is not properly done. Remember, it is a work in progress, there is still much to do."],

  ["Encouragement","A disappointment is merely an assignment for your next appointment.– Kayambila Mpulamasaka"],

  ["Encouragement","Disappointment has quite a penchant for taking one by surprise.– Pawan Mishra"],

  ["Encouragement","In that moment of disappointment, pause and remember that GOD has a better plan for you.– Maria Koszler"],

  ["Encouragement","The importance we give our disappointment is what turns it into a tragedy.– Nitya Prakash"],

  ["Encouragement","It’s easy not to be disappointed when you’re always wading in the shallow end of feelings.– Maurene Goo"],

  ["Encouragement","Disappointment had to be postponed, hope kept alive as long as possible.– Graham Greene"],

  ["Encouragement","You can’t please everyone, but you can’t not please everyone either.– Joyce Rachelle"],

  ["Encouragement","Sometimes disappointing other people is the only way you can be yourself.– Nitya Prakash"],

  ["Encouragement","Destroying the seeds of disappointment requires you to unexpect the expected.– Mokokoma Mokhonoana"],

  ["Encouragement","You just cannot have the same thing twice without being disappointed. – Vann Chow"],

  ["Encouragement","You say you are disappointed with life. But maybe it is life that’ is disappointed with you.– Marty Rubin"],

  ["Encouragement","Whenever I experienced some disappointment in my life, it was always laughter that came to my rescue.– Marty Rubin"],

  ["Encouragement","Maturity’ really means: being very unsurprised by, and calm around, pain and disappointment.– Alain de Botton"],

  ["Encouragement","Do not dwell on your loss. Look forward with bright new hopes. – Lailah Gifty Akita"],

  ["Encouragement","Expectation is the only seed of disappointment.– Mokokoma Mokhonoana"],

["Success","If you want to achieve greatness stop asking for permission. —Anonymous"],

  ["Success","Things work out best for those who make the best of how things work out. —John Wooden"],

  ["Success","To live a creative life, we must lose our fear of being wrong. —Anonymous"],

  ["Success","If you are not willing to risk the usual you will have to settle for the ordinary. —Jim Rohn"],

  ["Success","Trust because you are willing to accept the risk, not because it’s safe or certain. —Anonymous"],

  ["Success","Take up one idea. Make that one idea your life–think of it, dream of it, live on that idea. Let the brain, muscles, nerves, every part of your body, be full of that idea, and just leave every other idea alone. This is the way to success. —Swami Vivekananda"],

  ["Success","All our dreams can come true if we have the courage to pursue them. —Walt Disney"],

  ["Success","Good things come to people who wait, but better things come to those who go out and get them. —Anonymous"],

  ["Success","If you do what you always did, you will get what you always got. —Anonymous"],

  ["Success","Success is walking from failure to failure with no loss of enthusiasm. —Winston Churchill"],

  ["Success","Just when the caterpillar thought the world was ending, he turned into a butterfly. —Proverb"],

  ["Success","Successful entrepreneurs are givers and not takers of positive energy. —Anonymous"],

  ["Success","Whenever you see a successful person you only see the public glories, never the private sacrifices to reach them. —Vaibhav Shah"],

  ["Success","Opportunities don’t happen, you create them. —Chris Grosser"],

  ["Success","15. “Try not to become a person of success, but rather try to become a person of value. —Albert Einstein"],

  ["Success","Great minds discuss ideas; average minds discuss events; small minds discuss people. —Eleanor Roosevelt"],

  ["Success","I have not failed. I’ve just found 10,000 ways that won’t work. —Thomas A. Edison"],

  ["Success","If you don’t value your time, neither will others. Stop giving away your time and talents–start charging for it. —Kim Garst"],

  ["Success","A successful man is one who can lay a firm foundation with the bricks others have thrown at him. —David Brinkley"],

  ["Success","No one can make you feel inferior without your consent. —Eleanor Roosevelt"],

  ["Success","The whole secret of a successful life is to find out what is one’s destiny to do, and then do it. —Henry Ford"],

  ["Success","If you’re going through hell keep going. —Winston Churchill"],

  ["Success","The ones who are crazy enough to think they can change the world, are the ones who do. —Anonymous"],

  ["Success","Don’t raise your voice, improve your argument. —Anonymous"],

  ["Success","What seems to us as bitter trials are often blessings in disguise. —Oscar Wilde"],

  ["Success","The meaning of life is to find your gift. The purpose of life is to give it away. —Anonymous"],

  ["Success","The distance between insanity and genius is measured only by success. —Bruce Feirstein"],

  ["Success","When you stop chasing the wrong things, you give the right things a chance to catch you. —Lolly Daskal"],

  ["Success","I believe that the only courage anybody ever needs is the courage to follow your own dreams. —Oprah Winfrey"],

  ["Success","No masterpiece was ever created by a lazy artist. —Anonymous"],

  ["Success","Happiness is a butterfly, which when pursued, is always beyond your grasp, but which, if you will sit down quietly, may alight upon you. —Nathaniel Hawthorne"],

  ["Success","If you can’t explain it simply, you don’t understand it well enough. —Albert Einstein"],

  ["Success","Blessed are those who can give without remembering and take without forgetting. —Anonymous"],

  ["Success","Do one thing every day that scares you. —Anonymous"],

  ["Success","What’s the point of being alive if you don’t at least try to do something remarkable. —Anonymous"],

  ["Success","Life is not about finding yourself. Life is about creating yourself. —Lolly Daskal"],

  ["Success","Nothing in the world is more common than unsuccessful people with talent. —Anonymous"],

  ["Success","Knowledge is being aware of what you can do. Wisdom is knowing when not to do it. —Anonymous"],

  ["Success","Your problem isn’t the problem. Your reaction is the problem. —Anonymous"],

  ["Success","You can do anything, but not everything. —Anonymous"],

  ["Success","Innovation distinguishes between a leader and a follower. —Steve Jobs"],

  ["Success","There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed. —Ray Goforth"],

  ["Success","Thinking should become your capital asset, no matter whatever ups and downs you come across in your life. —A.P.J. Abdul Kalam"],

  ["Success","I find that the harder I work, the more luck I seem to have. —Thomas Jefferson"],

  ["Success","The starting point of all achievement is desire. —Napoleon Hill"],

  ["Success","Success is the sum of small efforts, repeated day-in and day-out. —Robert Collier"],

  ["Success","If you want to achieve excellence, you can get there today. As of this second, quit doing less-than-excellent work. —Thomas J. Watson"],

  ["Success","All progress takes place outside the comfort zone. —Michael John Bobak"],

  ["Success","You may only succeed if you desire succeeding; you may only fail if you do not mind failing. —Philippos"],

  ["Success","Courage is resistance to fear, mastery of fear–not absence of fear. —Mark Twain"],

  ["Success","Only put off until tomorrow what you are willing to die having left undone. —Pablo Picasso"],

  ["Success","People often say that motivation doesn’t last. Well, neither does bathing–that’s why we recommend it daily. –Zig Ziglar"],

  ["Success","We become what we think about most of the time, and that’s the strangest secret. —Earl Nightingale"],

  ["Success","The only place where success comes before work is in the dictionary. —Vidal Sassoon"],

  ["Success","Too many of us are not living our dreams because we are living our fears.  —Les Brown"],

  ["Success","I find that when you have a real interest in life and a curious life, that sleep is not the most important thing. —Martha Stewart"],

  ["Success","It’s not what you look at that matters, it’s what you see. —Anonymous"],

  ["Success","The road to success and the road to failure are almost exactly the same. —Colin R. Davis"],

  ["Success","The function of leadership is to produce more leaders, not more followers. —Ralph Nader"],

  ["Success","Success is liking yourself, liking what you do, and liking how you do it. —Maya Angelou"],

  ["Success","As we look ahead into the next century, leaders will be those who empower others. —Bill Gates"],

  ["Success","A real entrepreneur is somebody who has no safety net underneath them. —Henry Kravis"],

  ["Success","The first step toward success is taken when you refuse to be a captive of the environment in which you first find yourself. —Mark Caine"],

  ["Success","People who succeed have momentum. The more they succeed, the more they want to succeed, and the more they find a way to succeed. Similarly, when someone is failing, the tendency is to get on a downward spiral that can even become a self-fulfilling prophecy. —Tony Robbins"],

  ["Success","When I dare to be powerful, to use my strength in the service of my vision, then it becomes less and less important whether I am afraid. —Audre Lorde"],

  ["Success","Whenever you find yourself on the side of the majority, it is time to pause and reflect. —Mark Twain"],

  ["Success","The successful warrior is the average man, with laser-like focus. —Bruce Lee"],

  ["Success","There is no traffic jam along the extra mile. —Roger Staubach"],

  ["Success","Develop success from failures. Discouragement and failure are two of the surest stepping stones to success. —Dale Carnegie"],

  ["Success","If you don’t design your own life plan, chances are you’ll fall into someone else’s plan. And guess what they have planned for you? Not much. —Jim Rohn"],

  ["Success","If you genuinely want something, don’t wait for it–teach yourself to be impatient. —Gurbaksh Chahal"],

  ["Success","Don’t let the fear of losing be greater than the excitement of winning. —Robert Kiyosaki"],

  ["Success","If you want to make a permanent change, stop focusing on the size of your problems and start focusing on the size of you! —T. Harv Eker"],

  ["Success","You can’t connect the dots looking forward; you can only connect them looking backwards. So you have to trust that the dots will somehow connect in your future. You have to trust in something–your gut, destiny, life, karma, whatever. This approach has never let me down, and it has made all the difference in my life. —Steve Jobs"],

  ["Success","Two roads diverged in a wood and I  took the one less traveled by, and that made all the difference. —Robert Frost"],

  ["Success","The number one reason people fail in life is because they listen to their friends, family, and neighbors. —Napoleon Hill"],

  ["Success","The reason most people never reach their goals is that they don’t define them, or ever seriously consider them as believable or achievable. Winners can tell you where they are going, what they plan to do along the way, and who will be sharing the adventure with them. —Denis Waitley"],

  ["Success","In my experience, there is only one motivation, and that is desire. No reasons or principle contain it or stand against it. —Jane Smiley"],

  ["Success","Success does not consist in never making mistakes but in never making the same one a second time. —George Bernard Shaw"],

  ["Success","I don’t want to get to the end of my life and find that I lived just the length of it. I want to have lived the width of it as well. —Diane Ackerman"],

  ["Success","You must expect great things of yourself before you can do them. —Michael Jordan"],

  ["Success","Motivation is what gets you started. Habit is what keeps you going. —Jim Ryun"],

  ["Success","People rarely succeed unless they have fun in what they are doing. —Dale Carnegie"],

  ["Success","There is no chance, no destiny, no fate, that can hinder or control the firm resolve of a determined soul. —Ella Wheeler Wilcox"],

  ["Success","Our greatest fear should not be of failure but of succeeding at things in life that don’t really matter. —Francis Chan"],

  ["Success","You’ve got to get up every morning with determination if you’re going to go to bed with satisfaction. —George Lorimer"],

  ["Success","A goal is not always meant to be reached; it often serves simply as something to aim at. — Bruce Lee"],

  ["Success","Success is … knowing your purpose in life, growing to reach your maximum potential, and sowing seeds that benefit others. —John C. Maxwell"],

  ["Success","Be miserable. Or motivate yourself. Whatever has to be done, it’s always your choice. —Wayne Dyer"],

  ["Success","To accomplish great things, we must not only act, but also dream, not only plan, but also believe. —Anatole France"],

  ["Success","Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no help at all. —Dale Carnegie"],

  ["Success","You measure the size of the accomplishment by the obstacles you had to overcome to reach your goals. —Booker T. Washington"],

  ["Success","Real difficulties can be overcome; it is only the imaginary ones that are unconquerable. —Theodore N. Vail"],

  ["Success","It is better to fail in originality than to succeed in imitation. —Herman Melville"],

  ["Success","What would you do if you weren’t afraid. —Spencer Johnson"],

  ["Success","Little minds are tamed and subdued by misfortune; but great minds rise above it. —Washington Irving"],

  ["Success","Failure is the condiment that gives success its flavor. —Truman Capote"],

  ["Success","Don’t let what you cannot do interfere with what you can do. —John R. Wooden"],

  ["Success","You may have to fight a battle more than once to win it. —Margaret Thatcher"],

  ["Success","A man can be as great as he wants to be. If you believe in yourself and have the courage, the determination, the dedication, the competitive drive and if you are willing to sacrifice the little things in life and pay the price for the things that are worthwhile, it can be done. —Vince Lombardi"],



 ["Fitness","Once you learn to quit, it becomes a habit. – Vince Lombardi Jr."],

  ["Fitness","Want to be respected? Be consistent."],


  ["Fitness","Love yourself enough to live a healthy lifestyle."],

  ["Fitness","Starve your distractions. Feed your focus. – Unknown"],


  ["Fitness","If it doesn’t challenge you it wont change you. – Unknown"],


  ["Fitness","When I lost all of my excuses I found my results."],



  ["Fitness","A year from now you may wish you had started today. – Karen Lamb"],


  ["Fitness","When you feel like stopping…think about why you started."],


  ["Fitness","You are the only one who can limit your greatness. – Unknown"],


  ["Fitness","It’s never too late and you’re never too old to become better."],


  ["Fitness","Don’t give up on your dreams, or your dreams will give up on you. – John Wooden"],


  ["Fitness","There are no shortcuts to living your greatest life and becoming your best self."],

  ["Fitness","Your desire to change must be greater than your desire to stay the same."],


  ["Fitness","Most people fail, not because of lack of desire, but, because of lack of commitment. – Vince Lombardi"],


  ["Fitness","The only person you are destined to become is the person you decide to be. – Ralph Waldo Emerson"],

  ["Fitness","Don’t stop until you’re proud."],


  ["Fitness","If you get tired, learn to rest, not quit."],


  ["Fitness","Look in the mirror. That’s your competition. – John Assaraf"],


  ["Fitness","You are much stronger than you think."],


  ["Fitness","Tough times don’t last. Tough people do. – Robert H. Schuller"],


  ["Fitness","You are what you do, not what you say you’ll do."],


  ["Fitness","Someone busier than you is working out right now."],


  ["Fitness","Put all excuses aside and remember this: YOU are capable. – Zig Ziglar"],


  ["Fitness","If you want it, you’ll find a way. If you don’t, you’ll find an excuse."],


  ["Fitness","Start where you are. Do what you can. Never stop. Keep going."],


  ["Fitness","Stop doubting yourself. Work hard and make it happen. – Unknown"],


  ["Fitness","You will never always be motivated. You have to learn to be disciplined. – Unknown"],


  ["Fitness","When your body feels like giving up, that’s when your workout really starts."],


  ["Fitness","Some people want it to happen, some wish it would happen, others make it happen. – Michael Jordan"],

  ["Fitness","Fall in love with taking care of your body."],

  ["Fitness","What you eat in private will show up in public. – Unknown"],

  ["Fitness","If you think living healthy is expensive, try illness. – Unknown"],

  ["Fitness","The groundwork for all happiness is good health. – Leigh Hunt"],

  ["Fitness","A healthy mind and fit body is how you express your soul."],

  ["Fitness","Our bodies are our gardens – our wills are our gardeners. – William Shakespeare"],

  ["Fitness","Eat well. Move daily. Hydrate often. Sleep lots. Love your body."],

  ["Fitness","Sweat is magic. Cover yourself in it daily to grant your health wishes."],

  ["Fitness","Losing weight is hard. Being overweight is hard. Choose your hard."],

  ["Fitness","Workout because you love yourself, not because you hate your body."],

  ["Fitness","Health is like money, we never have a true idea of its value until we lose it."],

  ["Fitness","Want to be happy? Working out releases endorphins and endorphins make you happy."],


  ["Fitness","Exercise is king. Nutrition is queen. Put them together and you’ve got a kingdom. – Jack LaLanne"],

  ["Fitness","Physical fitness is not only one of the most important keys to a healthy body, it is the basis of dynamic and creative intellectual activity. – John F. Kennedy"],


  ["Fitness","You said ‘tomorrow’ yesterday. – Unknown"],

  ["Fitness","Strive for progress, not perfection."],

  ["Fitness","Don’t shrink your goal. Increase your effort."],

  ["Fitness","One day I’ll be at the place I always wanted to be."],

  ["Fitness","Focus on your goal. Don’t look in any direction but ahead."],

  ["Fitness","Success is what comes after your stop making excuses. – Luis Galarza"],

  ["Fitness","You don’t get what you wish for. You get what you work for. – Unknown"],

  ["Fitness","Discipline is the bridge between goals and accomplishment. – Jim Rohn"],

  ["Fitness","To achieve great things, you must step out of your comfort zone."],

  ["Fitness","The pain you feel today will be the strength you feel tomorrow. – Arnold Schwarzenegger"],

  ["Fitness","You can only reach your goals through commitment, consistency, and hard work."],

  ["Fitness","Setting goals is the first step into turning the invisible into the visible. – Tony Robbins"],

  ["Fitness","Set a goal so big that you can’t achieve it until you grow into the person who can. – Unknown"],

  ["Fitness","In two weeks, you’ll feel it. In four weeks, you’ll see it. In eight weeks, you’ll hear it."],


  ["Fitness","Get comfortable with being uncomfortable! – Jillian Michaels"],

  ["Fitness","If you’re tired of starting over, stop giving up."],

  ["Fitness","A one hour workout is 4% of your day. No excuses."],

  ["Fitness","Your life is a direct reflection of what you have worked for."],

  ["Fitness","Great works are performed, not by strength, but by perseverance. – Samuel Johnson"],

  ["Fitness","Keep going. Everything you need will come to you at the perfect time."],

  ["Fitness","The harder you work for something, the greater you’ll feel when you achieve it. – Unknown"],

  ["Fitness","Results happen over time, not overnight. Work hard, stay consistent, and be patient. – Unknown"],

  ["Fitness","Sometimes the bravest thing you can do is to keep going when you feel like giving up."],


  ["Fitness","Perseverance is the hard work you do after you get tired of doing the hard work you already did. – Newt Gingrich"],

  ["Fitness","Sometimes you don’t realize your own strength until you come face to face with your greatest weakness. – Susan Gale"],


  ["Fitness","You don’t find will power, you create it. – Unknown"],

  ["Fitness","Confidence comes from discipline and training. – Robert Kiyosaki"],

  ["Fitness","You must do the thing you think you cannot do. – Eleanor Roosevelt"],

  ["Fitness","Life shrinks or expands in proportion to one’s courage. – Anaïs Nin"],

  ["Fitness","One isn’t necessarily born with courage, but one is born with potential. – Maya Angelou"],

  ["Fitness","The best way to gain self-confidence is to do what you are afraid to do. – Swati Sharma"],

  ["Fitness","Our greatest glory is not in never failing, but in rising every time we fall. – Confucius"],

  ["Fitness","You must have the courage and confidence to push through your weaknesses if you want to succeed."],

  ["Fitness","Ability is what you’re capable of doing. Motivation determines what you do. Attitude determines how well you do it. – Lou Holtz"],

  ["Fitness","Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine. – Roy T. Bennett"],

  ["Fitness","Stop whining. Stop crying. Stop thinking “poor me”. It’s time to put on your big boy pants and man up!"],


  ["Fitness","Nothing will work unless you do. – John Wooden"],

  ["Fitness","Pain is temporary. Quitting lasts forever. – Lance Armstrong"],

  ["Fitness","Don’t train to be skinny. Train to be a bad ass. – Demi Lovato"],

  ["Fitness","I train to be the best in the world on my worst day. – Ronda Rousey"],

  ["Fitness","Every champion was once a contender that refused to give up. – Sylvester Stallone"],

  ["Fitness","I think in life you should work on yourself until the day you die. – Serena Williams"],

  ["Fitness","Blood, sweat and respect. First two you give. Last one you earn. – The Rock"],

  ["Fitness","You must expect great things of yourself before you can do them. – Michael Jordan"],

  ["Fitness","There’s no secret formula. I lift heavy, work hard, and aim to be the best. – Ronnie Coleman"],

  ["Fitness","The muscle and the mind must become one. One without the other is zero. – Lee Haney"],

  ["Fitness","Living a healthy lifestyle will only deprive you of poor health, lethargy, and fat. – Jill Johnson"],

  ["Fitness","Today I will do what others won’t, so tomorrow I can accomplish what others can’t. – Jerry Rice."],

  ["Fitness","I don’t count my sit-ups; I only start counting when it starts hurting because they’re the only ones that count. – Muhammad Ali"],

  ["Fitness","Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength. – Arnold Schwarzenegger"],







  ["Strength of a Woman","Never Apologize For Being Sensitive Or Emotional. Let This Be A Sign That You’ve Got A Big Heart And Aren’t Afraid To Let Others See It. Showing Your Emotions Is A Sign Of Strength."],
  ["Strength of a Woman","I Am The Type Of Person That Will Sit In The Bathroom And Cry, But Then Walk Out Like Nothing Ever Happened."],

  ["Strength of a Woman","You Hate When People See You Cry Because You Want To Be That Strong Girl. At The Same Time, Though, You Hate How Nobody Notices How Torn Apart And Broken You Are."],

  ["Strength of a Woman","Be a Girl with a mind, a Woman with attitude, and a Lady with class."],
  ["Strength of a Woman","Go Ahead Tell Me That I’m Not Good Enough Tell Me I Can’t Do It Because I Will Show You Over & Over That I Can!"],

  ["Strength of a Woman","Do Not Judge You Don’t Know What Storm I’ve Asked Her To Walk Trough."],

  ["Strength of a Woman","The Woman Who Does Not Required Validation From Anyone Is The Most Feared Individual On The Planet."],

  ["Strength of a Woman","Dear Stress, Let’s Break up."],

  ["Strength of a Woman","Stay Strong, Make Them Wonder How You’re Still Smiling."],

  ["Strength of a Woman","A Strong Woman Is One Who Is Able To Smile This Morning Like She Wasn’t Crying Last Night."],

  ["Strength of a Woman","Smile And Let Everyone Know That Today, You’re A Lot Stronger Than You Were."],

  ["Strength of a Woman","I Am Not What Happened To Me. I Am What I Choose To Become."],

  ["Strength of a Woman","I Don’t Want You To Save Me. I Want You To Stand By My Side As I Save Myself."],

  ["Strength of a Woman","Being Deeply Loved Gives You Strength; Loving Deeply Gives You Courage."],

  ["Strength of a Woman","You Attract What You Are, Not What You Want If You Want Great, Then Be Great."],

  ["Strength of a Woman","You’re Allowed To Scream, You’re Allowed To Cry, But Do Not Give Up."],

  ["Strength of a Woman","Smile And Let Everyone Know That Today, You’re A Lot Stronger Than You Were."],

  ["Strength of a Woman","A Strong Woman Knows How To Keep Her Life In Line. With Tears In Her Eyes, She Still Manages To Say, “Nah, I’m Fine."],

  ["Strength of a Woman","If I Ever Let My Head Down It Will Be Just To Admire My Shoes."],

  ["Strength of a Woman","Littles Girs With Dreams Becomes Women With Vision."],

  ["Strength of a Woman","Women Have Been Trained To Speak Softly And Carry A Lipstick."],
  ["Strength of a Woman","You Can Become Strong And Powerful And Beautiful."],

  ["Strength of a Woman","The Kind Of Beauty I Want Most Is The Hard-to-get Kind That Comes From Within-strength, Courage, Dignity."],

  ["Strength of a Woman","She Is Clothed With Strength & Dignity And Laughs Without Fear Of The feature."],

  ["Strength of a Woman","She Builds Others Up Because She Knows What It’s like to be torn down."],

  ["Strength of a Woman","Strong Women Wear Their Pain Like They Do Stilettos. No Matter How Much It Hurts, All You See Is The Beauty Of It."],

  ["Strength of a Woman","This Is The Year I Will Be Stronger, Braver, Kinder, Unstoppable, And This Year I Will Be Fierce."],

  ["Strength of a Woman","You Only Live Once, You Might As Well As A Badass!"],

  ["Strength of a Woman","Smile And Let Everyone Know That Today, You’re A Lot Stronger Than You Were Yesterday."],

  ["Strength of a Woman","Believe In Yourself A Little More."],

  ["Strength of a Woman","You Are Stronger Than You Think."],

  ["Strength of a Woman","Don’t Worry…"],

  ["Strength of a Woman","Above All, Be the Heroine Of Your Life, Not The Victim."],

  ["Strength of a Woman","A Strong Woman Loves, Forgives, Walks Aways, Lets Go, Tries Again, And Perseveres…"],

  ["Strength of a Woman","Character. Intelligence. Strength. Style. That Makes Beauty."],

  ["Strength of a Woman","Being Both Soft And Strong Is A Combination Very Few Have Mastered."],

  ["Strength of a Woman","We All Have An Unsuspected Reserve Of Strength Inside That emerges When Life Puts Us To The Test."],

  ["Strength of a Woman","I’m Too Busy Working On My Own Grass To Notice If Yours Is Greener."],

  ["Strength of a Woman","Make A Fairy Tale And Go Live In It."],

  ["Strength of a Woman","One Of The Most Courageous Decisions You’ll Ever Make Is To Finally Let Go Of What Is Hurting Your Heart And Soul."],

  ["Strength of a Woman","It’s Better To Break Your Own Heart By Leaving, Rather Than Having That Person Break Your Heart Every Day You’re With Them."],

  ["Strength of a Woman","You’ve Always Had The Power My Dear, Your Just Had To Learn It For Yourself."],

  ["Strength of a Woman","Hey Little Fighter, Soon Things Will Be Brighter."],

  ["Strength of a Woman","A Strong Woman Stands Up For Herself. A Stronger Woman Stands Up For Everyone Else."],

  ["Strength of a Woman","Anyone Can Give Up, It’s The Easiest Thing In The World To Do. But To Hold It Together When Everyone Else Would Understand If You Fell Apart, That’s True Strength."],

  ["Strength of a Woman","You’re Beautiful."],

  ["Strength of a Woman","Be That Strong Girl That Everyone Knew Would Make It Through The Worst. Be that Fearless Girl.."],

  ["Strength of a Woman","Nothing Can Dim The Light That Shines From Within."],

  ["Strength of a Woman","May My Heart Be Brave, My Mind Fierce, And My Spirit Free."],

  ["Strength of a Woman","I Figure, If A Girl Wants To Be A Legend, She Should Go Ahead And Be One."],

  ["Strength of a Woman","Nothing Is More Impressive Than A person Who Is Secure In The Unique Way God Made Her."],

  ["Strength of a Woman","You Never Realize How Strong You Are Until Being Strong Is the Only Choice You Have."],

  ["Strength of a Woman","Keep Your Hopes Up."],

  ["Strength of a Woman","The Only Person You Should Try To Be Better Than, Is The Person You Were Yesterday."],

  ["Strength of a Woman","Happiness Is Not A Destination It Is A Way Of Life."],

  ["Strength of a Woman","Ask Yourself If What You’re Doing Today Is Getting You Closer To Where You Want To Be Tomorrow."],
  ["Strength of a Woman","She Believed She Could, So She Did."],
  ["Strength of a Woman","I’ll Be Ok. Just Not Today."],

  ["Strength of a Woman","Don’t Let Anyone Ever Dull Your Sparkle."],
  ["Strength of a Woman","She Is Clothed With Strength And Dignity; She Can Laugh At The Days To Come."],
  ["Strength of a Woman","One Day Someone Is Going To Hug You So Tight, That All Of Your Broken Pieces Fit Back Together."],
  ["Strength of a Woman","When Someone Else’s Happiness Is Your Happiness That Is Love."],
  ["Strength of a Woman","If A Person Wants To Be A Part Of Your Life, They Will Make An Obvious Effort To Do So. Think Twice Before Reserving A Space In Your Heart For People Who Do Not Make An Effort To Stay."],

  ["Strength of a Woman","You Will Forever Be My Always."],
  ["Strength of a Woman","Having A Soft Heart In A Cruel World Is Courage, Not Weakness."],
  ["Strength of a Woman","What Ever You Decide To Do, Make Sure It Makes You Happy."],
  ["Strength of a Woman","I Smile Like An Idiot When I Think About You."],
  ["Strength of a Woman","By The Way, I’m Wearing The Smile You Gave Me."],
  ["Strength of a Woman","I Knew Who I Was This Morning But I’ve Changed A Few Times Since Then."],
  ["Strength of a Woman","She Acts Like Summer & Walks Like Rain."],
  ["Strength of a Woman","The Mot Memorable People In Life Will Be The Friends Who Loved You When You Weren’t Very Lovable."],
  ["Strength of a Woman","Just A Brunette And A Blonde With An Unbreakable Bond. Best Friends Forever."],
  ["Strength of a Woman","Life was meant for good friends and great adventures."],


  ["Strength of a Woman","How Lucky I Am To Have Something That Makes Saying Goodbye So Hard."],
  ["Strength of a Woman","Time Decides Who You Meet In Life, Your Heart Decides Who You Want In Your Life, And Your Behaviour Decide Who Stays In Your Life."],

  ["Strength of a Woman","Only Those Who Care About You Can Hear You When You’re Quiet."],

  ["Strength of a Woman","Apologising Doesn’t Always Mean You’re Wrong And The Other Person Is Right. It Means You Values Relationship More Than Your Ego."],

  ["Strength of a Woman","To Live Will Be An Awfully Big Adventure."],
  ["Strength of a Woman","It Is Only With The Heart That One Can See Rightly. What Is Essential Is Invisible To The Eye."],
  ["Strength of a Woman","Never Apologize For Having High Standards. People Who Really Want To Be In Your Life Will Rise Up To Meet Them."],
  ["Strength of a Woman","If You Don’t Know Where You Want To Go, Then It Doesn’t Matter Which Path You Take."],

  ["Strength of a Woman","Someday, Everything Will Make Perfect Sense. So For Now, Laugh At The Confusion, Smile Through The Tears, And Keep Reminding Yourself That Everything Happens For A Reason."],

  ["Strength of a Woman","Let It All Go. See What Stays."],

  ["Strength of a Woman","It Always Seems Impossible Until It’s Done."],

  ["Strength of a Woman","I Have An Insane Calling To Be Where I’m Not."],

  ["Strength of a Woman","It Feels Good To Be Lost In The Right Direction."],

  ["Strength of a Woman","Don’t Call It A Dream Call It A Plan."],

  ["Strength of a Woman","She Needed A Hero. So That’s What She Became."],

  ["Strength of a Woman","Failure Is The Opportunity To Being Again More Intelligently."],

  ["Strength of a Woman"," Sometimes All You Need Is One Person That Shows You That It’s Okay To Let Your Guard Down, Be Yourself, And Love With No Regrets."],

  ["Strength of a Woman","Everything You Do Now Is For Your Future Think About That."],

  ["Strength of a Woman","Clear Your Mind of Can’t"],

  ["Strength of a Woman","Being Someone’s First Love May Be Great, But To Be Their Last Is Beyond Perfect."],

  ["Strength of a Woman","She Believed She Could So She Did"],

  ["Strength of a Woman","Shortest Horror Story Ever: Sold Out"],

  ["Strength of a Woman","I Am Not A One In A Million Kind Of Girl. I Am One In A Lifetime Kind Of Woman."],

  ["Strength of a Woman","So Honey Now Take Me Into Your Loving Arms Kiss Me Under The Light Of A Thousand Stars."],

  ["Strength of a Woman","Have I Mentioned Today How Lucky I Am To Be In Love With You?"],

  ["Strength of a Woman","Life Isn’t About Finding Yourself. Life Is About Creating Yourself."],

  ["Strength of a Woman","Clothes Aren’t Going To Change The World, The Women Who Wear Them Will."],

  ["Strength of a Woman","If You Obey All The Rules You Miss All The Fun."],

  ["Strength of a Woman","Learn The Rules Like A Pro So You Can Break Them Like An Artist."],

  ["Strength of a Woman","I Would Rather Regret The Things I Have Done Than The Things I Have Not."],

  ["Strength of a Woman","It Is Never Too Late To Be What You Might Have Been."],

  ["Strength of a Woman","Life Is Not Measured By The Number Of Breaths We Take, But By The Moments That Take Our Breath Away."],

  ["Strength of a Woman","I Wish I Could Turn Back The Clock. I’d Find You Sonner And Love You Longer."],

  ["Strength of a Woman","You Are Kind. You Are Smart. You Are Important."],

  ["Strength of a Woman","Smile. You’re Cute."],

  ["Strength of a Woman","The Question Isn’t Who Is Going To Let Me; It’s Who Is Going To Stop Me."],

  ["Strength of a Woman","Beauty Begins The Moment You Decide To Be Yourself."],





["Work","Whether you think you can, or you think you can’t, you’re right. —Henry Ford"],

  ["Work","Becoming is better than being. —Carol Dweck"],

  ["Work","I know not all that may be coming, but be it what it will, I’ll go to it laughing. —Herman Melville, Moby Dick"],

  ["Work","The sun himself is weak when he first rises, and gathers strength and courage as the day gets on. —Charles Dickens, The Old Curiosity Shop"],

  ["Work","How wonderful it is that nobody need wait a single moment before starting to improve the world. —Anne Frank, The Diary of a Young Girl"],

  ["Work","Oh yes, the past can hurt. But you can either run from it, or learn from it. —Rafiki, The Lion King"],

  ["Work","If I had nine hours to chop down a tree, I’d spend the first six sharpening my axe. —Abraham Lincoln"],

  ["Work","The mind is its own place, and in itself can make a heaven of hell, a hell of heaven. —John Milton, Paradise Lost"],

  ["Work","Intelligence is the ability to adapt to change. —Stephen Hawking"],

  ["Work","Leaders can let you fail and yet not let you be a failure. —Stanley McChrystal"],

  ["Work","Would I rather be feared or loved? Easy. Both. I want people to be afraid of how much they love me. —Michael Scott, The Office"],

  ["Work","The question isn’t who’s going to let me; it’s who is going to stop me? —Ayn Rand"],

  ["Work","Kid, there are heroes and there are legends. Heroes get remembered, but legends never die. Follow your heart, kid, and you’ll never go wrong. —Babe Ruth, The Sandlot"],

  ["Work","Talent wins games, but teamwork and intelligence wins championships. —Michael Jordan"],

  ["Work","There will be little rubs and disappointments everywhere, and we are all apt to expect too much; but then, if one scheme of happiness fails, human nature turns to another; if the first calculation is wrong, we make a second better: we find comfort somewhere. —Jane Austen, Mansfield Park"],

  ["Work","Fight till the last gasp. —William Shakespeare"],

  ["Work","Do or do not. There is no try. —Yoda, The Empire Strikes Back"],

  ["Work","Be men, or be more than men. Be steady to your purposes and firm as a rock. This ice is not made of such stuff as your hearts may be; it is mutable and cannot withstand you if you say that it shall not. —Mary Shelley"],

  ["Work","Always be a first-rate version of yourself, instead of a second-rate version of somebody else. —Judy Garland"],

  ["Work","The only way to achieve the impossible is to believe it is possible. —Charles Kingsleigh"],

  ["Work","Man is only truly great when he acts from the passions; never irresistible but when he appeals to the imagination. —Benjamin Disraeli"],

  ["Work","When we strive to become better than we are, everything around us becomes better too. —Paulo Coelho"],

  ["Work","Hey there, Mr. Grumpy Gills. When life gets you down do you wanna know what you’ve gotta do?  Just keep swimming. Just keep swimming. Just keep swimming, swimming, swimming. What do we do? We swim, swim. —Dory, Finding Nemo"],

  ["Work","We must believe that we are gifted for something and that this thing must be attained. —Marie Curie"],

  ["Work","Intelligence without ambition is a bird without wings. —Salvador Dali"],

  ["Work","If something is wrong, fix it now. But train yourself not to worry, worry fixes nothing. — Ernest Hemingway"],

  ["Work","Life’s like a movie, write your own ending. Keep believing, keep pretending. —Jim Hensen"],

  ["Work","Don’t judge each day by the harvest you reap but by the seeds that you plant. —Robert Louis Stevenson"],

  ["Work","You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You’re on your own. And you know what you know. And YOU are the one who’ll decide where to go… —Dr. Suess"],

  ["Work","Sometimes the fall kills you. And sometimes, when you fall, you fly. —Neil Gaiman, The Sandman"],

  ["Work","For artists, scientists, inventors, schoolchildren, and the rest of us, intrinsic motivation"],

  ["Work","In matters of style, swim with the current; in matters of principle, stand like a rock. — Thomas Jefferson"],

  ["Work","Do what you do so well that they will want to see it again and again and bring their friend. — Walt Disney"],

  ["Work","So many things are possible just as long as you don’t know they’re impossible. —Norton Juster"],

  ["Work","Everything should be made as simple as possible but not simpler. —Albert Einstein"],

  ["Work","Innovation distinguishes from a leader and a follower. —Steve Jobs"],

  ["Work","The moment you doubt whether you can fly, you cease forever to be able to do it. —J.M. Barrie"],

  ["Work","Everything you’ve ever wanted is on the other side of fear. —George Addai"],

  ["Work","I can’t go back to yesterday because I was a different person then. —Lewis Carroll"],

  ["Work","The world you desire can be won. It exists.. it is real.. it is possible.. it’s yours. —Ayn Rand"],

  ["Work","There is only one way to avoid criticism. Do nothing. Be nothing. Say nothing. —Aristotle"],

  ["Work","It is not the spoon that bends, it is only yourself. —Spoon Boy"],

  ["Work","Quality is job one. —Henry Ford"],

  ["Work","Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE. —Joss Whedon"],

  ["Work","The best way out is always through. —Robert Frost"],

  ["Work","It isn’t the mountains ahead to climb that wear you out; it’s the pebble in your shoe. — Muhammad Ali"],

  ["Work","If your actions inspire others to dream more, learn more, do more and become more, you are a leader. —John Quincy Adams"],

  ["Work","Speak softly and carry a big stick. —Theodore Roosevelt"],

  ["Work","Don’t go around saying the world owes you a living. The world owes you nothing. It was here first. –Mark Twain"],

  ["Work","It’s life. You don’t figure it out. You just climb up on the beast and ride. –Rebecca Wells"],

  ["Work","There’s zero correlation between being the best talker and having the best ideas. —Susan Cain"],

  ["Work","Unless someone like you care a whole awful lot, nothing is going to get better, it’s not. —Dr. Suess"],

  ["Work","A proud heart can survive general failure because such a failure does not prick its pride. It is more difficult and more bitter when a man fails alone. —Chinua Achebe"],

  ["Work","You will never plough a field if you only turn it over in your mind. —Irish Proverb"],

  ["Work","Ignorance and fear are but matters of the mind—and the mind is adaptable. —Daniel Kish"],

  ["Work","Those who don’t believe in magic will never find it. —Roald Dahl"],

  ["Work","Someone, at some point, came up with this very bad idea that an ordinary individual couldn’t make a difference in the world. I think that’s just a horrible thing. —John Skoll"],

  ["Work","Imitation is suicide. —Ralph Waldo Emerson"],

  ["Work","If you hire people just because they can do a job, they’ll work for your money. But if you hire people who believe what you believe, they’ll work for you with blood and sweat and tears. —Simon Sinek"],

  ["Work","Real courage is when you know you’re licked before you begin, but you begin anyway and see it through no matter what. —Harper Lee"],

  ["Work","Genius is born—not paid. —Oscar Wilde"],

  ["Work","Very often, a change of self is needed more than a change of scene. —A.C. Benson"],

  ["Work","The Answer to the Great Question… Of Life, the Universe and Everything… Is… Forty-two. —Douglas Adams"],

  ["Work","Opportunity is missed by most people because it is dressed in overalls and looks like work. —Thomas Edison"],

  ["Work","I’ve learned about the poetry and the wisdom and the grace that can be found in the words of people all around us when we simply take the time to listen. —Dave Isay"],

  ["Work","It is by going down into the abyss that we recover the treasures of life. Where you stumble, there lies your treasure. —Joseph Campbell"],

  ["Work","Follow your passion, stay true to yourself, never follow someone else’s path unless you’re in the woods and you’re lost and you see a path then by all means you should follow that. —Ellen Degeneres"],

  ["Work","It’s easy to solve a problem that everyone sees, but it’s hard to solve a problem that almost no one sees. —Tony Fadell"],

  ["Work","Learning never exhausts the mind. —Leonardo Da Vinci"],

  ["Work","If you’re alive, you’re a creative person. —Elizabeth Gilbert"],


  ["Work","My mother said to me, “If you are a soldier, you will become a general. If you are a monk, you will become the Pope.” Instead, I was a painter, and became Picasso. —Pablo Picasso"],

  ["Work","The power of imagination makes us infinite. —John Muir"],

  ["Work","Luck is a matter of preparation meeting opportunity. —Seneca"],

  ["Work","Never ruin an apology with an excuse. —Benjamin Franklin"],

  ["Work","Motivation is the art of getting people to do what you want them to do because they want to do it. —Dwight D. Eisenhower"],

  ["Work","There are no two words in the English language more harmful than “good job.” —Terence Fletcher"],

  ["Work","Don’t persuade, defend or interrupt. Be curious, be conversational, be real. And listen. — Elizabeth Lesser"],

  ["Work","The secret of health for both mind and body is not to mourn for the past, not to worry about the future, or not to anticipate troubles, but to live in the present moment wisely and earnestly. —Buddha"],

  ["Work","Failure is the condiment that gives success its flavor. —Truman Capote"],

  ["Work","An innovator is one who does not know it cannot be done. —R.A. Mashelkar"],

  ["Work","If you have built castles in the air, your work need not be lost; that is where they should be. Now put foundations under them. —Henry David Thoreau"],

  ["Work","As long as they are well-intentioned, mistakes are not a matter for shame, but for learning. —Margaret Heffernan"],

  ["Work","I am not a product of my circumstances. I am a product of my decisions. —Stephen Covey"],

  ["Work","You can’t wait for inspiration. You have to go after it with a club. —Jack London"],

  ["Work","I’m bored” is a useless thing to say. I mean, you live in a great, big, vast world that you’ve seen none percent of. Even the inside of your own mind is endless; it goes on forever, inwardly, do you understand? The fact that you’re alive is amazing, so you don’t get to say “I’m bored.” —Louis C.K"],

  ["Work","If we can challenge convention, we can solve any problem. —Josh Valman"],

  ["Work","Big jobs usually go to the men who prove their ability to outgrow small ones. —Ralph Waldo Emerson"],

  ["Work","In every job that must be done, there is an element of fun. You find the fun, and – SNAP – the job’s a game! —Mary Poppins"],

  ["Work","If you hit the target every time, it’s too near or too big. —Tom Hirshfield"],

  ["Work","Always remember that you are absolutely unique. Just like everyone else. —Margaret Mead"],

  ["Work","You can’t change how people treat you or what they say about you. All you can do is change how you react to it. —Mahatma Gandhi"],

  ["Work","We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light. —Plato"],

  ["Work","Learn from the mistakes of others. You can’t live long enough to make them all yourselves. —Chanakya"],

  ["Work","What I love most about rivers is, you can’t step in the same river twice. —Pocahontas"],

  ["Work","Strength shows not only in the ability to persist, but in the ability to start over. —F. Scott Fitzgerald"],

  ["Work","It’s time to try defying gravity. —Elphaba, Wicked"],

  ["Work","I have been bent and broken, but – I hope – into a better shape. –Charles Dickens, Great Expectations"],

  ["Work","Goonies never say die! —Mickey, The Goonies"],

  ["Work","If you light a lamp for someone else, it will also brighten your path. —Buddha"],

  ["Work","Tough times never last, but tough people do. —Dr. Robert Schuller"],

  ["Work","I would visualize things coming to me. It would just make me feel better. Visualization works if you work hard. That’s the thing. You can’t just visualize and go eat a sandwich. —Jim Carrey"],


  ["Work","Once you’ve accepted your flaws, no one can use them against you.– George R.R. Martin, A Game of Thrones"],

  ["Work","Why are you keeping this curiosity door locked? – Dustin, Stranger Things"],

  ["Work","When they give you lined paper, write the other way. – Ray Bradbury"],

  ["Work","How many times do I have to teach you: just because something works doesn’t mean it can’t be improved. — Shuri, Black Panther"],

  ["Work","Work hard, be kind, and amazing things will happen.— Conan O’Brien"],

  ["Work","To understand the heart and mind of a person, look not at what he has already achieved, but at what he aspires to. — Kahlil Gibran"],

  ["Work","You be greater than your feelings. I don’t demand this of you—life does. Otherwise, you’ll be washed away by feelings. You’ll be washed out to sea and never seen again. — Phillip Roth"],

  ["Work","I have always believed, and I still believe, that whatever good or bad fortune may come our way we can always give it meaning and transform it into something of value. —Hermann Hesse"],

  ["Work","A man of genius makes no mistakes; his errors are volitional and are the portals of discovery. — James Joyce"],

  ["Work","Nolite te bastardes carborundorum. Don’t let the bastards grind you down.” – Margaret Atwood, The Handmaid’s Tale"],

  ["Work","Do you think miners stand around all day talking about how hard it is to mine for coal? They do not. They simply dig. – Cheryl Strayed"],

  ["Work","Fulfillment isn’t found over the rainbow—it’s found in the here and now. Today I define success by the fluidity with which I transcend emotional landmines and choose joy and gratitude instead. — RuPaul"],

  ["Work","Thirty years ago my older brother, who was ten years old at the time, was trying to get a report written on birds that he’d had three months to write, which was due the next day. We were out at our family cabin in Bolinas, and he was at the kitchen table close to tears, surrounded by binder paper and pencils and unopened books about birds, immobilized by the hugeness of the task ahead. Then my father sat down beside him put his arm around my brother’s shoulder, and said, “Bird by bird, buddy. Just take it bird by bird.  – Anne Lamott"],

  ["Work","Perfectionism is the voice of the oppressor, the enemy of the people. It will keep you cramped and insane your whole life, and it is the main obstacle between you and a shitty first draft. I think perfectionism is based on the obsessive belief that if you run carefully enough, hitting each stepping-stone just right, you won’t have to die. The truth is that you will die anyway and that a lot of people who aren’t even looking at their feet are going to do a whole lot better than you, and have a lot more fun while they’re doing it.  – Anne Lamott"],

  ["Work","Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more. — Nikola Tesla"],

  ["Work","Somewhere, something incredible is waiting to be known. — Carl Sagan"],

  ["Work","A man who dares to waste one hour of time has not discovered the value of life. — Charles Darwin"],

  ["Work"," At the last dim horizon, we search among ghostly errors of observations for landmarks that are scarcely more substantial. The search will continue. The urge is older than history. It is not satisfied and it will not be oppressed. — Edwin Hubble"],

  ["Work","Only if we understand, can we care. Only if we care, we will help. Only if we help, we shall be saved. – Jane Goodall"],

  ["Work","Don’t be afraid of hard work. Nothing worthwhile comes easily. Don’t let others discourage you or tell you that you can’t do it. In my day I was told women didn’t go into chemistry. I saw no reason why we couldn’t. — Gertrude B. Elion"],

  ["Work","If you know you are on the right track, if you have this inner knowledge, then nobody can turn you off… no matter what they say.  —  Barbara McClintock"],

  ["Work","Whether a person shows themselves to be a genius in science or in writing a song, the only point is, whether the thought, the discovery or the deed, is living and can live on. — Johann Wolfgang von Goethe"],

  ["Work","For me, I am driven by two main philosophies: know more today about the world than I knew yesterday and lessen the suffering of others. You’d be surprised how far that gets you. – Neil deGrasse Tyson"],
  ["Work","When you constrain freedom, freedom will take flight and land on a windowsill. – Ai Weiwei"],

  ["Work","If I create from the heart, nearly everything works: if from the head, almost nothing.  —  Marc Chagall"],

  ["Work","Look at life with the eyes of a child.  —  Henri Matisse"],

  ["Work","Never be afraid to raise your voice for honesty and truth and compassion against injustice and lying and greed. If people all over the world…would do this, it would change the earth. – William Faulkner"],

  ["Work","No matter what people tell you, words and ideas can change the world. —  Robin Williams"],

  ["Work","Do you want to know who you are? Don’t ask. Act! Action will delineate and define you. — Thomas Jefferson"],

  ["Work","The man who moves a mountain begins by carrying away small stones. — Confuciusm, Confucius: The Analect"],

  ["Work","Learn the rules like a pro, so you can break them like an artist. — Pablo Picasso"],

  ["Work","Do not stop thinking of life as an adventure. You have no security unless you can live bravely, excitingly, imaginatively; unless you can choose a challenge instead of competence. — Eleanor Roosevelt"],

  ["Work","Be so good they can’t ignore you. — Steve Martin"],

  ["Work","Hire character. Train skill. — Peter Schutz"],

  ["Work","The best leaders are those most interested in surrounding themselves with assistants and associates smarter than they are. They are frank in admitting this and are willing to pay for such talents. — Antos Parrish"],

  ["Work","I’d rather regret the things I’ve done than regret the things I haven’t done. —  Lucille Ball"],

  ["Work","We can’t take any credit for our talents. It’s how we use them that counts. — Madeleine L’Engle"],

  ["Work","A little imagination combined with massive action goes a long way. – Grant Cardone"],

  ["Work","A company doesn’t exist to serve its own people; a company exists to serve the needs of the people who use its products or services. – Richard Sheridan"],

  ["Work","Your potential, the absolute best you’re capable of—that’s the metric to measure yourself against. Your standards are. Winning is not enough. People can get lucky and win. People can be assholes and win. Anyone can win. But not everyone is the best possible version of themselves. – Ryan Holiday"],

  ["Work","Failure it appears is not the regret that haunts most people; it is the choice not to risk failure at all. – Dr. John Izzo"],


  ["Goals","The way to get started is to quit talking and begin doing. Walt Disney"],
  ["Goals","Fear is the disease. Hustle is the antidote. Travis Kalanick"],
  ["Goals","The question I ask myself almost every day is, 'Am I doing the most important thing I could be doing?' Mark Zuckerberg"],
  ["Goals","The best time to plant a tree was 20 years ago. The second best time is now. Chinese proverb"],
  ["Goals","I attribute my success to this: I never gave or took any excuse. Florence Nightingale"],
  ["Goals","The most difficult thing is the decision to act, the rest is merely tenacity. Amelia Earhart"],
  ["Goals","Do or do not. There is no try. Yoda"],
  ["Goals","Twenty years from now, you will be more disappointed by the things that you didn't do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails. Explore, Dream, Discover. Mark Twain"],
  ["Goals","When I let go of what I am, I become what I might be. Lao Tzu"],
  ["Goals","The most common way people give up their power is by thinking they don't have any. Alice Walker"],
  ["Goals","Life is what happens to you while you're busy making other plans. John Lennon"],
  ["Goals","Eighty percent of success is showing up. Woody Allen"],
  ["Goals","Build your own dreams, or someone else will hire you to build theirs. Farrah Gray"],
  ["Goals","It is never too late to be what you might have been. George Eliot"],
  ["Goals","When everything seems to be going against you, remember that the airplane takes off against the wind, not with it. Henry Ford"],
  ["Goals","You can't fall if you don't climb. But there's no joy in living your whole life on the ground. Unknown"],
  ["Goals","Challenges are what make life interesting, and overcoming them is what makes life meaningful. Joshua Marine"],
  ["Goals","If you want to lift yourself up, lift up someone else. Booker T. Washington"],
  ["Goals","Formal education will make you a living; self-education will make you a fortune. Jim Rohn"],
  ["Goals","Rarely have I seen a situation where doing less than the other guy is a good strategy. Jimmy Spithill"],
  ["Goals","Your time is limited, so don't waste it living someone else's life. Steve Jobs"],
  ["Goals","The best revenge is massive success. Frank Sinatra"],
  ["Goals","My biggest motivation? Just to keep challenging myself. I see life almost like one long university education that I never had – every day I'm learning something new. Richard Branson"],
  ["Goals","I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel. Maya Angelou"],
  ["Goals","The two most important days in your life are the day you are born and the day you find out why. Mark Twain"],
  ["Goals","Whatever you can do, or dream you can, begin it. Boldness has genius, power, and magic in it. Johann Wolfgang von Goethe"],
  ["Goals","Life shrinks or expands in proportion to one's courage. Anais Nin"],
  ["Goals","There is only one way to avoid criticism: Do nothing, say nothing, and be nothing. Aristotle"],
  ["Goals","Do what you can, where you are, with what you have. Teddy Roosevelt"],
  ["Goals","Everything you've ever wanted is on the other side of fear. George Addair"],
  ["Goals","Fall seven times and stand up eight. Japanese proverb"],
  ["Goals","Two roads diverged in a wood, and I, I took the one less traveled by, and that has made all the difference. Robert Frost"],
  ["Goals","I am not a product of my circumstances. I am a product of my decisions. Stephen Covey"],
  ["Goals","It's hard to do a really good job on anything you don't think about in the shower. Paul Graham"],
  ["Goals","What's money? A man is a success if he gets up in the morning and goes to bed at night, and in between does what he wants to do. Bob Dylan"],
  ["Goals","A person who never made a mistake never tried anything new. Albert Einstein"],
  ["Goals","The person who says it cannot be done should not interrupt the person who is doing it. Chinese proverb"],
  ["Goals","You can't use up creativity. The more you use, the more you have. Maya Angelou"],
  ["Goals","You miss 100 percent of the shots you don't take. Wayne Gretzky"],
  ["Goals","It always seems impossible until it's done. Nelson Mandela"],
  ["Goals","It does not matter how slowly you go as long as you do not stop. Confucius"],
  ["Goals","If you do what you've always done, you'll get what you've always gotten. Tony Robbins"],
  ["Goals","Success is walking from failure to failure with no loss of enthusiasm. Winston Churchill"],
  ["Goals","You may be disappointed if you fail, but you are doomed if you don't try. Beverly Sills"],
  ["Goals","Few things can help an individual more than to place responsibility on him, and to let him know that you trust him. Booker T. Washington"],
  ["Goals","Whenever you see a successful person, you only see the public glories, never the private sacrifices to reach them. Vaibhav Shah"],
  ["Goals","Remember, no one can make you feel inferior without your consent. Eleanor Roosevelt"],
  ["Goals","The question isn't who is going to let me; it's who is going to stop me. Ayn Rand"],
  ["Goals","The only way to do great work is to love what you do. Steve Jobs"],
  ["Goals","Timing, perseverance, and 10 years of trying will eventually make you look like an overnight success. Biz Stone"],

  ["Goals","Impossible is just a word thrown around by small men who find it easier to live in the world they've been given than to explore the power they have to change it. Impossible is not a fact. It's an opinion. Impossible is potential. Impossible is temporary. Impossible is nothing. – Muhammad Ali"],

  ["Goals","The only limit to the height of your achievements is the reach of your dreams and your willingness to work for them.– Michelle Obama"],

  ["Goals","Setting goals is the first step in turning the invisible into the visible. – Tony Robbins"],

  ["Goals","If you have built castles in the air, your work need not be lost; that is where they should be. Now put the foundations under them. – Henry David Thoreau"],

  ["Goals","A goal is not always meant to be reached, it often serves simply as something to aim at. – Bruce Lee"],

  ["Goals","I believe the last thing I read at night will likely manifest when I'm sleeping. You become what you think about the most. - Daymond John"],

  ["Goals","Be practical as well as generous in your ideals. Keep your eyes on the stars, but remember to keep your feet on the ground. – Theodore Roosevelt"],

  ["Goals","It’s up to you to make your life. Take what you have and stack it up like a tower of teetering blocks. Build your dream around that. – Cheryl Strayed"],

  ["Goals","I do know that when I am 60, I should be attempting to achieve different personal goals than those which had priority at age 20. – Warren Buffett"],

  ["Goals","You measure the size of the accomplishment by the obstacles you have to overcome to reach your goals. - Booker T. Washington"],

  ["Goals","You are never too old to set a new goal or to dream a new dream. - C.S. Lewis"],

  ["Goals","This is my invariable advice to people: Learn how to cook – try new recipes, learn from your mistakes, be fearless and above all have fun! - Julia Child"],

  ["Goals","You're always working to improve, and you're always being critiqued on your next performance. It's not about what you've done. There's always room to grow. - Misty Copeland"],

  ["Goals","We hold ourselves back in ways both big and small, by lacking self-confidence, by not raising our hands, and by pulling back when we should be leaning in. Sheryl Sandberg"],

  ["Goals","If we have a goal and a plan, and are willing to take risks and mistakes and work as team, we can choose to do the hard thing. - Scott Kelly"],

  ["Goals","Some failure in life is inevitable. It is impossible to live without failing at something, unless you live so cautiously that you might as well not have lived at all – in which case, you fail by default. - J.K. Rowling"],

  ["Goals","Never give up. Today is hard, tomorrow will be worse, but the day after tomorrow will be sunshine. - Jack Ma"],

  ["Goals","We think, mistakenly, that success is the result of the amount of time we put in at work, instead of the quality of time we put in. - Arianna Huffington"],

  ["Goals","You don’t learn to walk by following the rules. You learn by doing, and falling over. - Richard Branson"],

  ["Goals","The people who are crazy enough to think they can change the world are the ones who do. - Steve Jobs"],

  ["Goals","A person should set his goals as early as he can and devote all his energy and talent to getting there. With enough effort, he may achieve it. Or he may find something that is even more rewarding. But in the end, no matter what the outcome, he will know he has been alive. - Walt Disney"],

  ["Goals","The future rewards those who press on. I don't have time to feel sorry for myself. I don't have time to complain. I'm going to press on. - Barack Obama"],

  ["Goals","It’s harder to stay on top than it is to make the climb. Continue to seek new goals. - Pat Summitt"],

  ["Goals","To sit back and let fate play its hand out and never influence it is not the way man was meant to operate. - John Glenn"],

  ["Goals","You can’t be that kid standing at the top of the waterslide, overthinking it. You have to go down the chute. - Tina Fey"],

  ["Goals","If something is important enough, even if the odds are against you, you should still do it. - Elon Musk"],

  ["Goals","If you're not stubborn, you'll give up on experiments too soon. And if you're not flexible, you'll pound your head against the wall and you won't see a different solution to a problem you're trying to solve. - Jeff Bezos"],

  ["Goals","Do the one thing you think you cannot do. Fail at it. Try again. Do better the second time. The only people who never tumble are those who never mount the high wire. This is your moment. Own it. - Oprah Winfrey"],

  ["Goals","The question I ask myself like almost every day is, 'Am I doing the most important thing I could be doing?' - Mark Zuckerberg"],

  ["Goals","I fear failure, but I won't let it stop me. Sometimes you just got to do it or else it just doesn't happen. - Mark Cuban"],

  ["Goals","The distance between number one and number two is always a constant. If you want to improve the organization, you have to improve yourself and the organization gets pulled up with you. That is a big lesson. I cannot just expect the organization to improve if I don't improve myself and lift the organization, because that distance is a constant. - Indra Nooyi"],

  ["Goals","Don't you dare underestimate the power of your own instinct. - Barbara Corcoran"],

  ["Goals","Sometimes, I shake if I have to do something that I’ve never done before –– maybe not noticeably, but inside. But I'll do it, because I know it’s not an insurmountable task; I've done plenty of tasks in my life. - Martha Stewart"],

  ["Goals","Envision, create, and believe in your own universe, and the universe will form around you. - Tony Hsieh"],

  ["Goals","You can always find a solution if you try hard enough. - Lori Greiner"],

  ["Goals","I think goals should never be easy, they should force you to work, even if they are uncomfortable at the time. - Michael Phelps"],

  ["Goals","I know how it looks. But just start. Nothing is insurmountable. - Lin-Manuel Miranda"],

  ["Goals","A goal without a timeline is just a dream. - Robert Herjavec"],

  ["Goals","If you want to live a happy life, tie it to a goal, not to people or things. - Albert Einstein"],

  ["Goals","Everyone's dream can come true if you just stick to it and work hard. - Serena Williams"],

  ["Goals","It always seems impossible until it's done. - Nelson Mandela"],

  ["Goals","You can only become truly accomplished at something you love. Don't make money your goal. Instead, pursue the things you love doing, and then do them so well that people can't take their eyes off you. - Maya Angelou"],

  ["Goals","Success consists of going from failure to failure without loss of enthusiasm. - Winston Churchill"],

  ["Goals","Hustling is putting every minute and all your effort into achieving the goal at hand. Every minute needs to count. - Gary Vaynerchuk"],

  ["Goals","I have not failed. I’ve just found 10,000 ways that won’t work. - Thomas Edison"],

  ["Goals","To win big, you sometimes have to take big risks. - Bill Gates"],

  ["Goals","Instead of looking at the past, I put myself ahead twenty years and try to look at what I need to do now in order to get there then. - Diana Ross"],

  ["Goals","Obstacles are those frightful things you see when you take your eyes off your goal. - Henry Ford"],

  ["Goals","You have to be able to get up and dust yourself off and always be going forward. - Rita Moreno"],

  ["Goals","To live a fulfilled life, we need to keep creating the 'what is next, of our lives. Without dreams and goals there is no living, only merely existing, and that is not why we are here.' - Mark Twain"],


  ["Relationship","Each friend represents a world in us, a world possibly not born until they arrive, and it is only by this meeting that a new world is born.– Anais Nin"],

  ["Relationship","A loving relationship is one in which the loved one is free to be himself — to laugh with me, but never at me; to cry with me, but never because of me; to love life, to love himself, to love being loved. Such a relationship is based upon freedom and can never grow in a jealous heart.– Leo F. Buscaglia"],

  ["Relationship","A real friend is one who walks in when the rest of the world walks out.– Walter Winchell"],

  ["Relationship","The meeting of two personalities is like the contact of two chemical substances: if there is any reaction, both are transformed.– Carl Jung"],

  ["Relationship","Whenever you're in conflict with someone, there is one factor that can make the difference between damaging your relationship and deepening it. That factor is attitude.– William James"],

  ["Relationship","When you stop expecting people to be perfect, you can like them for who they are.– Donald Miller"],

  ["Relationship","If you would be loved, love, and be loveable.— Benjamin Franklin"],

  ["Relationship","No road is long with good company.— Turkish Proverb"],

  ["Relationship","They may forget what you said, but they will never forget how you made them feel.— Carl W. Buechner"],

  ["Relationship","People are lonely because they build walls instead of bridges.— Joseph F. Newton Men"],

  ["Relationship","Shared joy is a double joy; shared sorrow is half a sorrow.— Swedish Proverb"],

  ["Relationship","You don't develop courage by being happy in your relationships everyday. You develop it by surviving difficult times and challenging adversity.— Epicurus"],

  ["Relationship","Constant kindness can accomplish much. As the sun makes ice melt, kindness causes misunderstanding, mistrust and hostility to evaporate.— Albert Schweitzer"],

  ["Relationship","For beautiful eyes, look for the good in others; for beautiful lips, speak only words of kindness; and for poise, walk with the knowledge that you are never alone.— Audrey Hepburn"],

  ["Relationship","You can make more friends in two months by becoming interested in other people than you can in two years by trying to get other people interested in you.— Dale Carnegie"],

  ["Relationship","Nobody can hurt me without my permission.— Mahatma Gandhi"],

  ["Relationship","Assumptions are the termites of relationships.— Henry Winkler"],

  ["Relationship","A good word is an easy obligation; but not to speak ill requires only our silence; which costs us nothing.— John Tillotson"],

  ["Relationship","Love is when you meet someone who tells you something new about yourself.— Andre Breton"],


  ["Relationship","A woman knows the face of the man she loves as a sailor knows the open sea.— Honore de Balzac"],

  ["Relationship","Someone to tell it to is one of the fundamental needs of human beings.— Miles Franklin"],

  ["Relationship","Friendship is born at that moment when one person says to another, ‘What! You too? I thought I was the only one — C.S. Lewis"],

  ["Relationship","The beginning of love is to let those we love be perfectly themselves, and not to twist them to fit our own image. Otherwise we love only the reflection of ourselves we find in them.— Thomas Merton"],

  ["Relationship","When a woman is talking to you, listen to what she says with her eyes.— Victor Hugo"],

  ["Relationship","Some think love can be measured by the amount of butterflies in their tummy. Others think love can be measured in bunches of flowers, or by using the words ‘for ever.' But love can only truly be measured by actions. It can be a small thing, such as peeling an orange for a person you love because you know they don't like doing it.— Marian Keyes"],

  ["Relationship","We can improve our relationships with others by leaps and bounds if we become encouragers instead of critics.— Joyce Meyer"],

  ["Relationship","Love takes off masks that we fear we cannot live without and know we cannot live within.— James Baldwin"],

  ["Relationship","Don't smother each other. No one can grow in the shade.— Leo Buscaglia"],

  ["Relationship","We are afraid to care too much, for fear that the other person does not care at all.— Eleanor Roosevelt"],

  ["Relationship","Some of the biggest challenges in relationships come from the fact that most people enter a relationship in order to get something: they’re trying to find someone who’s going to make them feel good. In reality, the only way a relationship will last is if you see your relationship as a place that you go to give, and not a place that you go to take.— Anthony Robbins"],

  ["Relationship","The royal road to a man’s heart is to talk to him about the things he treasures most.— Dale Carnegie"],

  ["Relationship","We often refuse to accept an idea merely because the tone of voice in which it has been expressed is unsympathetic to us.— Friedrich Nietzsche"],

  ["Relationship","It is of practical value to learn to like yourself. Since you must spend so much time with yourself you might as well get some satisfaction out of the relationship.— Norman Vincent Peale"],

  ["Relationship","Lots of people want to ride with you in the limo, but what you want is someone who will take the bus with you when the limo breaks down.— Oprah Winfrey"],

  ["Relationship","What love we've given, we'll have forever. What love we fail to give, will be lost for all eternity.— Leo Buscaglia"],

  ["Relationship","Keep away from those who try to belittle your ambitions. Small people always do that, but the really great make you believe that you too can become great.— Mark Twain"],

  ["Relationship","The greatest compliment that was ever paid me was when someone asked me what I thought, and attended to my answer.— Henry David Thoreau"],

  ["Relationship","You can kiss your family and friends good-bye and put miles between you, but at the same time you carry them with you in your heart, your mind, your stomach, because you do not just live in a world but a world lives in you.— Frederick Buechner"],

  ["Relationship","Once the realization is accepted that even between the closest human beings infinite distances continue, a wonderful living side by side can grow, if they succeed in loving the distance between them which makes it possible for each to see the other whole against the sky.— Rainer Maria Rilke"],

  ["Relationship","The way to love anything is to realize that it may be lost.— Gilbert K. Chesterton"],

  ["Relationship","True friendship comes when the silence between two people is comfortable.— David Tyson Gentry"],


  ["Relationship","If men would consider not so much wherein they differ, as wherein they agree, there would be far less of uncharitableness and angry feeling in the world.— Joseph Addison"],

  ["Relationship","Life is partly what we make it, and partly what it is made by the friends we choose.— Tennessee Williams"],

  ["Relationship","Everything that irritates us about others can lead us to an understanding of ourselves.— Carl Jung"],

  ["Relationship","When dealing with people, remember you are not dealing with creatures of logic, but creatures of emotion.— Dale Carnegie"],

  ["Relationship","Three things in human life are important: the first is to be kind; the second is to be kind; and the third is to be kind.— Henry James"],

  ["Relationship","When you hold resentment toward another, you are bound to that person or condition by an emotional link that is stronger than steel. Forgiveness is the only way to dissolve that link and get free.— Catherine Ponder"],

  ["Relationship","Intimacy is the capacity to be rather weird with someone – and finding that that's ok with them.— Alain de Botton"],

  ["Relationship","An eye for eye only ends up making the whole world blind.— Mahatma Gandhi"],

  ["Relationship","Flatter me, and I may not believe you. Criticize me, and I may not like you. Ignore me, and I may not forgive you. Encourage me, and I will not forget you. Love me and I may be forced to love you.– William Arthur Ward"],

  ["Relationship","What is uttered from the heart alone, will win the hearts of others to your own.– Johann Wolfgang von Goethe"],

  ["Relationship","Happiness is having a large, loving, caring, close-knit family in another city.– George Burns"],

  ["Relationship","What you do not want done to yourself, do not do to others.– Confucius"],

  ["Relationship","Don't walk in front of me; I may not follow. Don't walk behind me; I may not lead. Just walk beside me and be my friend.– Albert Camus"],

  ["Relationship","Having someone wonder where you are when you don't come home at night is a very old human need.– Margaret Mead"],

  ["Relationship","I like to listen. I have learned a great deal from listening carefully. Most people never listen.– Ernest Hemingway"],

  ["Relationship","Since you get more joy out of giving joy to others, you should put a good deal of thought into the happiness that you are able to give.– Eleanor Roosevelt"],

  ["Relationship","Never idealize others. They will never live up to your expectations. Don’t over-analyze your relationships. Stop playing games. A growing relationship can only be nurtured by genuineness. – Leo F. Buscaglia"],


  ["Relationship","A friend is someone who knows the song in your heart and can sing it back to you when you have forgotten the words.– Donna Roberts"],

  ["Relationship","Loving people live in a loving world. Hostile people live in a hostile world. Same world.— Wayne Dyer"],

  ["Relationship","It’s easy to fall in love. The hard part is finding someone to catch you.— Bertrand Russell"],

  ["Relationship","It takes courage to love, but pain through love is the purifying fire which those who love generously know. We all know people who are so much afraid of pain that they shut themselves up like clams in a shell and, giving out nothing, receive nothing and therefore shrink until life is a mere living death.— Eleanor Roosevelt"],

  ["Relationship","The real test of friendship is can you literally do nothing with the other person? Can you enjoy those moments of life that are utterly simple?— Eugene Kennedy"],

  ["Relationship","Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.— Lao-Tzu"],

  ["Relationship","If you aren’t good at loving yourself, you will have a difficult time loving anyone, since you’ll resent the time and energy you give another person that you aren’t even giving to yourself.— Barbara De Angelis"],

  ["Relationship","One of the most beautiful qualities of true friendship is to understand and to be understood.— Seneca"],

  ["Relationship","Truth is everybody is going to hurt you: you just gotta find the ones worth suffering for.— Bob Marley"],

  ["Relationship","Your task is not to seek for love, but merely to seek and find all the barriers within yourself that you have built against it.— Rumi"],

  ["Relationship","In everyone’s life, at some time, our inner fire goes out. It is then burst into flame by an encounter with another human being. We should all be thankful for those people who rekindle the inner spirit.— Albert Schweitzer"],

  ["Relationship","Love all, trust a few, do wrong to none.— William Shakespeare"],

  ["Relationship","The best thing to hold onto in life is each other.— Audrey Hepburn"],

  ["Relationship","You know it's love when all you want is that person to be happy, even if you're not part of their happiness.— Julia Roberts"],

  ["Relationship","The most painful thing is losing yourself in the process of loving someone too much, and forgetting that you are special too.— Ernest Hemingway"],

  ["Relationship","A friend is someone who gives you total freedom to be yourself — and especially to feel, or not feel. Whatever you happen to be feeling at any moment is fine with them. That’s what real love amounts to – letting a person be what he really is.— Jim Morrison"],

  ["Relationship","A loyal friend laughs at your jokes when they’re not so good, and sympathizes with your problems when they’re not so bad.— Arnold H. Glasgow"],

  ["Relationship","Just because it didn’t last forever, doesn’t mean it wasn’t worth your while.— Unknown"],

  ["Relationship","Age does not protect you from love. But love, to some extent, protects you from age.— Anais Nin"],

  ["Relationship","My great hope is to laugh as much as I cry; to get my work done and try to love somebody and the courage to accept the love in return.— Maya Angelou"],

  ["Relationship","There are no goodbyes for us. Wherever you are, you will always be in my heart.— Mahatma Gandhi"],

  ["Relationship","Blessed are they who have the gift of making friends, for it is one of God’s greatest gifts. It involves many things, but above all the power of going out of one’s self and appreciating what is noble and loving in another.— Thomas Hughes"],

  ["Relationship","First and foremost, self-love, and then give love away.— Katy Perry"],

  ["Relationship","Love cures people—both the ones who give it and the ones who receive it.— Karl Menninger"],

  ["Relationship","Growing apart doesn’t change the fact that for a long time we grew side by side; our roots will always be tangled. I’m glad for that.— Ally Condie"],

  ["Relationship","When we honestly ask ourselves which person in our lives means the most to us, we often find that it is those who, instead of giving advice, solutions, or cures, have chosen rather to share our pain and touch our wounds with a warm and tender hand. -Henri Nouwen"],

  ["Relationship","Patience is the mark of true love. If you truly love someone, you will be more patient with that person.— Thich Nhat Hanh"],

  ["Relationship","If you go looking for a friend, you’re going to find they’re very scarce. If you go out to be a friend, you’ll find them everywhere.— Zig Ziglar"],

  ["Relationship","The pain of parting is nothing to the joy of meeting again.— Charles Dickens"],

  ["Relationship","A successful marriage requires falling in love many times, always with the same person.— Mignon McLaughlin"],

  ["Relationship","Find a group of people who challenge and inspire you; spend a lot of time with them, and it will change your life.— Amy Poehler"],

  ["Relationship","To say that one waits a lifetime for his soulmate to come around is a paradox. People eventually get sick of waiting, take a chance on someone, and by the art of commitment become soulmates, which takes a lifetime to perfect.— Criss Jami"],

  ["Relationship","There is nothing I would not do for those who are really my friends. I have no notion of loving people by halves, it is not my nature.— Jane Austen"],

  ["Relationship","Nothing is perfect. Life is messy. Relationships are complex. Outcomes are uncertain. People are irrational.— Hugh Mackay"],

  ["Relationship","When you love someone, you love the person as they are, and not as you'd like them to be.— Leo Tolstoy"],

  ["Relationship","There is nothing like puking with somebody to make you into old friends.— Sylvia Plath"],

  ["Relationship","If I had a flower for every time I thought of you… I could walk through my garden forever.— Alfred Tennyson"],

  ["Relationship","A good friend can tell you what is the matter with you in a minute. He may not seem such a good friend after telling.— Arthur Brisbane"],

  ["Relationship","Above all, don't lie to yourself. The man who lies to himself and listens to his own lie comes to a point that he cannot distinguish the truth within him, or around him, and so loses all respect for himself and for others. And having no respect he ceases to love.— Fyodor Dostoevsky"],

  ["Relationship","Some people arrive and make such a beautiful impact on your life, you can barely remember what life was like without them.— Anna Taylor"],

  ["Relationship","Love is a two-way street constantly under construction.— Carroll Bryant"],

  ["Relationship","A dream you dream alone is only a dream. A dream you dream together is reality.— John Lennon"],

  ["Relationship","Spend a few minutes a day really listening to your spouse. No matter how stupid his problems sound to you.— Megan Mullally"],

  ["Relationship","It is the friends you can call up at 4 a.m. that matter.— Marlene Dietrich"],

  ["Relationship","To the world you may be just one person, but to one person you may be the world.— Brandi Snyder"],

  ["Relationship","Love that stammers, that stutters, is apt to be the love that loves best.— Gabriela Mistral"],

  ["Relationship","For small creatures such as we the vastness is bearable only through love.— Carl Sagan"],

  ["Relationship","Love and kindness are never wasted. They always make a difference. They bless the one who receives them, and they bless you, the giver.— Barbara De Angelis"],

  ["Relationship","Love is a game that two can play and both can win.— Eva Gabor"],

  ["Relationship","Deep in your wounds are seeds, waiting to grow beautiful flowers.— Niti Majethia"],

  ["Relationship","If ever there is tomorrow when we're not together… there is something you must always remember. You are braver than you believe, stronger than you seem, and smarter than you think. But the most important thing is, even if we're apart… I'll always be with you.— Winnie the Pooh"],

  ["Relationship","It is not so much our friends’ help that helps us, as the confidence of their help.— Epicurus"],

  ["Relationship","Love does not consist in gazing at each other, but in looking outward together in the same direction.— Antoine de Saint-Exupéry"],

  ["Relationship","We’re all a little weird. And life is a little weird. And when we find someone whose weirdness is compatible with ours, we join up with them and fall into mutually satisfying weirdness—and call it love—true love.— Robert Fulghum"],

  ["Relationship","A true friend is someone who is there for you when he’d rather be anywhere else.— Len Wein"],

  ["Relationship","He’s not perfect. You aren’t either, and the two of you will never be perfect. But if he can make you laugh at least once, causes you to think twice, and if he admits to being human and making mistakes, hold onto him and give him the most you can. He isn’t going to quote poetry, he’s not thinking about you every moment, but he will give you a part of him that he knows you could break. Don’t hurt him, don’t change him, and don’t expect for more than he can give. Don’t analyze. Smile when he makes you happy, yell when he makes you mad, and miss him when he’s not there. Love hard when there is love to be had. Because perfect guys don’t exist, but there’s always one guy that is perfect for you.— Bob Marley"],

  ["Relationship","Try to be a rainbow in someone's cloud.— Maya Angelou"],

  ["Relationship","If you love them in the morning with their eyes full of crust; if you love them at night with their hair full of rollers, chances are, you’re in love.— Miles Davis"],

  ["Relationship","Love doesn't make the world go around. Love is what makes the ride worthwhile.— Franklin P. Jones"],

  ["Relationship","It was only a sunny smile, and little it cost in the giving, but like morning light it scattered the night and made the day worth living.– F. Scott Fitzgerald"],

  ["Relationship","Forgiveness does not change the past, but it does enlarge the future.– Paul Boose"],

  ["Relationship","If you live to be 100, I hope I live to be 100 minus 1 day, so I never have to live without you.– Winnie the Pooh"],

  ["Relationship","Let us be grateful to the people who make us happy; they are the charming gardeners who make our souls blossom.– Marcel Proust"],


  ["Faith","The situations that will stretch your faith most will be those times when life falls apart and God is nowhere to be found. This happened to Job. – Rick Warren"],

  ["Faith","So keep your faith in the God above,  and faith in the righteous truth,it shall bring you back to the absent love, and the joys of a vanished youth. –Edgar A Guest"],

  ["Faith","So keep your faith in the God above, and faith in the righteous truth,it shall bring you back to the absent love, and the joys of a vanished youth. –Edgar A Guest"],


  ["Faith","Prayer will change a heartache into a cheerful song  –Eldred Herbert"],

  ["Faith","Prayer will change a heartache into a cheerful song,If in faith you ask it, the answer will soon come 'long. –Eldred Herbert"],

  ["Faith","My faith didn't remove the pain, but it got me through the pain. Trusting God didn't diminish or vanquish the anguish, but it enabled me to endure it.  –Robert Rogers"],

  ["Faith","My faith didn't remove the pain, but it got me through the pain. Trusting God didn't diminish or vanquish the anguish, but it enabled me to endure it. –Robert Rogers"],

  ["Faith","Faith is unquestionng belief. –Ronald Hopfer"],

  ["Faith","Send a drop of faith, with a single prayer.And God will show the way, as faith is always there. –Julie Hebert"],

  ["Faith","Who is of so little faith that in a moment of great disaster or heartbreak has not called to his God?  –Og Mandino "],

  ["Faith","Our pride insists we must work our way to God. Only the Christian faith presents God’s grace as unconditional. –Randy Alcorn"],

  ["Faith","Faith is not only daring to believe, it is also daring to act. When I believe in myself as a son of God, I attribute to all men the same quality. This goes for men of every class, creed and color. The proof that I believe this way will be measured by the way I act towards others. –Wilfred Peterson"],

  ["Faith","Every day you need to get a full dose of the Word and mediate on scripture, and if you discipline yourself and remain consistent, your faith will grow and mature, and remember that God, the Word, and your faith, is a recipe for success. –Stephanie Williams"],

  ["Faith","Hearing how God is moving in other places encourages and inspires our faith for what God wants to do in our own corner of the world. –Matt Brown"],

  ["Faith","Faith is building on what you know is here so you can reach what you know is there. –Cullen Hightower"],

  ["Faith","Our love and belief in a living God, whom we haven't seen, defines an important aspect of the Christian faith. –Sarah Young"],

  ["Faith","Faith cannot be conjured up, faith is freely given,Faith comes from the work of God, not from the years man's striven.–Greta Zwaan"],

  ["Faith","When you have faith in God, you don't have to worry about the future. You just know it's all in His hands. You just go to and do your best. –Elder Bryan Mathison"],

  ["Faith","It's worth taking a risk when motivated by faith in God's Word. –Ruben Barreto"],

  ["Faith","So with the slow death of the local church, many individuals never learn how to be reconciled to the Lord. They never come to Him by faith in the right spirit and with the right attitude to be saved. –James Thomas Lee Jr"],

  ["Faith","Only God can shut out the waves of depression and feelings of loneliness and failure that come over you. Faith in God's love alone can salvage the hurt mind. –David Wilkerson"],

  ["Faith","When we in faith embrace Christ as our Lord and Savior, our minds are transformed. –John MacArthur Jr."],

  ["Faith","Faith is a very important attribute to positive thinking. –Hanif Raah"],

  ["Faith","It is true that a prayer that comes from the heart can move mountains, it increases your faith, and brings you closer to God. –Rebecca Small"],

  ["Faith","Through the centuries millions and millions of people have found peace with God through faith in the Lord Jesus. –Stanford Murrell"],

  ["Faith","By faith, we believe God provides and we hold to the truth that He will not lie. –Lynn R. Davis"],

  ["Faith","And it is not just faith, mark you, which changes the situation; it is faith in what God has said. –T. Austin-Sparks"],

  ["Faith","Faith is not the power of positive thinking; it is believing in God and trusting that His will is always best even when you cannot understand why. –Shari Howerton"],

  ["Faith","By our faith, and with the help of God, we can build the character of our children in a way that honors God and can move the world in the right direction. –Derek Polen"],
  ["Faith","If you will believe and stay in faith, and expect good things, you too can defy the odds. –Joel Osteen"],

  ["Faith","Faith means to have trust or confidence in something, such as having faith that the sun will rise and set each day. –Chris Johnston"],

  ["Faith","God delights in answering the prayer of faith. –K. P. Yohannan"],


  ["Faith","God is calling for His church to arise in the hour of crisis. We must invade enemy territory through prayer, and by exercising faith that manifests the peace of God in our lives. –Lydia Chorpening"],

  ["Faith","You are loving, as well as kind, You have a sincere heart And I admire your faith in God You cherish your virtue As I value my own. –Christine John"],

  ["Faith","Choosing a life of faith and the salvation of our souls requires that we let go of many things in this world. –John Paul Thomas"],

  ["Faith","Praying for your husband and your marriage requires faith, to believe even before you actually see. –Jennifer Smith"],

  ["Faith","Faith is unseen but felt, faith is strength when we feel we have none, faith is hope when all seems lost. –Catherine Pulsifer"],

  ["Faith","When I enter into a state of deep meditation I am abundantly aware of a magneticlike force, which pulls me in the direction of God. –Wayne Dyer"],

  ["Faith","Our faith comes in moments . . . yet there is a depth in those brief moments which constrains us to ascribe more reality to them than to all other experiences. –Ralph Waldo Emerson"],

  ["Faith","There is no question that faith is a key element in effective prayer. On one occasion, Jesus could not do many miracles in a certain place because of the unbelief of the people there. –Greg Laurie"],

  ["Faith","A positive statement propels hope toward a better future, it builds up your faith and that of others, and it promotes change. –Jan Dargatz"],

  ["Faith","Faith means being sure of what we hope for now. It means knowing something is real, this moment, all around you, even when you don't see it. –Joni Eareckson Tada"],

  ["Faith","God has ordained the blessing of prosperity to work through faith in Him and therein lies the greatest wealth. –Jim Ballew"],

  ["Faith","God has ordained the blessing of prosperity to work through faith in Him and therein lies the greatest wealth. –Jim Ballew"],

  ["Faith","God is capable of discerning the thoughts and intents of the heart, and answers prayers of faith both spoken and unspoken. It's all about faith. –Luis Ranzolin"],

  ["Faith","Faith is no irresponsible shot in the dark. It is a responsible trust in God, who knows the desires of your hearts, the dreams you are given, and the goals you have set. He will guide your paths right. –Robert Schuller"],

  ["Faith","Faith is a kind of knowing; it is different from hope. My faith is that life is purposeful; of that I'm sure. There is a God, there is intelligence, there is consciousness. And behind all of this, there is incredible compassion. –John Denver"],

  ["Faith","All he asks is that we trust Him, that we stand before Him in integrity and faith. God is just waiting for us to trust Him. –Charles R. Swindoll"],

  ["Faith","It is the things that we go through that prove our faith and test our godly character. –Scott F Neve"],

  ["Faith","The end of an honorable life is abundant and eternal life. It comes from living in faith. –Kenneth Copeland"],

  ["Faith","May your faith be strengthened and your heart filled with joy as we celebrate our Savior's birth. –Ray Pritchard"],

  ["Faith","Faith is simply your response to the message of God's love and grace. –Sahne Callahan"],

  ["Faith","Don't be afraid to step out in faith for God. Olivia Hope, If life throws you lemons, make lemonade!"],

  ["Faith","Self belief is the root of the confidence you need, meaning you have faith in all your experience and expertise to make the right decisions, particularly when under pressure. –Philip West"],

  ["Faith","See the best. Forgive the worst. Forget the bad. Always have faith. –Melissa Eshleman"],

  ["Faith","God Himself created the world by the power of His voice. Surely He can do a small thing like build a church that is rich in diversity. And given our history, when it happens we will all know that it is the Lord's good doing. –Trillia J. Newbell"],

  ["Faith","Peter's walk stands as an invitation to everyone who, like him, wants to step out in faith and experience more of the power and presence of God. –John Ortberg"],

  ["Faith","Will you start everyday with a new hope, leave bad memories behind and have faith for a better tomorrow? –Melissa Eshleman"],

  ["Faith","Otherwise without faith it becomes very difficult to keep pushing forward every day. –Darrin Wiggins"],

  ["Faith","The Bible is seen as the Word of God. When people of faith read the Bible, God tells them what to do. –Michael Hill"],

  ["Faith","Faith for the journey of walking with God leads to encounters with God. –Bill Johnson"],


  ["Faith","The promise of God's Word, the Bible - not our feelings - is our authority. The Christian lives by faith (trust) in the trustworthiness of God Himself and His Word. We are to place our faith (trust) in God and His trustworthiness and the promise of His Word. –Jeanette Duby"],

  ["Faith","Faith comes by hearing and hearing by the word of God and by studying   –Pastor Paul Rika"],

  ["Faith","I believe if you keep your faith, you keep your trust, you keep the right attitude, if you're grateful, you'll see God open up new doors. –Joel Osteen"],

  ["Faith","A life of faith is a life of gratitude - it means a life in which I am willing to experience my complete dependence upon God and to praise and thank him unceasingly for the gift of being. –Henri J. M. Nouwen"],

  ["Faith","Faith is not the belief that God will do what you want.Faith is the belief that God will do what is right.–Max Lucado"],

  ["Faith","How do you have faith? Simply start living by faith, pray earnestly and humbly, and get into the habit of looking expectantly for the best. –Dr. Norman Vincent Peale"],

  ["Faith","Faith that lives on emotion dies with emotion. Faith that is rooted, not in how we feel but in how we live, survives the emotional roller coaster of the holiday seasons. –S. Joseph Krempa"],

  ["Faith","And one of the best ways to grow in faith is to share your faith. –Caleb Breakey"],

  ["Faith","At first it wasn't easy to live by faith I kept worrying about not having any money what with all the bills piling up. Then one day I stopped worrying and put into practice what I had read in the Bible. –Eunice Tawney"],

  ["Faith","I think we all would do better to pray prayers that ask God to increase our faith before He increases our joy. –Candace Payne"],

  ["Faith","Faith talks in the language of God. Doubt talks in the language of man. –E.W. Kenyon"],


  ["Faith","It doesn't matter how huge the mountains in our lives and communities seem to be, they are nothing for the woman or man of faith. –Sammy Tippit"],


  ["Faith","So to change and grow in God, we need to have faith. –G B Woodcock"],

  ["Faith","The reason birds can fly and we can't is simply because they have perfect faith, for to have faith is to have wings. –J. M. Barrie"],


    /////////////////////////////

  ["Faith","All I have seen teaches me to trust the Creator for all I have not seen.– Ralph Waldo Emerson"],

  ["Faith","None of us knows what might happen even the next minute, yet still we go forward. Because we trust. Because we have Faith. – Paulo Coelho, Brida"],

  ["Faith","I believe in Christianity as I believe that the sun has risen: not only because I see it, but because by it I see everything else.– C.S. Lewis"],

  ["Faith","All the world is made of faith, and trust, and pixie dust.  – J.M. Barrie, Peter Pan"],

  ["Faith","I believe in everything until it's disproved. So I believe in fairies, the myths, dragons. It all exists, even if it's in your mind. Who's to say that dreams and nightmares aren't as real as the here and now? – John Lennon"],

  ["Faith","Faithless is he that says farewell when the road darkens.– J.R.R. Tolkien"],
  ["Faith","I think if I've learned anything about friendship, it's to hang in, stay connected, fight for them, and let them fight for you. Don't walk away, don't be distracted, don't be too busy or tired, don't take them for granted. Friends are part of the glue that holds life and faith together. Powerful stuff. – Jon Katz"],

  ["Faith","I have great faith in fools - self-confidence my friends will call it.– Edgar Allan Poe, Marginalia"],

  ["Faith","We are twice armed if we fight with faith. – Plato"],


  ["Faith","Faith is a passionate intuition. – William Wordsworth"],

  ["Faith","Faith is the bird that feels the light when the dawn is still dark. – Rabindranath Tagore"],


  ["Faith","Faith is unseen but felt, faith is strength when we feel we have none, faith is hope when all seems lost. – Catherine Pulsifer"],



  ["Faith","The seeds of courage sprouts in the soil of perseverance and become faith. – Maxime Lagacé"],



  ["Faith","Faith is an oasis in the heart which will never be reached by the caravan of thinking. – Kahlil Gilbran"],


  ["Faith","The greatest religion is to be true to your own nature. Have faith in yourselves. – Swami Vivekananda"],


  ["Faith","Faith is not belief without proof, but trust without reservation. – D. Elton Trueblood"],




  ["Faith","Faith is to believe what you do not see; the reward of this faith is to see what you believe. – Augustine of Hippo"],



  ["Faith","To one who has faith, no explanation is necessary. To one without faith, no explanation is possible. –Thomas Aquinas"],


  ["Faith","It’s faith in something and enthusiasm for something that makes a life worth living. –Oliver Wendell Holmes"],


  ["Faith","Without faith, nothing is possible. With it, nothing is impossible. – Mary McLeod Bethune"],

  ["Faith","None of us knows what might happen even the next minute, yet still we go forward. Because we trust. Because we have faith. – Paulo Coelho "],


  ["Faith","Faith is realizing that you always get what you need. – Sri Sri Ravi Shankar"],


  ["Faith","My obligation is to do the right thing. The rest is in God’s hands. – Martin Luther King Jr"],



  ["Faith","Those who have weak faith themselves cannot arouse faith in others. – Lao Tzu"],

  ["Faith","Faith is the subject of the head. Devotion is the subject of the heart and meditation connect both. – Sri Sri Ravi Shankar"],

  ["Faith","That is the definition of faith – acceptance of that which we imagine to be true, that which we cannot prove. – Dan Brown"],

  ["Faith","Never be afraid to trust an unknown future to a known God. – Corrie ten Boom"],

  ["Faith","And whatever you ask in prayer, you will receive, if you have faith. – Matthew 21:22"],


  ["Faith","Now faith is confidence in what we hope for and assurance about what we do not see. – Hebrews 11:1"],

  ["Faith","And, when you want something, all the universe conspires in helping you to achieve it. – Paulo Coelho "],

  ["Faith","Faith is the art of holding on to things your reason has once accepted, in spite of your changing moods. – C.S. Lewis"],

  ["Faith","Maybe it’s not working out, because God is working out something better. Sometimes it takes your break down to create your breakthrough. Sometimes our greatest blessings come from our biggest disappointments. – Kimberly Jones Pothier"],

  ["Faith","Faith certainly tells us what the senses do not, but not the contrary of what they see; it is above, not against them. – Blaise Pascal"],


  ["Faith","Faith is the strength by which a shattered world shall emerge into the light. – Helen Keller"],

  ["Faith","Faith is a place of mystery, where we find the courage to believe in what we cannot see and the strength to let go of our fear of uncertainty. – Brené Brown"],

  ["Faith","Faith and prayerfulness in tough times and service and humility in good times are the ways of the wise. – Sri Sri Ravi Shankar"],

  ["Faith","Your most important asset is having faith in yourself. You can have all the world’s resources at your disposal and still fail if you don’t believe in yourself. – @LifeMathMoney"],

  ["Faith","Experience is a gift – but naïveté, blind faith, and not knowing the rules can also be a real advantage. – Gary Vaynerchuk"],

  ["Faith","Everyone knows that the soft overcomes the hard and the yielding triumphs over the rigid. Why then so little faith? Why can no one practice it? – Lao Tzu "],


  ["Faith","Faith means you have it in your heart before you have it in your circumstances. – Kimberly Jones Pothier"],

  ["Faith","The antidote to frustration is a calm faith, not in your own cleverness, or in hard toil, but in God’s guidance. – Norman Vincent Peale"],

  ["Faith","When a person is devoted to something with complete faith, I unify his faith in that. Then, when his faith his completely unified, he gains the object of his devotion. – Bhagavad Gita"],

  ["Faith","Faithful, intent, his senses subdued, he gains knowledge; gaining knowledge, he soon finds perfect peace. – Bhagavad Gita"],

  ["Faith","The universe heard you now all you have to do is trust it’s timing. – Andrew Zaffina"],

  ["Faith","First make the decision. The ‘how’ will come along the way. – Gal Shapira"],

  ["Faith","Don’t settle, and don’t struggle. Life is what flows in between. – Naval Ravikant"],


  ["Faith","Faith is taking the first step even when you don’t see the whole staircase. – Martin Luther King Jr"],

  ["Faith","If you lose faith, you lose all. – Eleanor Roosevelt"],

  ["Faith","We are never defeated unless we give up on God. – Ronald Reagan"],

  ["Faith","Our faith changes us. I know it’s changed me. It renews in us a sense of possibility. – Barack Obama"],

  ["Faith","Be faithful in small things because it is in them that your strength lies. – Mother Teresa"],

  ["Faith","Faith is a gift that keeps alive a profound and beautiful certainty: that we are God’s beloved children. – Pope Francis"],

  ["Faith","What we need today are universal values based not on faith but on scientific findings, common experience and common sense. – 14th Dalai Lama"],

  ["Faith","Scientists were rated as great heretics by the church, but they were truly religious men because of their faith in the orderliness of the universe. – Albert Einstein"],

  ["Faith","All I have seen teaches me to trust the Creator for all I have not seen. – Ralph Waldo Emerson"],

  ["Faith","Faith consists in believing when it is beyond the power of reason to believe. – Voltaire"],

  ["Faith","Faith activates God – Fear activates the Enemy. – Joel Osteen"],

  ["Faith","Faith is different from proof; the latter is human, the former is a Gift from God. – Blaise Pascal"],

  ["Faith","All the world is made of faith, and trust, and pixie dust. – J.M. Barrie"],

  ["Faith","You must not lose faith in humanity. Humanity is like an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty. – Mahatma Gandhi"],

  ["Faith","The love of heaven makes one heavenly. – William Shakespeare"],

  ["Faith","God will never give you anything you can’t handle, so don’t stress. – Kelly Clarkson"],

  ["Faith","I have one life and one chance to make it count for something… I’m free to choose what that something is, and the something I’ve chosen is my faith. Now, my faith goes beyond theology and religion and requires considerable work and effort. My faith demands – this is not optional – my faith demands that I do whatever I can, wherever I am, whenever I can, for as long as I can with whatever I have to try to make a difference. – Jimmy Carter"],

  ["Faith","I find your lack of faith disturbing. – Darth Vader"],

  ["Faith","Faith in Christ is the only thing to save you from despair. – C.S. Lewis"],

  ["Faith","It is so hard to believe because it is so hard to obey. – Søren Kierkegaard"],

  ["Faith","Whoso loves, believes the impossible. – Elizabeth Barret Browning"],



  ["Faith","Belief clings, but faith lets go. – Alan Watts"],

  ["Faith","The principle part of faith is patience. – George MacDonald"],

  ["Faith","Faith means not wanting to know what is true. – Friedrich Nietzsche"],

  ["Faith","Faith means you keep the dream more alive than reality. – Maxime Lagacé"],

  ["Faith","Leap of faith – yes, but only after reflection. – Søren Kierkegaard"],

  ["Faith","Stand straight, walk proud, have a little faith. – Garth Brooks"],

  ["Faith","Don’t chase, what is meant for you will find you. – Kimberly Jones-Pothier"],

  ["Faith","The more you surrender, the more faithful you’ll feel. – Gabby Bernstein"],

  ["Faith","Faith is not belief. Belief is passive. Faith is active. – Edith Hamilton"],

  ["Faith","Hope is putting faith to work when doubting would be easier. – Paulo Coelho"],

  ["Faith","To achieve anything in life you have to believe that you can. – Rhonda Byrne"],

  ["Faith","Have a plan for today, keep the joy of yesterday, be hopeful for tomorrow. – John Cena"],


  ["Faith","All belief systems are just the stories we create in order to deal with the void. – Jed McKenna"],




  ["Faith","If you think you can win, you can win. Faith is necessary to victory. – William Hazlitt"],

  ["Faith","Believers, look up – take courage. The angels are nearer than you think. – Billy Graham"],

  ["Faith","Through hard work, perseverance and a faith in God, you can live your dreams. – Ben Carson"],

  ["Faith","Fear makes you weak. Faith makes you strong. – Maxime Lagacé"],

  ["Faith","My faith didn’t remove the pain, but it got me through the pain. Trusting God didn’t diminish or vanquish the anguish, but it enabled me to endure it. – Robert Rogers"],

  ["Faith","You have to grow from the inside out. None can teach you, none can make you spiritual. There is no other teacher but your own soul. – Swami Vivekananda"],

  ["Faith","Faith gives you an inner strength and a sense of balance and perspective in life. – Gregory Peck"],

  ["Faith","He who has faith has… an inward reservoir of courage, hope, confidence, calmness, and assuring trust that all will come out well – even though to the world it may appear to come out most badly. – B. C. Forbes"],

  ["Faith","We must not, in trying to think about how we can make a big difference, ignore the small daily differences we can make which, over time, add up to big differences that we often cannot foresee. – Marian Wright Edelman"],

  ["Faith","You are not taking action because you don’t believe you can achieve it. When a belief is formed, it is immediately transmuted into consistent action. – Gal Shapira"],

  ["Faith","There are two kinds of people: Those who say “I will believe it when I see it.” And those who say, “To see it, I know I must believe it.” – Rhonda Byrne"],


  ["Faith","For we walk by faith, not by sight. – 2 Corinthians 5:7"],

  ["Faith","A garden is evidence of faith. It links us with all the misty figures of the past who also planted and were nourished by the fruits of their planting. – Gladys Taber"],

  ["Faith","Just mind your own business and be the light. Trust that everyone is on their own spiritual path and timeline. Your loved ones may not ever share your beliefs, but that doesn’t matter. Stay committed to your faith and the Universe will take care of the rest. – Gabby Bernstein"],

  ["Faith","Faith is not desire. Faith is will. Desires are things that need to be satisfied. Will is a force that changes everything around us. – Paulo Coelho"],

  ["Faith","If your faith remains unshaken despite a hundred events that Nature brings to you, then you are a perfected person and life becomes smooth. – Sri Sri Ravi Shankar"],

  ["Faith","One person believing in you can change everything. If you can, be that person for someone else. – @orangebook_"],

  ["Faith","Believing involves thinking, talking and acting as though you have already received what you’ve asked for. – Rhonda Byrne"],

  ["Faith","Slow down. Lose yourself in something. Be moved to emotions. Cry. Laugh. Love limitless. Live. – John Cena"],



  ["Faith","All beliefs. All concepts. All thoughts. Yes, they’re all false; all bullshit. Of course they are. Not just religions and spiritual teachings, but all philosophies, all ideas, all opinions. If you’re going for the truth, you’re not taking any of them with you. – Jed McKenna"],


  ["Faith","Saying that no belief is true is simply the inversion of this crisp, perfect statement; life has no meaning. Our existence is utterly, perfectly, gloriously meaningless. – Jed McKenna"],

  ["Faith","Believe in yourself when nobody else does. – Mary J. Blige"],

  ["Faith","We lack faith in what exists within us because we lack faith in Who exists within us. – Marianne Williamson"],

  ["Faith","To be lost in spiritlessness is the most terrible thing of all. – Søren Kierkegaard"],

  ["Faith","The function of prayer is not to influence God, but rather to change the nature of the one who prays. – Søren Kierkegaard"],

  ["Faith","The smallest seed of faith is better than the largest fruit of happiness. – Henry David Thoreau"],

  ["Faith","What’s the point of persevering if I don’t persevere until the end? – Maxime Lagacé"],

  ["Faith","Faith and prayer are the vitamins of the soul; man cannot live in health without them. – Mahalia Jackson"],

  ["Faith","Confidence or faith in something, however noble, breeds only obstinacy, and obstinacy is another term for credulity. – Jiddu Krishnamurti"],

  ["Faith","I do not know if you have noticed that faith invariably breeds violence. – Jiddu Krishnamurti"],

  ["Faith","If your beliefs aren’t your own, whose are they? Who are you? You must re-examine all of your assumptions, and only a small fraction of them are readily visible. Unchallenged beliefs can define you and determine the course of your life. – Jed McKenna"],

  ["Faith","I feel no need for any other faith than my faith in the kindness of human beings. I am so absorbed in the wonder of earth and the life upon it that I cannot think of heaven and angels. – Pearl S. Buck"],

  ["Faith","When men destroy their old gods they will find new ones to take their place. – Pearl S. Buck"],

  ["Faith","Faith is what is left after all your beliefs have been blown to hell. – Ram Dass"],

  ["Faith","Faith as ultimate concern is an act of the total personality. It happens in the center of the personal life and includes all its elements. Faith is the most centered act of the human mind. It is not a movement of a special section or a special function of (our) total being. They all are united in the act of faith. – Paul Tillich"],

  ["Faith","Disillusion comes only to the illusioned. One cannot be disillusioned of what one never put faith in. – Dorothy Thompson"],

  ["Faith","When we blindly adopt a religion, a political system, a literary dogma, we become automatons. We cease to grow. – Anaïs Nin "],

  ["Faith","I thought faith would say. “I’ll take away the pain and discomfort”, but what it ended up saying was, “I’ll sit with you in it”. – Brené Brown"],

  ["Faith","Your soul must hold fast to Him, you must follow after Him in your thoughts, you must tread His ways by faith, not in outward show. – Ambrose"],

  ["Faith","God said He will never let you face anything that you can’t handle. He will always give you the grace, the strength, the faith for what comes your way. – Kimberly Jones Pothier"],

  ["Faith","Faith is not the belief that God will do what you want. It is the belief that God will do what is right. – Max Lucado"],

  ["Faith","In faith there is enough light for those who want to believe and enough shadows to blind those who don’t. – Blaise Pascal"],

  ["Faith","Faith sees the invisible, believes the unbelievable, and receives the impossible. – Corrie ten Boom"],

  ["Faith","Optimism is an alienated form of faith, pessimism an alienated form of despair. – Erich Fromm"],

  ["Faith","Faith, to my mind, is a stiffening process, a sort of mental starch. – E. M. Forster"],
    
    
    
    //////////////////////////////////

  ["Faith","Don’t let anyone look down on you because you are young, but set an example for the believers in speech, in conduct, in love, in faith and in purity. — 1 Timothy 4:12"],

  ["Faith","Honor your father and your mother, that your days may be long in the land that the Lord your God is giving you. — Exodus 20:12"],

  ["Faith","Be strong and courageous. Do not be afraid or terrified because of them, for the LORD your God goes with you; he will never leave you nor forsake you. — Deuteronomy 31:6"],

  ["Faith","Do not let any unwholesome talk come out of your mouths, but only what is helpful for building others up according to their needs, that it may benefit those who listen. — Ephesians 4:29"],

  ["Faith","How can a young person stay on the path of purity? By living according to your word. — Psalm 119:9"],

  ["Faith","For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope. — Jeremiah 29:11"],


  ["Faith","Listen, my son, to your father’s instruction and do not forsake your mother’s teaching. They are a garland to grace your head and a chain to adorn your neck. — Proverbs 1:8-9"],




  ["Faith","You know what I think? I think that if a young woman doesn't engage in the act of occasionally wishing on a star or a flower or a birthday cake full of candles, then we're forfeiting one of the sweetest whimsies of our youth. — Robin Jones Gunn"],

  ["Faith","You never know how the tough times you are going through today will inspire someone else tomorrow. – Tim Tebow"],

  ["Faith","There is something wonderfully sacred that happens when a girl chooses to realize that being set aside is actually God’s call for her to be set apart. — Lysa TerKeurst"],

  ["Faith","God isn't afraid to answer your honest, ugly prayers. Luke Lezon"],

  ["Faith","When we chase validation instead of sanctification, we never find a reprieve from our own self-doubt. — Kayla Aimee"],

  ["Faith","There's nothing wrong with starting small if you just keep going. You just take what you have, whether it's a little idea or a little bit of extra time or a little bit of money, and you make the most of it. You do the best you can with that little bit, and you keep working at it, and pretty soon it will grow. It might even get so big that the whole world knows about it someday. — Sadie Robertson"],

  ["Faith","But God doesn't call us to be comfortable. He calls us to trust Him so completely that we are unafraid to put ourselves in situations where we will be in trouble if He doesn't come through. — Francis Chan"],

  ["Faith","Your beliefs shape your attitudes! — Andy Stanley"],

  ["Faith","Don't worry about getting perfect, just keep getting better. — Frank E. Peretti"],

  ["Faith","God created each one of us in our own unique way. Just like a snowflake we all hold a blueprint that differs one from another. It's great to lose weight and keep our bodies healthy and strong, but it's also important that we appreciate who we are today - with or without extra pounds. — Candace Cameron Bure"],



  ["Faith","If there's one thing I've learned, it's that God is a very creative author, and He writes a different story for every person. No two lives or stories alike. — Robin Jones Gunn"],

  ["Faith","I kept searching for another half when what I needed was to be whole. — Kayla Aimee"],


  ["Faith","‘I’m not who that guy says I am. I’m not who that girl says I am. I’m not who social media likes and comments say I am. I’m not who the grades, to-do lists, messes, and mess ups say I am. I’m not who the scale says I am or the sum total of what my flaws say I am. I’m going to stop flirting with the unstable things of this world so I can fall completely in love with You. I am loved. I am held. I am Yours. I am forever Yours.’ The more intimacy like this that I have with God, the more secure my true identity is. — Lysa TerKeurst"],

  ["Faith","Right now you are in training for a trial you’re not yet in. Public victory comes from private discipline. – Levi Lusko"],

  ["Faith","We all have a choice, after all, to be our own person, to be the person we wish to be. – Melanie Dickerson"],

  ["Faith","But the more you make the choice to live above your feelings, to trust God instead of what you may feel like doing, the stronger your faith becomes. It’s not about being perfect. We will always been on a journey of growing closer to God. – Tim Tebow"],

  ["Faith","God does not waste an ounce of our pain or a drop of our tears; suffering doesn't come our way for no reason, and He seems efficient at using what we endure to mold character. If we are malleable, He takes our bumps and bruises and shapes them into something beautiful. — Frank E. Peretti"],

  ["Faith","There will never be another woman who owns the look, the personality, and the experience that you do. Those ingredients make up the recipe that defines who you are, and it's your gift from the Lord - own it. — Candace Cameron Bure"],

  ["Faith","Next generation leaders are those who would rather challenge what needs to change and pay the price than remain silent and die on the inside. — Andy Stanley"],

  ["Faith","I never want fear to stop me from doing anything else in my life. I never want fear to make me say no again. I never want fear to be even the slightest problem for me. And if I ever have just a tiny fearful thought, I want to be able to say no to it immediately. — Sadie Robertson"],

  ["Faith","Don't allow the opinions of other people to shape your concept of him. Get to know him yourself, and let the goodness of God change you from the inside out. — Judah Smith"],


  ["Faith","When you start to feel like things should have been better this year, remember the mountains and valleys that got you here. They are not accidents, and those moments weren't in vain. You are not the same. You have grown and you are growing. You are breathing, you are living, you are wrapped in endless, boundless grace. And things will get better. There is more to you than yesterday. – Morgan Harper Nichols"],

  ["Faith","Discerning God’s calling is more a relationship than a route, more journey than destination. It’s about who you are becoming more than where you are going. Perhaps it’s less about what you do and more about how well you do whatever you do. – Levi Lusko"]

  ];

  List<List<String>> workoutArray1 = [
////////////////////
 ["General","Count your life by smiles, not tears. Count your age by friends, not years. Happy birthday!"],

  ];

}