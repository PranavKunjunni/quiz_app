class DummyData {
  static final List<Map<String, dynamic>> categories = [
    {
      "title": "Bike",
      "imagePath": "assets/images/download.jpg",
      "questions": bike,
    },
    {
      "title": "Car",
      "imagePath": "assets/images/images.jpg",
      "questions": car,
    },
    {
      "title": "Football",
      "imagePath": "assets/images/images (1).jpg",
      "questions": football,
    },
    {
      "title": "Cricket",
      "imagePath": "assets/images/images (2).jpg",
      "questions": cricket,
    },
    {
      "title": "Basketball",
      "imagePath": "assets/images/wp8440014.webp",
      "questions": basketball,
    },
    {
      "title": "Tennis",
      "imagePath": "assets/images/tennis.jpg",
      "questions": tennis,
    },
    {
      "title": "Hockey",
      "imagePath": "assets/images/download (1).jpg",
      "questions": hockey,
    },
  ];

  static final List<Map<String, dynamic>> bike = [
    {
      "question": "Which company manufactures the Ninja series of bikes?",
      "options": ["Kawasaki", "Yamaha", "Suzuki", "Honda"],
      "answer": 0, // Kawasaki
    },
    {
      "question": "What type of engine is commonly used in motorcycles?",
      "options": ["V8", "Inline 4", "Single Cylinder", "V12"],
      "answer": 2, // Single Cylinder
    },
    {
      "question": "What does ABS stand for in bikes?",
      "options": [
        "Anti-Brake System",
        "Anti-Lock Braking System",
        "Automatic Braking System",
        "Air Braking System"
      ],
      "answer": 1, // Anti-Lock Braking System
    },
    {
      "question": "Which is the world's fastest production bike?",
      "options": [
        "Kawasaki Ninja H2R",
        "Ducati Panigale V4",
        "Suzuki Hayabusa",
        "Yamaha R1"
      ],
      "answer": 0, // Kawasaki Ninja H2R
    },
    {
      "question": "What is the fuel type for most motorcycles?",
      "options": ["Diesel", "Petrol", "Electric", "Hybrid"],
      "answer": 1, // Petrol
    },
  ];

  static final List<Map<String, dynamic>> car = [
    {
      "question": "Which car manufacturer produces the Model S?",
      "options": ["Tesla", "BMW", "Ford", "Audi"],
      "answer": 0, // Tesla
    },
    {
      "question": "What does SUV stand for?",
      "options": [
        "Standard Utility Vehicle",
        "Sport Utility Vehicle",
        "Super Utility Vehicle",
        "Small Utility Vehicle"
      ],
      "answer": 1, // Sport Utility Vehicle
    },
    {
      "question": "Which is the fastest production car in the world?",
      "options": [
        "Bugatti Chiron",
        "Koenigsegg Jesko",
        "SSC Tuatara",
        "Hennessey Venom F5"
      ],
      "answer": 2, // SSC Tuatara
    },
    {
      "question": "What is the standard fuel efficiency unit in cars?",
      "options": ["MPG", "KPL", "L/100km", "Gallons per mile"],
      "answer": 0, // MPG (Miles Per Gallon)
    },
    {
      "question": "Which car brand has a logo with four rings?",
      "options": ["BMW", "Audi", "Mercedes", "Volkswagen"],
      "answer": 1, // Audi
    },
  ];

  static final List<Map<String, dynamic>> football = [
    {
      "question": "Which country won the FIFA World Cup in 2018?",
      "options": ["Brazil", "Germany", "France", "Argentina"],
      "answer": 2, // France
    },
    {
      "question": "What is the standard duration of a football match?",
      "options": ["60 minutes", "90 minutes", "120 minutes", "45 minutes"],
      "answer": 1, // 90 minutes
    },
    {
      "question": "Who is known as the 'GOAT' of football?",
      "options": [
        "Cristiano Ronaldo",
        "Lionel Messi",
        "Pelé",
        "Diego Maradona"
      ],
      "answer": 1, // Lionel Messi
    },
    {
      "question": "What is the name of the international football body?",
      "options": ["FIFA", "UEFA", "CONCACAF", "AFC"],
      "answer": 0, // FIFA
    },
    {
      "question": "Which country has won the most World Cups?",
      "options": ["Germany", "Italy", "Argentina", "Brazil"],
      "answer": 3, // Brazil
    },
  ];

  static final List<Map<String, dynamic>> cricket = [
    {
      "question": "Which country won the ICC Cricket World Cup in 2019?",
      "options": ["India", "Australia", "England", "New Zealand"],
      "answer": 2, // England
    },
    {
      "question": "What is the maximum number of overs in a T20 match?",
      "options": ["10", "20", "50", "40"],
      "answer": 1, // 20
    },
    {
      "question": "Who is known as the 'God of Cricket'?",
      "options": [
        "Ricky Ponting",
        "Sachin Tendulkar",
        "Virat Kohli",
        "Jacques Kallis"
      ],
      "answer": 1, // Sachin Tendulkar
    },
    {
      "question": "Which bowler has the most Test wickets?",
      "options": [
        "Muttiah Muralitharan",
        "Shane Warne",
        "Anil Kumble",
        "James Anderson"
      ],
      "answer": 0, // Muttiah Muralitharan
    },
    {
      "question": "What does LBW stand for?",
      "options": [
        "Leg Before Wicket",
        "Left Behind Wicket",
        "Leg Bat Wide",
        "Line Ball Wicket"
      ],
      "answer": 0, // Leg Before Wicket
    },
  ];

  static final List<Map<String, dynamic>> basketball = [
    {
      "question": "Which team won the NBA Championship in 2020?",
      "options": [
        "Golden State Warriors",
        "Miami Heat",
        "Los Angeles Lakers",
        "Toronto Raptors"
      ],
      "answer": 2, // Los Angeles Lakers
    },
    {
      "question": "How many points is a three-point shot worth in basketball?",
      "options": ["1", "2", "3", "4"],
      "answer": 2, // 3
    },
    {
      "question": "Who is known as 'Air Jordan'?",
      "options": [
        "Kobe Bryant",
        "LeBron James",
        "Michael Jordan",
        "Shaquille O'Neal"
      ],
      "answer": 2, // Michael Jordan
    },
    {
      "question": "Which team has won the most NBA championships?",
      "options": [
        "Los Angeles Lakers",
        "Chicago Bulls",
        "Boston Celtics",
        "San Antonio Spurs"
      ],
      "answer": 2, // Boston Celtics
    },
    {
      "question": "What is the standard height of a basketball hoop?",
      "options": ["8 feet", "9 feet", "10 feet", "11 feet"],
      "answer": 2, // 10 feet
    },
  ];

  static final List<Map<String, dynamic>> tennis = [
    {
      "question":
          "Who has won the most Grand Slam singles titles in men's tennis?",
      "options": [
        "Rafael Nadal",
        "Roger Federer",
        "Novak Djokovic",
        "Andy Murray"
      ],
      "answer": 2, // Novak Djokovic
    },
    {
      "question": "What is the surface of the Wimbledon tennis courts?",
      "options": ["Clay", "Hard", "Grass", "Synthetic"],
      "answer": 2, // Grass
    },
    {
      "question": "Which female player is known as the 'Queen of Clay'?",
      "options": [
        "Martina Navratilova",
        "Serena Williams",
        "Justine Henin",
        "Steffi Graf"
      ],
      "answer": 2, // Justine Henin
    },
    {
      "question":
          "What is the maximum number of sets in a men's Grand Slam match?",
      "options": ["3", "5", "7", "4"],
      "answer": 1, // 5
    },
    {
      "question": "Which country hosts the Australian Open?",
      "options": ["USA", "Australia", "UK", "France"],
      "answer": 1, // Australia
    },
  ];
  static final List<Map<String, dynamic>> hockey = [
  {
    "question": "Which country has won the most Olympic gold medals in hockey?",
    "options": ["India", "Australia", "Germany", "Netherlands"],
    "answer": 0, // India
  },
  {
    "question": "How many players are there in a hockey team on the field?",
    "options": ["11", "9", "7", "10"],
    "answer": 0, // 11
  },
  {
    "question": "What is the duration of a standard hockey match?",
    "options": ["60 minutes", "70 minutes", "80 minutes", "90 minutes"],
    "answer": 1, // 70 minutes
  },
  {
    "question": "What is the governing body for international hockey?",
    "options": ["FIH", "IOC", "IFA", "NHL"],
    "answer": 0, // FIH (International Hockey Federation)
  },
  {
    "question": "Which country hosted the Men's Hockey World Cup in 2023?",
    "options": ["India", "Australia", "Belgium", "Netherlands"],
    "answer": 0, // India
  },
];

}
