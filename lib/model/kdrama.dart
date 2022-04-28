class DramaItem {
  String name;
  String year;
  String rate;
  String description;
  String actor;
  String creator;
  String Day;
  String openTime;
  String streamApp;
  String imageAsset;
  bool list;
 
 
  DramaItem({
    required this.name,
    required this.year,
    required this.rate,
    required this.description,
    required this.actor,
    required this.creator,
    required this.Day,
    required this.openTime,
    required this.streamApp,
    required this.imageAsset,
    required this.list
    
  });
}

var dramaList = [
  DramaItem(
    name: 'Business Proposal',
    year: '(2022)',
    rate: '9.2',
    description:
        'In disguise as her friend, Ha-ri shows up to a blind date to scare him away. But plans go awry when he turns out to be her CEO — and makes a proposal.',
    actor: 'Starring:  Ahn Hyo-seop,Kim Se-jeong,Kim Min-gue',
    creator: 'Park Seon-ho,Han Sul-hee,Hong Bo-hui',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/businessProposal.jpg',
    list: false
   
  ),
  DramaItem(
    name: 'HomeTown Cha-Cha-Cha',
    year: '(2021)',
    rate: '9.0',
    description:
        'A big-city dentist opens up a practice in a close-knit seaside village, home to a charming jack-of-all-trades who is her polar opposite in every way.',
    actor: 'Starring:  Shin Min-a,Kim Seon-ho,Lee Sang-yi',
    creator: 'Yu Je-won,Shin Ha-eun',
    Day: 'Thursday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/hometown.jpg',
    list: false
    
  ),
  DramaItem(
    name: 'Hospital Playlist',
    year: '(2020)',
    rate: '8.9',
    description:
        'Every day is extraordinary for five doctors and their patients inside a hospital, where birth, death and everything in between coexist.',
    actor: 'Starring:  Cho Jung-seok, Yoo Yeon-seok, Jung Kyung-ho',
    creator: 'Shin Won-ho, Lee Woo-jung',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/hospital-playlist2.jpg',
    list: false
   
  ),
  DramaItem(
    name: 'Start Up',
    year: '(2020)',
    rate: '8.2',
    description:
        'Young entrepreneurs aspiring to launch virtual dreams into reality compete for success and love in the cutthroat world of Korea`s high-tech industry.',
    actor: 'Starring:  Bae Suzy, Nam Joo-hyuk, Kim Seon-ho',
    creator: 'Oh Choong-hwan, Park Hye-ryun',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/startUp.jpg',
    list: false
   
  ),
  DramaItem(
    name: 'Vincenzo',
    year: '(2021)',
    rate: '8.6',
    description:
        'During a visit to his motherland, a Korean-Italian mafia lawyer gives an unrivaled conglomerate a taste of its own medicine with a side of justice.',
    actor: 'Starring:  Song Joong-ki, Jeon Yeo-been, Ok Taec-yeon',
    creator: 'Kim Hee-won, Park Jae-beom',
    Day: 'Tuesday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/vincenzo.jpg',
    list: false
   
  ),
  DramaItem(
    name: 'Thirty Nine',
    year: '(2022)',
    rate: '7.6',
    description:
        'Leaning on each other through thick and thin, a trio of best friends stand together as they experience life, love and loss on the brink of turning 40.',
    actor: 'Starring:  Son Ye-jin, Jeon Mi-do, Kim Ji-hyun',
    creator: 'Kim Sang-ho, Yu Young-a',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/thirtynine.jpg',
    list: false
   
  ),
  DramaItem(
    name: 'Crash Landing On You',
    year: '(2019)',
    rate: '8.8',
    description:
        'A paragliding mishap drops a South Korean heiress in North Korea -- and into the life of an army officer, who decides he will help her hide.',
    actor: 'Starring:  Hyun Bin, Son Ye-jin, Seo Ji-hye',
    creator: 'Lee Jeong-hyo, Park Ji-eun',
    Day: 'Sunday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/crashLandingOnYou.jpg',
    list: false
    
  ),
  DramaItem(
    name: 'Itaewon Class',
    year: '(2020)',
    rate: '8.3',
    description:
        'In a colorful Seoul neighborhood, an ex-con and his friends fight a mighty foe to make their ambitious dreams for their street bar a reality.',
    actor: 'Starring:  Park Seo-jun, Kim Da-mi, Yoo Jae-myung',
    creator: 'Kim Sung-youn, Gwang Jin',
    Day: 'Monday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/itaewon-class.jpg',
    list: false
    
  ),

   DramaItem(
    name: 'SoundTrack#1',
    year: '(2022)',
    rate: '8.9',
    description:
        'A man and a woman who have been best friends for 20 years, get to know each other while staying in the same house for two weeks.[',
    actor: 'Starring: Han So-hee, Park Hyung-sik n',
    creator: 'Hwang Dong-hyuk',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Disney+ Hotstar',
    imageAsset: 'images/soundtrack1.jpg',
    list: false
  ),

    DramaItem(
    name: 'Tomorrow',
    year: '(2022)',
    rate: '8.4',
    description:
        'Choi Jun-Woong (Ro Woon) looks for a job, but it is hard for him to get hired. One night, he accidentally meets angels of death Koo Ryeon (Kim Hee-Seon) and Im Ryoog-Gu. The two death angels belong to a crisis management team. Koo Ryeon is the leader and Lim Ryung-Gu is a member. Their objective is to save suicidal people. Soon, Choi Jun-Woong becomes a new member of the crisis management team.',
    actor: 'Starring:  Koo Ryeon, Choi Jun-Woong',
    creator: 'Hwang Dong-hyuk',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/tomorrow.jpg',
    list: false
  ),

   DramaItem(
    name: 'Snowdrop',
    year: '(2021)',
    rate: '8.9',
    description:
        'Adapted from the handwritten notes of a man who escaped from a political prison camp in North Korea, Snowdrop is set against the backdrop of the 1987 Democracy Movement in South Korea.',
    actor: 'Starring:  Lim Soo-Ho, Eun Yeong-Ro',
    creator: 'Hwang Dong-hyuk',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Disney+ Hotstar',
    imageAsset: 'images/snowdrop.jpg',
    list: false
  ),

  DramaItem(
    name: 'Squid Game',
    year: '(2021)',
    rate: '8.0',
    description:
        'Hundreds of cash-strapped players accept a strange invitation to compete in children`s games. Inside, a tempting prize awaits — with deadly high stakes.',
    actor: 'Starring:  Lee Jung-jae, Park Hae-soo, Wi Ha-jun',
    creator: 'Hwang Dong-hyuk',
    Day: 'Saturday',
    openTime: '21:00',
    streamApp: 'Netflix',
    imageAsset: 'images/squid-game.jpg',
    list: false
   
  ),
];
