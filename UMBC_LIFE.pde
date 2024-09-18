color backgroundColor; //variable used to store the background color
boolean playButtonVisible;  //determines if the play button will be visible
boolean helpButtonVisible = false;  //determines if the help button will be visible
boolean chooseMajor = false;
boolean results = false;
color backgroundColorResults;// for results page
//Determines if the major selecting buttons are visible
boolean compEngVisible = false;
boolean visualArtsVisible = false;
boolean psychologyVisible = false;

//Indicates whether or not the player has selected
boolean majorChosen = false;

//Indicates when period ends
boolean periodOver = false;
//Variables for stat bar characteristics
int barLen = 25;
int healthBarWidth = 450;
int moneyBarWidth = 450;
int gradesBarWidth = 450;
int happinessBarWidth = 450;
int barFill = 50;

//Variables for action button characteristics
int buttonLen = 125;
int buttonWidth = 200;
int buttonColor = #01040D;

//Determines the difficulty multiplier for stat changes depending on major.
float EZmultiplier;
float HARDmultipler;

//For detecting when an action is made so that a new question appears.
int questionNum = 0;

//Timeline Function, time period will change based on number of clicks
int currentPeriod = 0;
// boolean for showing results screen
boolean resultScreenVisible = false;
int periodNum = 0;


// Images
//Umbc Life logo Image
PImage umbc;
//Athlete Image
PImage anAthlete;
boolean athlete;
//syllabus Image
PImage syllbus;
boolean curriculum;
//Part Time Job Image
PImage job;
boolean partTime;
//Involvement Fest Image
PImage involvementFest;
boolean attendFest;
//Gym Image
PImage gym;
boolean attendgym;
//Soccer Image
PImage soccer;
boolean goToGame;
//Major Image
PImage major;
boolean yourMajor;
//running late Image
PImage late;
boolean runningLate;
//The Commons Image
PImage commons;
boolean participateInEvent;
//Major Assignment Image
PImage majorAssignment;
boolean doAssignment;
// studying for midterm
PImage midterm;
boolean studyMidTerm;
// buying merch
PImage merch;
boolean umbcMerch;
// true grits
PImage grits;
boolean trueGrits;
//Psychology Study Tactics
PImage psychone;
boolean psychStudy;
//Psychology Friends
PImage psychtwo;
boolean psychFriends;
//design research study psychology
PImage psychthree;
boolean designStudy;
//Comp Eng Code Debugging
PImage compone;
boolean codeDebug;
//Comp Eng code collab
PImage comptwo;
boolean codeCollab;
// Comp Coding help
PImage compthree;
boolean codeSearch;
//Visual Arts theatre
PImage artsone;
boolean visualArtsTheatre;
//Visual Arts choosing materials
PImage artstwo;
boolean choosingMaterials;
//Visual Arts Inspiration
PImage artsthree;
boolean findingInspo;
//umbc social gathering
PImage gathering;
boolean socialGathering;
//umbc fitness decision
PImage routine;
boolean fitnessRoutine;
// friend conflict
PImage conflict;
boolean friendConflict;
// deciding to buy new game
PImage game;
boolean newGame;
// balancing work and life
PImage work;
boolean workLife;
//psych NMI club
PImage psychfour;
boolean nmiClub;
//psych bad teacher
PImage psychfive;
boolean badTeacher;
// psych research opportunity
PImage psychsix;
boolean researchChance;
// comp e tired
PImage compfour;
boolean feelingTired;
// comp e robot
PImage compfive;
boolean robot;
// comp e software project
PImage compsix;
boolean software;
// arts starting over
PImage artsfour;
boolean startingOver;
// arts adding class
PImage artsfive;
boolean addClass;
// arts exhbition
PImage artssix;
boolean exhibition;
// career fair
PImage career;
boolean careerFair;
// cold day
PImage cold;
boolean coldDay;
// fortnite
PImage fortnite;
boolean skipClass;
// morning routine
PImage wake;
boolean wakingUp;
// campus invite
PImage invite;
boolean campusInvite;
// career club
PImage cclub;
boolean careerClub;
// new shoes
PImage shoes;
boolean newShoes;
// rainy day
PImage rainy;
boolean rainyDay;
// study decision
PImage decide;
boolean studyDecision;
// last minute study material
PImage timeout;
boolean timeOut;
// study break
PImage party;
boolean studyBreak;
// coffee decision
PImage coffee;
boolean coffeeDrink;
// finals sleep
PImage sleepy;
boolean extraRest;
// final grade
PImage stressed;
boolean finalGrade;
// void setup, includes all image files along with play button, size, and background color
void setup() {
  size(710, 750);
  backgroundColor = color(#000000);   //sets the inital background color to black
  playButtonVisible = true;             //Show play button at start-up
  anAthlete = loadImage("ATHLETIC.jpg");
  syllbus = loadImage("syllabi.jpg");
  job = loadImage("parttime.png");
  involvementFest = loadImage("involvement.jpg");
  gym = loadImage("planningweek.png");
  soccer = loadImage("umbcsoccer.jpg");
  major = loadImage("social.jpg");
  late = loadImage("late.jpg");
  commons = loadImage("commonslobby.jpg");
  umbc = loadImage("umbclifee.png");
  majorAssignment = loadImage("latenight.jpg");
  midterm = loadImage("midterm.jpg");
  merch = loadImage("umbcmerch.jpg");
  grits = loadImage("truegrits.jpg");
  psychone = loadImage("psychologystudy.jpg");
  psychtwo = loadImage("psychfriends.jpg");
  psychthree = loadImage("thinkgirl.jpg");
  compone = loadImage("codedebug.png");
  comptwo = loadImage("teamcode.jpg");
  compthree = loadImage("forum.jpg");
  artsone = loadImage("umbctheatre.jpg");
  artstwo = loadImage("choosingmaterials.jpg");
  artsthree = loadImage("findinginspo.jpg");
  gathering = loadImage("gathering.jpg");
  routine = loadImage("raccenter.jpg");
  conflict = loadImage("conflict.jpg");
  game = loadImage("newgame.jpg");
  work = loadImage("worklife.jpg");
  psychfour = loadImage("NMIclub.jpg");
  psychfive = loadImage("badteacher.jpg");
  psychsix = loadImage("researchchance.jpg");
  compfour = loadImage("tired.jpg");
  compfive = loadImage("robot.png");
  compsix = loadImage("software.jpg");
  artsfour = loadImage("startingover.jpg");
  artsfive = loadImage("schedule.png");
  artssix = loadImage("exhibition.jpg");
  career = loadImage("careerfair.jpg");
  cold = loadImage("coldday.jpg");
  fortnite = loadImage("fortnite.jpg");
  wake = loadImage("wakingup.jpg");
  invite = loadImage("invite.jpg");
  cclub = loadImage("careerclub.jpg");
  shoes = loadImage("newshoes.jpg");
  rainy = loadImage("Autumn Rainy Day.jpg");
  decide = loadImage("Work smart.jpg");
  timeout = loadImage("timeout.jpg");
  party = loadImage("studybreak.jpg");
  coffee = loadImage("coffee.jpg");
  sleepy = loadImage("umbcdorm.jpg");
  stressed = loadImage("stressed.jpg");
}

//draw function
void draw() {
  println(mouseX, mouseY); //COME BACK HERE WHENEVER YOU NEED TO SEE MOUSE COORDS
  background(backgroundColor);
  playButton();
  helpButton();
  timeline();
  resultScreen();

  // when choosemajor is true, show major boxes
  if (chooseMajor) {
    drawWelcomeMessage();
    drawMajorBoxes();
    helpButton();
  }// if major is chosen, these functions will appear
  if (majorChosen) {
    drawStats();
    drawActionButtons();
  }
  if (psychologyVisible) {
    drawPsychologyQuestions();
  }
  if (visualArtsVisible) {
    drawVisualArtsQuestions();
  }
  if (compEngVisible) {
    drawCompEngQuestions();
  }
  // for images to appear
  if (athlete) {
    drawAthlete();
  }
  if (curriculum) {
    drawSyllbus();
  }
  if (partTime) {
    drawJob();
  }
  if (attendFest) {
    drawInvolvementFest();
  }
  if (attendgym) {
    drawGym();
  }
  if (goToGame) {
    drawSoccer();
  }
  if (yourMajor) {
    drawMajor();
  }
  if (runningLate) {
    drawRunning();
  }
  if (participateInEvent) {
    drawCommons();
  }
  if (doAssignment) {
    drawLateNight();
  }
  if (studyMidTerm) {
    drawMidTerm();
  }
  if (umbcMerch) {
    drawMerch();
  }
  if (trueGrits) {
    drawGrits();
  }
  if (psychStudy) {
    drawPsychStudy();
  }
  if (psychFriends) {
    drawPsychFriends();
  }
  if (designStudy) {
    drawDesignStudy();
  }
  if (codeDebug) {
    drawCodeDebug();
  }
  if (codeCollab) {
    drawCodeCollab();
  }
  if (codeSearch) {
    drawCodeSearch();
  }
  if (visualArtsTheatre) {
    drawVisualArtsTheatre();
  }
  if (choosingMaterials) {
    drawChoosingMaterials();
  }
  if (findingInspo) {
    drawFindingInspo();
  }
  if (socialGathering) {
    drawSocialGathering();
  }
  if (fitnessRoutine) {
    drawFitnessRoutine();
  }
  if (friendConflict) {
    drawFriendConflict();
  }
  if (newGame) {
    drawNewGame();
  }
  if (workLife) {
    drawWorkLife();
  }
  if (nmiClub) {
    drawNMIClub();
  }
  if (badTeacher) {
    drawBadTeacher();
  }
  if (researchChance) {
    drawResearchChance();
  }
  if (feelingTired) {
    drawFeelingTired();
  }
  if (robot) {
    drawRobot();
  }
  if (software) {
    drawSoftware();
  }
  if (startingOver) {
    drawStartingOver();
  }
  if (addClass) {
    drawAddClass();
  }
  if (exhibition) {
    drawExhibition();
  }
  if (careerFair) {
    drawCareerFair();
  }
  if (coldDay) {
    drawColdDay();
  }
  if (skipClass) {
    drawSkipClass();
  }
  if (wakingUp) {
    drawWakingUp();
  }
  if (campusInvite) {
    drawCampusInvite();
  }
  if (careerClub) {
    drawCareerClub();
  }
  if (newShoes) {
    drawNewShoes();
  }
  if (rainyDay) {
    drawRainyDay();
  }
  if (studyDecision) {
    drawStudyDecision();
  }
  if (timeOut) {
    drawTimeOut();
  }
  if (studyBreak) {
    drawStudyBreak();
  }
  if (coffeeDrink) {
    drawCoffeeDrink();
  }
  if (extraRest) {
    drawExtraRest();
  }
  if (finalGrade) {
    drawFinalGrade();
  }
  checkButtonClicks();
}

//timeline function, appears top right of screen
void timeline() {
  fill(0);
  textSize(16);
  textAlign(RIGHT, TOP);

  if (questionNum >= 1 && questionNum < 11) {
    text("Timeline: Starting Week ", width - 10, 10);
  } else if (questionNum >= 11 && questionNum < 21) {
    text("Timeline: Midterms", width - 10, 10);
  } else if (questionNum >= 21 && questionNum < 31) {
    text("Timeline: End of Semester", width - 10, 10);
  } else if (questionNum >= 31 && questionNum < 39) {
    text("Timeline: Finals Week", width - 10, 10);
  }
// once questionNum = 39, stats, choices, and images will dissapear
  if (questionNum == 39) {
    majorChosen = false;
  }
}


// For two choices player can select from
void drawActionButtons() {
  if (playButtonVisible == false) {
    fill(buttonColor);
    rect(75, 375, buttonWidth, buttonLen);
    fill(buttonColor);
    rect(435, 375, buttonWidth, buttonLen);
    helpButton();
  }
}
//MAJOR SPECIFIC QUESTIONS
void drawPsychologyQuestions() {  //This draws a psychology question when it hits a certain question number
  if (questionNum == 7) {
    textSize(18);
    textAlign(CENTER);
    text("In your first week as a psychology major, you learn about the Psychology Club. What's your decision?", width / 2, 100);
    fill(255, 255, 255);
    textSize(18);
    text("Join the Psychology Club to enhance your social life and potentially boost your happiness", 80, 385, 180, 230);
    text("Focus on individual studies and skip joining the club to prioritize your grades", 450, 385, 175, 300);
  }
  if (questionNum == 14) {
    textSize(18);
    textAlign(CENTER);
    text("I have been reading so much material from the psychology textbook and there's a lot to memorize.", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(18);
    text("Learn different techniques to develop a study routine", 80, 400, 180, 230);
    text("Ask other students how they study", 450, 400, 175, 300);
  }
  if (questionNum == 14) {
    psychStudy = true;
  } else {
    psychStudy = false;
  }
  if (questionNum == 17) {
    textSize(18);
    textAlign(CENTER);
    text("I started using my knowledge of psychology to analyze my friends. Should I tell them?", width / 2, 100);
    fill(255, 255, 255);
    text("Yes, however let them know it wasn't on purpose", 80, 400, 180, 230);
    text("No, it doesn't matter", 450, 430, 175, 300);
  }
  if (questionNum == 17) {
    psychFriends = true;
  } else {
    psychFriends = false;
  }
  if (questionNum == 18) {
    textSize(18);
    textAlign(CENTER);
    text("You're tasked with conducting a psychology experiment. How do you approach designing the study?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Develop a detailed experimental design, considering variables and ethical considerations.", 80, 385, 180, 230);
    text("Design the study on the fly; you prefer a more flexible approach to experimentation.", 450, 385, 175, 300);
  }
  if (questionNum == 18) {
    designStudy = true;
  } else {
    designStudy = false;
  }
  if (questionNum == 24) {
    textSize(18);
    textAlign(CENTER);
    text("There's an opportunity to join the National Society for Mental Illnesses (NSMI). What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Join the group to interact with individuals who share your major", 80, 385, 180, 230);
    text("Explore the opportunity to join NSMI and contribute to mental health initiatives", 450, 385, 175, 300);
  }
  if (questionNum == 24) {
    nmiClub = true;
  } else {
    nmiClub = false;
  }
  if (questionNum == 25) {
    textSize(18);
    textAlign(CENTER);
    text("You're a psychology major, and your current teacher isn't very effective. What's your decision regarding attending class?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Persist and attend class despite the challenges with the teacher", 80, 385, 180, 230);
    text("Opt to review lecture notes later and use alternative learning resources", 450, 385, 175, 300);
  }
  if (questionNum == 25) {
    badTeacher = true;
  } else {
    badTeacher = false;
  }
  if (questionNum == 26) {
    textSize(18);
    textAlign(CENTER);
    text("As a psychology major, you're offered an opportunity to be a research assistant on a project. What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Accept the opportunity and gain research experience in your field", 80, 385, 180, 230);
    text("Decline the opportunity due to other commitments or preferences", 450, 385, 175, 300);
  }
  if (questionNum == 26) {
    researchChance = true;
  } else {
    researchChance = false;
  }
}

void drawCompEngQuestions() { //This draws a Comp ENG question when it hits a certain question number
  if (questionNum == 7) {
    textSize(18);
    textAlign(CENTER);
    text("It's your first week as a computer engineering student. There's an opportunity to attend a coding workshop. What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(17);
    text("Participate in the coding workshop to strengthen your programming skills and potentially improve your grades", 80, 385, 180, 230);
    text("Prioritize your physical health and skip the workshop to ensure a balanced lifestyle", 450, 385, 175, 300);
  }
  if (questionNum == 14) {
    textSize(18);
    textAlign(CENTER);
    text("You encounter a bug in your code. How do you approach troubleshooting and resolving the issue?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(17);
    text("Systematically debug the code, use debugging tools, and analyze logs to identify and fix the root cause of the issue.", 80, 385, 180, 230);
    text("Experiment with different solutions intuitively; you enjoy the challenge of discovering creative fixes for coding issues.", 450, 385, 175, 300);
  }
  if (questionNum == 14) {
    codeDebug = true;
  } else {
    codeDebug = false;
  }
  if (questionNum == 17) {
    textSize(18);
    textAlign(CENTER);
    text("You're part of a team working on a software project. How do you approach collaborating with team members on coding tasks?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(17);
    text("Adopt version control systems, communicate effectively, and use collaborative coding platforms to ensure seamless teamwork.", 80, 385, 180, 230);
    text("Work on individual tasks and merge code later; you believe in the importance of individual contributions to the project.", 450, 385, 175, 300);
  }
  if (questionNum == 17) {
    codeCollab = true;
  } else {
    codeCollab = false;
  }
  if (questionNum == 18) {
    textSize(18);
    textAlign(CENTER);
    text("When you need help with coding issues, where do you typically go first?", width / 2, 100);
    fill(255, 255, 255);
    textSize(20);
    text("Search online forums and communities", 80, 420, 180, 230);
    text("Ask a classmate or a professor for assistance", 450, 400, 175, 300);
  }
  if (questionNum == 18) {
    codeSearch = true;
  } else {
    codeSearch = false;
  }
  if (questionNum == 24) {
    textSize(18);
    textAlign(CENTER);
    text("You're feeling exhausted, but there's a crucial topic being covered in your ENES 101 lecture. What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Push through the fatigue and attend the lecture for the important content", 80, 385, 180, 230);
    text("Choose rest over attending the lecture and catch up on the material later", 450, 385, 175, 300);
  }
  if (questionNum == 24) {
    feelingTired = true;
  } else {
    feelingTired = false;
  }
  if (questionNum == 25) {
    textSize(18);
    textAlign(CENTER);
    text("As a computer engineering student, you have an upcoming exam and a robot competition to prepare for. What's your approach?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Focus on studying for the exam to ensure academic success", 80, 400, 180, 230);
    text("Allocate time to both studying for the exam and preparing for the robot competition", 450, 385, 175, 300);
  }
  if (questionNum == 25) {
    robot = true;
  } else {
    robot = false;
  }
  if (questionNum == 26) {
    textSize(18);
    textAlign(CENTER);
    text("As a computer engineering student, you're given the opportunity to join a software project. What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Accept the opportunity and contribute to the software project", 80, 385, 180, 230);
    text("Decline the opportunity due to other commitments or preferences", 450, 385, 175, 300);
  }
  if (questionNum == 26) {
    software = true;
  } else {
    software = false;
  }
}
void drawVisualArtsQuestions() { //This draws a visual arts question when it hits a certain question number
  if (questionNum == 7) {
    textSize(12);
    textAlign(CENTER);
    text("It's your first week as a visual arts student. You have the opportunity to showcase your artwork in a student exhibition. What's your decision?", width / 2, 100);
    fill(255, 255, 255);
    textSize(15);
    text("Participate in the student exhibition to gain exposure and potentially boost your happiness", 80, 385, 180, 230);
    text("Prioritize your academic studies and skip the exhibition to focus on your grades", 450, 385, 175, 300);
  }
  if (questionNum == 14) {
    textSize(18);
    textAlign(CENTER);
    text("There is a performance for your theater class and you're in it. Invite your friends and family to watch?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(18);
    text("Yes", 175, 450);
    text("No", 535, 450);
  }
  if (questionNum == 14) {
    visualArtsTheatre = true;
  } else {
    visualArtsTheatre = false;
  }
  if (questionNum == 17) {
    textSize(18);
    textAlign(CENTER);
    text("You have to choose materials for your upcoming project. How do you decide on the art supplies?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Research and experiment with different materials to find the best fit for your artistic vision.", 80, 385, 180, 230);
    text("Go with your intuition; you enjoy the spontaneity of choosing materials on the spot.", 450, 385, 175, 300);
  }
  if (questionNum == 17) {
    choosingMaterials = true;
  } else {
    choosingMaterials = false;
  }
  if (questionNum == 18) {
    textSize(18);
    textAlign(CENTER);
    text("As a visual arts major, you need inspiration for your next project. How do you seek out creative inspiration?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(17.5);
    text("Visit art galleries, museums, and explore different cultural events to immerse yourself in diverse artistic expressions.", 80, 385, 180, 230);
    text("Allow inspiration to come organically; you prefer to find creativity in everyday experiences and personal reflections.", 450, 385, 175, 300);
  }
  if (questionNum == 18) {
    findingInspo = true;
  } else {
    findingInspo = false;
  }
  if (questionNum == 24) {
    textSize(18);
    textAlign(CENTER);
    text("You're a visual arts student working on an art project, but it's not turning out as expected. What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Persist and try to improve the current project despite the challenges", 80, 385, 180, 230);
    text("Contemplate starting over with a fresh perspective on the art project", 450, 385, 175, 300);
  }
  if (questionNum == 24) {
    startingOver = true;
  } else {
    startingOver = false;
  }
  if (questionNum == 25) {
    textSize(18);
    textAlign(CENTER);
    text("You're contemplating adding a new class to your schedule. What's your decision?", width / 2, 100);
    fill(255, 255, 255);
    textSize(20);
    text("Go ahead and add the class to diversify your academic experience", 80, 385, 180, 230);
    text("Hold off on adding the class to ensure a manageable workload", 450, 385, 175, 300);
  }
  if (questionNum == 25) {
    addClass = true;
  } else {
    addClass = false;
  }
  if (questionNum == 26) {
    textSize(18);
    textAlign(CENTER);
    text("As a visual arts major, you're invited to showcase your work in a local art exhibition. What's your decision?", 110, 70, 500, 300);
    fill(255, 255, 255);
    textSize(20);
    text("Accept the invitation and present your artwork in the exhibition", 80, 385, 180, 230);
    text("Decline the invitation due to other commitments or preferences", 450, 385, 175, 300);
  }
  if (questionNum == 26) {
    exhibition = true;
  } else {
    exhibition = false;
  }
}

void changeStats(int healthChange, int moneyChange, int gradesChange, int happinessChange) {
  // Update the stat bars based on the specified changes
  healthBarWidth += healthChange;
  moneyBarWidth += moneyChange;
  gradesBarWidth += gradesChange;
  happinessBarWidth += happinessChange;

  // Ensure that stat bars stay within the specified range
  healthBarWidth = constrain(healthBarWidth, 20, 450);
  moneyBarWidth = constrain(moneyBarWidth, 20, 450);
  gradesBarWidth = constrain(gradesBarWidth, 20, 450);
  happinessBarWidth = constrain(happinessBarWidth, 20, 450);
}

void checkButtonClicks() {
  if (questionNum == 1) {  //Checks which question to ask
    askToBeAthlete(); //
  } else if (questionNum == 2) {
    readingSyllabus();
  } else if (questionNum == 3) {
    partTimeJob ();
  } else if (questionNum == 4) {
    involvementFest();
  } else if (questionNum == 5) {
    gymVsLibrary();
  } else if (questionNum == 6) {
    soccerMatch();
  } else if (questionNum == 7) {
  } else if (questionNum == 8) {
    runningLate();
  } else if (questionNum == 9) {
    pickingGroupProject();
  } else if (questionNum == 10) {
    joinClubs();
  } else if (questionNum == 11) {
    midTermStudy();
  } else if (questionNum == 12) {
    extraMoneyDecision();
  } else if (questionNum == 13) {
    foodDecision();
  } else if (questionNum == 15) {
    socialDecision();
  } else if (questionNum == 16) {
    fitnessDecision();
  } else if (questionNum == 19) {
    friendConflict();
  } else if (questionNum == 20) {
    gamePurchaseDecision();
  } else if (questionNum == 21) {
    studyVsSocializing();
  } else if (questionNum == 22) {
    involvementFestDecision();
  } else if (questionNum == 23) {
    ColdDayLateForClass();
  } else if (questionNum == 27) {
    FortniteSeasonRelease();
  } else if (questionNum == 28) {
    MorningRoutineDecision();
  } else if (questionNum == 29) {
    CampusEventInvitation();
  } else if (questionNum == 30) {
    CareerClubVsFunClub();
  } else if (questionNum == 31) {
    WornOutGymShoesDecision();
  } else if (questionNum == 32) {
    RainyDayUmbrellaDecision();
  } else if (questionNum == 33) {
    EarlyMorningStudyDecision();
  } else if (questionNum == 34) {
    LastMinuteStudyMaterial();
  } else if (questionNum == 35) {
    FinalsWeekSocialEvent();
  } else if (questionNum == 36) {
    CoffeeToStayAwake();
  } else if (questionNum == 37) {
    FinalsWeekSleepSchedule();
  } else if (questionNum == 38) {
    UnexpectedMajorGrade();
  }

  helpButton();
}

// draws stat bars
void drawStats() {
  if (playButtonVisible == false) {
    //text('Health:', 50,
    fill(255, 0, 0);
    rect(150, 550, healthBarWidth, barLen);
    text("Health:", 80, 570);

    fill(#3DB752);
    rect(150, 600, moneyBarWidth, barLen);
    text("Money:", 80, 620);

    fill(0, 0, 255);
    rect(150, 650, gradesBarWidth, barLen);
    text("Grades:", 80, 670);

    fill(255, 0, 255);
    rect(150, 700, happinessBarWidth, barLen);
    text("Happiness:", 50, 720);

    helpButton();
  }
}

// this draws images
void drawAthlete() {
  image(anAthlete, 105, 110, 500, 250);
}
void drawSyllbus() {
  image(syllbus, 105, 110, 500, 250);
}
void drawJob() {
  image(job, 105, 110, 500, 250);
}
void drawInvolvementFest() {
  image(involvementFest, 105, 110, 500, 250);
}
void drawGym() {
  image(gym, 105, 110, 500, 250);
}
void drawSoccer() {
  image(soccer, 105, 110, 500, 250);
}
void drawMajor() {
  image(major, 105, 110, 500, 250);
}
void drawRunning() {
  image(late, 105, 110, 500, 250);
}
void drawCommons() {
  image(commons, 105, 110, 500, 250);
}
void drawLateNight() {
  image(majorAssignment, 105, 110, 500, 250);
}
void drawMidTerm() {
  image(midterm, 105, 110, 500, 250);
}
void drawMerch() {
  image(merch, 105, 110, 500, 250);
}
void drawGrits() {
  image(grits, 105, 110, 500, 250);
}
void drawPsychStudy() {
  image(psychone, 105, 110, 500, 250);
}
void drawPsychFriends() {
  image(psychtwo, 105, 110, 500, 250);
}
void drawDesignStudy() {
  image(psychthree, 105, 110, 500, 250);
}
void drawCodeDebug() {
  image(compone, 105, 110, 500, 250);
}
void drawCodeCollab() {
  image(comptwo, 105, 110, 500, 250);
}
void drawCodeSearch() {
  image(compthree, 105, 110, 500, 250);
}
void drawVisualArtsTheatre() {
  image(artsone, 105, 110, 500, 250);
}
void drawChoosingMaterials() {
  image(artstwo, 105, 110, 500, 250);
}
void drawFindingInspo() {
  image(artsthree, 105, 110, 500, 250);
}
void drawSocialGathering() {
  image(gathering, 105, 110, 500, 250);
}
void drawFitnessRoutine() {
  image(routine, 105, 110, 500, 250);
}
void drawFriendConflict() {
  image(conflict, 105, 110, 500, 250);
}
void drawNewGame() {
  image(game, 105, 110, 500, 250);
}
void drawWorkLife() {
  image(work, 105, 110, 500, 250);
}
void drawNMIClub() {
  image(psychfour, 105, 110, 500, 250);
}
void drawBadTeacher() {
  image(psychfive, 105, 110, 500, 250);
}
void drawResearchChance() {
  image(psychsix, 105, 110, 500, 250);
}
void drawFeelingTired() {
  image(compfour, 105, 110, 500, 250);
}
void drawRobot() {
  image(compfive, 105, 110, 500, 250);
}
void drawSoftware() {
  image(compsix, 105, 110, 500, 250);
}
void drawStartingOver() {
  image(artsfour, 105, 110, 500, 250);
}
void drawAddClass() {
  image(artsfive, 105, 110, 500, 250);
}
void drawExhibition() {
  image(artssix, 105, 110, 500, 250);
}
void drawCareerFair() {
  image(career, 105, 110, 500, 250);
}
void drawColdDay() {
  image(cold, 105, 110, 500, 250);
}
void drawSkipClass() {
  image(fortnite, 105, 110, 500, 250);
}
void drawWakingUp() {
  image(wake, 105, 110, 500, 250);
}
void drawCampusInvite() {
  image(invite, 105, 110, 500, 250);
}
void drawCareerClub() {
  image(cclub, 105, 110, 500, 250);
}
void drawNewShoes() {
  image(shoes, 105, 110, 500, 250);
}
void drawRainyDay() {
  image(rainy, 105, 110, 500, 250);
}
void drawStudyDecision() {
  image(decide, 105, 110, 500, 250);
}
void drawTimeOut() {
  image(timeout, 105, 110, 500, 250);
}
void drawStudyBreak() {
  image(party, 105, 110, 500, 250);
}
void drawCoffeeDrink() {
  image(coffee, 105, 110, 500, 250);
}
void drawExtraRest() {
  image(sleepy, 105, 110, 500, 250);
}
void drawFinalGrade() {
  image(stressed, 105, 110, 500, 250);
}
// for questions that will appear
void askToBeAthlete() { //Ask the player if they want to be an athlete or not
  textSize(18);
  textAlign(CENTER);
  text("You used to play sports in high school, now you are considering if you want to become a college athlete?", 110, 70, 500, 300);
  fill(255, 255, 255);
  text("Become an athlete", 175, 450);
  text("Don't become an athlete", 535, 450);
}

void readingSyllabus() {
  textSize(18);
  textAlign(CENTER);
  text("Your professors have sent out all your syllabi. Read them or try to make new friends at the commons?", 110, 70, 500, 300);
  fill(255, 255, 255);
  text("Read all the syllabi", 175, 450);
  text("Go socialize in the commons", 450, 420, 175, 300);
}

void partTimeJob() {
  textSize(18);
  textAlign(CENTER);
  text("Do you plan to work part-time during your studies at UMBC?", width / 2, 100);
  fill(255, 255, 255);
  text("Yes", 175, 450);
  text("No", 530, 450);
}
void involvementFest() {
  textSize(18);
  textAlign(CENTER);
  text("There's an event in the RAC called Involvement Fest. You can choose to either do some networking or finish your assignments.", 110, 70, 500, 300);
  fill(255, 255, 255);
  text("Network", 175, 450);
  text("Finish your assignments", 535, 450);
}
void gymVsLibrary() {
  textSize(18);
  textAlign(CENTER);
  text("The gym in the RAC and the libary are now offically open for UMBC students. Do you? ", width / 2, 100);
  fill(255, 255, 255);
  text("Do a one hour workout", 175, 450);
  text("Go check out the library", 535, 450);
}

void soccerMatch() {
  textSize(18);
  textAlign(CENTER);
  text("There's a soccer game near the Chesapeake arena. A friend asked you to attend, but your favorite show is on at that time.", 110, 70, 500, 300);
  fill(255, 255, 255);
  text("Go to the soccer game", 175, 450);
  text("Watch your favorite TV show", 450, 420, 175, 300);
}

void socialLife() {
  textSize(18);
  textAlign(CENTER);
  text("You go to a club-recruiting event on campus. Some clubs catch your interest.", width / 2, 100);
  fill(255, 255, 255);
  text("Join a club", 175, 450);
  text("You already have enoigh on your plate", 530, 450);
}

void runningLate() {
  textSize(18);
  textAlign(CENTER);
  text("It's the first day of classes, and you're running late. How do you handle the situation?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Rush to class and apologize for being late; focus on catching up", 85, 390, 170, 300);
  text("Skip the first class and use the time to review the syllabus and get organized.", 450, 390, 175, 300);
}
void pickingGroupProject() {
  textSize(18);
  textAlign(CENTER);
  text("You're assigned a challenging group project. How do you approach forming a group?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Actively seek out classmates with similar goals and form a dedicated group.", 80, 385, 180, 230);
  text("Wait for others to approach you; you're open to working with anyone.", 450, 385, 175, 300);
}
void joinClubs() {
  textSize(18);
  textAlign(CENTER);
  text("The campus has various student clubs recruiting members. What catches your interest?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Join clubs related to your major or career interests for networking and skill-building.", 80, 380, 180, 230);
  text("Explore clubs that seem fun and social; academics are the main focus for now.", 450, 390, 180, 300);
}
void midTermStudy() {
  textSize(20);
  textAlign(CENTER);
  text("Midterms are coming up soon, how will you prepare?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Go over past quizzes and exams", 80, 420, 180, 230);
  text("Join a studygroup and prepare with them", 450, 400, 180, 300);
}
void extraMoneyDecision() {
  textSize(18);
  textAlign(CENTER);
  text("You've saved up some extra money. How do you prefer to use it?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Save it for future expenses or emergencies", 80, 400, 180, 230);
  text("Treat yourself to some college merchandise or an experience", 450, 390, 175, 300);
}
void foodDecision() {
  textSize(20);
  textAlign(CENTER);
  text("You're hungry, and it's mealtime. What's your go-to option?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Order some food from a delivery service like DoorDash", 80, 400, 180, 230);
  text("Head to the campus dining hall or a local spot like True Grits", 450, 400, 175, 300);
}
void socialDecision() {
  textSize(18);
  textAlign(CENTER);
  text("You have some free time and want to be social. What's your preference?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Join a club or organization on campus", 80, 400, 180, 230);
  text("Attend a social event or gathering happening nearby", 450, 400, 175, 300);
}
void fitnessDecision() {
  textSize(18);
  textAlign(CENTER);
  text("You're contemplating your fitness routine today. What's your inclination?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Hit the gym for a workout session", 80, 420, 180, 230);
  text("Take it easy today and opt for a rest or light activity", 450, 400, 175, 300);
}
void friendConflict() {
  textSize(18);
  textAlign(CENTER);
  text("You and a friend have a disagreement about something. How do you approach resolving the conflict?", 110, 70, 500, 300);
  fill(255, 255, 255);
  text("Initiate a calm and open conversation to address the issues and find a resolution", 80, 390, 180, 230);
  text("Give it some time; you prefer to let things cool down naturally before discussing the problem", 440, 390, 185, 300);
}
void gamePurchaseDecision() {
  textSize(18);
  textAlign(CENTER);
  text("A new Nintendo game you've been anticipating just released. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Splurge on the new game and add it to your collection", 80, 400, 180, 230);
  text("Save your money for now and resist the temptation to make the purchase", 450, 390, 175, 300);
}
void studyVsSocializing() {
  textSize(18);
  textAlign(CENTER);
  text("You have a significant assignment due tomorrow, but your friends invite you to a social event. What's your decision?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Prioritize studying and work on the assignment", 80, 400, 180, 230);
  text("Join your friends for the social event and work on the assignment later", 450, 385, 175, 300);
}
void involvementFestDecision() {
  textSize(18);
  textAlign(CENTER);
  text("Career Fair, where you can network and explore opportunities, is today. However, you have assignments due. What's your choice?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Attend Career Fair to network and explore opportunities", 80, 400, 180, 230);
  text("Stay back and focus on completing your assignments", 450, 400, 175, 300);
}
void ColdDayLateForClass() {
  textSize(18);
  textAlign(CENTER);
  text("It's a freezing cold day, and you're running late for class. You don't have time to put on a jacket. What do you do?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Brave the cold and hurry to class without a jacket", 80, 400, 180, 230);
  text("Take a moment to grab a jacket for warmth, even if it means being late to class", 450, 385, 175, 300);
}
void FortniteSeasonRelease() {
  textSize(18);
  textAlign(CENTER);
  text("The new season of Fortnite has just been released, but you have to go to class. What's your decision?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Prioritize attending class and catch up on Fortnite later", 80, 400, 180, 230);
  text("Consider skipping class to dive into the new Fortnite season", 450, 400, 175, 300);
}
void MorningRoutineDecision() {
  textSize(18);
  textAlign(CENTER);
  text("You have the choice to either wake up early, eat breakfast, and start your day or sleep in to get your full rest. What's your decision?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Opt to wake up early, eat breakfast, and start your day", 80, 400, 180, 230);
  text("Choose to sleep in and ensure you get your full rest", 450, 400, 175, 300);
}
void CampusEventInvitation() {
  textSize(18);
  textAlign(CENTER);
  text("Your friend invites you to an event on the other side of campus, but you don't feel like walking. What's your decision?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Make the effort to attend the event and spend time with your friend", 80, 385, 180, 230);
  text("Opt not to attend due to the inconvenience of walking to the other side of campus", 450, 385, 175, 300);
}
void CareerClubVsFunClub() {
  textSize(18);
  textAlign(CENTER);
  text("Choose a club that's purely for fun, or one that will help you reach your career goals. What's your decision?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Opt to join the career-focused club to enhance your skills and knowledge", 80, 385, 180, 230);
  text("Choose the fun club for a more enjoyable and leisurely experience", 450, 385, 175, 300);
}
void WornOutGymShoesDecision() {
  textSize(18);
  textAlign(CENTER);
  text("Your gym shoes are worn out. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Choose to buy new gym shoes for better support and comfort", 80, 400, 180, 230);
  text("Continue using the worn-out shoes for a bit longer to save money", 450, 400, 175, 300);
}
void RainyDayUmbrellaDecision() {
  textSize(18);
  textAlign(CENTER);
  text("It's raining outside, and you forgot your umbrella. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Take the time to grab your umbrella and stay dry", 80, 400, 180, 230);
  text("Risk getting wet and continue without an umbrella", 450, 400, 175, 300);
}
void EarlyMorningStudyDecision() {
  textSize(18);
  textAlign(CENTER);
  text("It's finals week, and you have an early morning study session. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Get up early and attend the study session for focused preparation", 80, 385, 180, 230);
  text("Opt for more sleep and study later in the day", 450, 400, 175, 300);
}
void LastMinuteStudyMaterial() {
  textSize(18);
  textAlign(CENTER);
  text("You realize you're missing a crucial study material for finals. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Spend money to purchase the study material for comprehensive preparation", 80, 385, 180, 230);
  text("Attempt to find alternative resources online and save money", 450, 395, 175, 300);
}
void FinalsWeekSocialEvent() {
  textSize(18);
  textAlign(CENTER);
  text("You're invited to a social event during finals week. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Prioritize studying for finals and decline the social event", 80, 400, 180, 230);
  text("Take a break and attend the social event for a mental refresh", 450, 390, 175, 300);
}
void CoffeeToStayAwake() {
  textSize(18);
  textAlign(CENTER);
  text("You're feeling exhausted during late-night study sessions. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Spend money on a cup of coffee to stay awake and focused", 80, 400, 180, 230);
  text("Opt to push through without coffee to save money", 450, 400, 175, 300);
}
void FinalsWeekSleepSchedule() {
  textSize(18);
  textAlign(CENTER);
  text("You have the option to adjust your sleep schedule during finals week. What's your decision?", width / 2, 100);
  fill(255, 255, 255);
  textSize(20);
  text("Prioritize getting a consistent amount of sleep each night", 80, 400, 180, 230);
  text("Stay up late studying and sacrifice some sleep for more preparation time", 450, 390, 175, 300);
}
void UnexpectedMajorGrade() {
  textSize(18);
  textAlign(CENTER);
  text("You receive your final grades for the semester, and your major GPA is not what you expected. What's your emotional state?", 110, 70, 500, 300);
  fill(255, 255, 255);
  textSize(20);
  text("Feel disappointed but use it as motivation to improve next semester", 80, 385, 180, 230);
  text("Allow yourself to feel upset and consider seeking guidance for improvement", 450, 385, 175, 300);
}


















// major boxes
void drawMajorBoxes() {
  // Box for Computer Engineering
  fill(#cfb53b);
  rect(50, 300, 150, 100);
  fill(255, 255, 255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Computer Engineering", 50, 175, 140, 350);

  // Box for Visual Arts
  fill(#cfb53b);
  rect(280, 300, 150, 100);
  fill(255, 255, 255);
  text("Visual Arts", 355, 350);

  // Box for Psychology
  fill(#cfb53b);
  rect(510, 300, 150, 100);
  fill(255, 255, 255);
  text("Psychology", 580, 350);
}

// draws welcome message
void drawWelcomeMessage() {
  fill(#ffffff);
  textSize(24);
  textAlign(CENTER);
  text("Welcome, choose your major!", width / 2, 185);
}

// UMBC LIFE MAIN SCREEN
void playButton() {
  if (playButtonVisible) {
    strokeWeight(4);
    stroke(#9B7408);
    fill(#F2C716);
    rect(265, 550, 150, 50);

    //This is the Play text inside the button
    textSize(45);
    fill(#FFFFFF);
    text("PLAY", 290, 590);


    //This tells you the name of the game
    image(umbc, 90, 110, 500, 250);
  }
}


//This creates the help button
void helpButton() {
  strokeWeight(4);
  stroke(#9B7408);
  fill(#FFFFFF);
  rect(5, 715, 30, 30);


  //this is the help text
  fill(#000000);
  textSize(20);
  textAlign(LEFT);
  text("?", 15, 735);


  //this displays the text shown in the helpbox
  if (helpButtonVisible) {
    fill(#FFFFFF);
    rect( 180, 330, 350, 280);
    fill(#000000);
    textSize(14);
    textAlign(CENTER);
    String helpText = "You are playing as a student who is currently going through the first semester at UMBC! You will be provided with questions to help you guide you through the amazing experience of college. You will first be asked to declare your major at UMBC and your GPA goals for this semester you're heading into. As college students have the option to stay on campus or not, you will decide if you want that UMBC on campus which comes with more opportunities to bond with classmates. This game is operated through mouse pressed which involves clicking throughout the game to move through. To fast forward through the game and quickly see your results, press the W key. Click the HELP button again to exit out of this pop up. ";
    text(helpText, 190, 350, 320, 400);
  }
}


// This is what happens when the mouse comes in contact with the butttons
void mousePressed() {
  if (playButtonVisible && mousePressed && mouseX > 265 && mouseX < 405 && mouseY > 550  && mouseY < 605) {
    backgroundColor = color(#F0CE24);  // Switch the background color to yellow when the button is clicked
    playButtonVisible = false;     //hide the play button after the click
    chooseMajor = true; // major choices will appear
  }
  if (mouseX > 5 && mouseX < 35 && mouseY > 715 && mouseY < 745) {
    helpButtonVisible = !helpButtonVisible;
  }
  if (mouseX > 50 && mouseX < 200 && mouseY > 300 && mouseY < 400) {  //Assigns COMPE major
    compEngVisible = true;
    visualArtsVisible = false;
    psychologyVisible = false;
    chooseMajor = false;  // Hide major boxes
    majorChosen = true;
    questionNum += 1;
    periodNum += 1;
    print(questionNum + " ");
  } else if (mouseX > 280 && mouseX < 400 && mouseY > 300 && mouseY < 400) {  //Assigns VISUAL ARTS major
    compEngVisible = false;
    visualArtsVisible = true;
    psychologyVisible = false;
    chooseMajor = false;  // Hide major boxes
    majorChosen = true;
    questionNum += 1;
    periodNum += 1;
    print(questionNum + " ");
  } else if (mouseX > 510 && mouseX < 600 && mouseY > 300 && mouseY < 400) {  //Assigns PSYCH major
    compEngVisible = false;
    visualArtsVisible = false;
    psychologyVisible = true;
    chooseMajor = false;  // Hide major boxes
    majorChosen = true;
    questionNum += 1;
    periodNum += 1;
    print(questionNum + " ");
  }

  //Athlete boolean
  boolean isAthlete;

  // QUESTION/ANSWER SPECIFC STAT CHANGES
  // changeStat para order: health, money, grades, happiness

  if (questionNum == 1) {   //Q1
    if (mouseX > 75 && mouseX < 275 && mouseY > 420 && mouseY < 465) {  //left action click
      questionNum += 1;
      changeStats(0, 0, 0, 0);
      print(questionNum + " ");
      isAthlete = true;
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 420 && mouseY < 465) { //right action click
      questionNum += 1;
      changeStats(0, 0, 0, 0);
      print(questionNum + " ");
      isAthlete = false;
    }
  } else if (questionNum == 2) {   //Q2
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 0, 50, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, 0, -50, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 3) {    //Q3
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 50, -50, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, -50, 50, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 4) {    //Q4
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, -50, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, 50, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 5) {    //Q5
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, 0, 0);
      print(questionNum + " ");
    }
  } else if (questionNum == 6) {    //Q6
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, 0, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 7) {    //Q7
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, -50, -50, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, -50, 50, -50);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-50, 0, 50, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(50, 0, 0, 50);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(50, 0, 0, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(-50, 0, 50, -50);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 8) {    //Q8
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 50, 50, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, 50, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 9) {    //Q9
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 50, 0, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, -50, 0, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 10) {    //Q10
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(-100, 0, 50, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, -100, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 11) {    //Q11
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 50, 50, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, 50, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 12) {    //Q12
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 50, 0, 0);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, -50, 0, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 13) {    //Q13
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(-50, -50, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 50, 0, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 14) {    //Q14
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, 0, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, 0, -50);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, 50, 0);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, 50, 0);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-50, 0, 100, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, 0, 50);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 15) {    //Q15
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, -50, 50, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, -50, 0, 100);
      print(questionNum + " ");
    }
  } else if (questionNum == 16) {    //Q16
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(100, 0, 0, 0);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, 0, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 17) {    //Q17
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, -100, 50, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 50, 0, 50);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, 50, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, -50, -100);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(50, 0, 0, 0);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(-50, 0, 0, -100);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 18) {    //Q18
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, -100, 50, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 50, 0, 50);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, -100, 0);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, 100, 0);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-50, 0, 100, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, 50, 50);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 19) {    //Q19
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, 0);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, 0, -100);
      print(questionNum + " ");
    }
  } else if (questionNum == 20) {    //Q20
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(-50, -100, -50, 100);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, 50, 0, -100);
      print(questionNum + " ");
    }
  } else if (questionNum == 21) {    //Q21
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 0, 100, -100);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, 0, -100, 100);
      print(questionNum + " ");
    }
  } else if (questionNum == 22) {    //Q22
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, 0, -50, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, 0, 50, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 23) {    //Q23
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(-100, 0, 50, 0);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, -50, 0);
      print(questionNum + " ");
    }
  } else if (questionNum == 24) {    //Q24
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, 50, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(-75, 50, 75, -100);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-75, 0, 75, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(100, 0, -75, 50);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(25, 0, 0, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, -50, 75);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 25) {    //Q25
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-50, 0, -50, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(50, 0, 50, -50);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-25, 0, 75, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(-50, 0, 100, -75);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, 50, -50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(0, 0, 75, -75);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 26) {    //Q26
    if (visualArtsVisible == true) {  //VISARTS
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(0, 0, 0, 75);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(50, 50, 50, -75);
        print(questionNum + " ");
      }
    } else if (compEngVisible == true) { //COMPE
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(-75, 50, 0, 50);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(50, 50, 50, -75);
        print(questionNum + " ");
      }
    } else if (psychologyVisible == true) { //PSYCH
      if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
        questionNum += 1;
        changeStats(25, -50, -50, 75);
        print(questionNum + " ");
      }
      if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
        questionNum += 1;
        changeStats(50, 50, 50, -75);
        print(questionNum + " ");
      }
    }
  } else if (questionNum == 27) {    //Q27
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(25, 0, 50, -100);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, -50, 100);
      print(questionNum + " ");
    }
  } else if (questionNum == 28) {    //Q28
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(100, 0, 0, 0);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, -50, 25);
      print(questionNum + " ");
    }
  } else if (questionNum == 29) {    //Q29
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-25, 0, 0, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 30) {    //Q30
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-25, 0, 0, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 31) {    //Q31
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, -75, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, 50, 0, -25);
      print(questionNum + " ");
    }
  } else if (questionNum == 32) {    //Q32
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, 50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 0, 0, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 33) {    //Q33
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(-50, 0, 50, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, -50, 50);
      print(questionNum + " ");
    }
  } else if (questionNum == 34) {    //Q34
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(0, -75, 100, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(0, 50, -100, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 35) {    //Q35
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(-50, 0, 50, -75);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(50, 0, -25, 75);
      print(questionNum + " ");
    }
  } else if (questionNum == 36) {    //Q36
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, -50, 50, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-50, 50, -50, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 37) {    //Q37
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(75, 0, 0, 0);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-75, 0, 50, -50);
      print(questionNum + " ");
    }
  } else if (questionNum == 38) {    //Q38
    if (mouseX > 75 && mouseX < 275 && mouseY > 375 && mouseY < 500) {  //left action click
      questionNum += 1;
      changeStats(50, 0, 0, -50);
      print(questionNum + " ");
    }
    if (mouseX > 375 && mouseX < 575 && mouseY > 375 && mouseY < 500) { //right action click
      questionNum += 1;
      changeStats(-25, 0, 50, -75);
      print(questionNum + " ");
    }
  }

// will show image based on question number

  if (questionNum == 1) {
    athlete = true;
  } else {
    athlete = false;
  }
  if (questionNum == 2) {
    curriculum = true;
  } else {
    curriculum = false;
  }
  if (questionNum == 3) {
    partTime = true;
  } else {
    partTime = false;
  }
  if (questionNum == 4) {
    attendFest = true;
  } else {
    attendFest = false;
  }
  if (questionNum == 5) {
    attendgym = true;
  } else {
    attendgym = false;
  }
  if (questionNum == 6) {
    goToGame = true;
  } else {
    goToGame = false;
  }
  if (questionNum == 7) {
    yourMajor = true;
  } else {
    yourMajor = false;
  }
  if (questionNum == 8) {
    runningLate = true;
  } else {
    runningLate = false;
  }
  if (questionNum == 9) {
    participateInEvent = true;
  } else {
    participateInEvent = false;
  }
  if (questionNum == 10) {
    doAssignment = true;
  } else {
    doAssignment = false;
  }

  if (questionNum == 11) {
    studyMidTerm = true;
  } else {
    studyMidTerm = false;
  }
  if (questionNum == 12) {
    umbcMerch = true;
  } else {
    umbcMerch = false;
  }
  if (questionNum == 13) {
    trueGrits = true;
  } else {
    trueGrits = false;
  }
  if (questionNum == 15) {
    socialGathering = true;
  } else {
    socialGathering = false;
  }
  if (questionNum == 16) {
    fitnessRoutine = true;
  } else {
    fitnessRoutine = false;
  }
  if (questionNum == 19) {
    friendConflict = true;
  } else {
    friendConflict = false;
  }
  if (questionNum == 20) {
    newGame = true;
  } else {
    newGame = false;
  }
  if (questionNum == 21) {
    workLife = true;
  } else {
    workLife = false;
  }
  if (questionNum == 22) {
    careerFair = true;
  } else {
    careerFair = false;
  }
  if (questionNum == 23) {
    coldDay = true;
  } else {
    coldDay = false;
  }
  if (questionNum == 27) {
    skipClass = true;
  } else {
    skipClass = false;
  }
  if (questionNum == 28) {
    wakingUp = true;
  } else {
    wakingUp = false;
  }
  if (questionNum == 29) {
    campusInvite = true;
  } else {
    campusInvite = false;
  }
  if (questionNum == 30) {
    careerClub = true;
  } else {
    careerClub = false;
  }
  if (questionNum == 31) {
    newShoes = true;
  } else {
    newShoes = false;
  }
  if (questionNum == 32) {
    rainyDay = true;
  } else {
    rainyDay = false;
  }
  if (questionNum == 33) {
    studyDecision = true;
  } else {
    studyDecision = false;
  }
  if (questionNum == 34) {
    timeOut = true;
  } else {
    timeOut = false;
  }
  if (questionNum == 35) {
    studyBreak = true;
  } else {
    studyBreak = false;
  }
  if (questionNum == 36) {
    coffeeDrink = true;
  } else {
    coffeeDrink = false;
  }
  if (questionNum == 37) {
    extraRest = true;
  } else {
    extraRest = false;
  }
  if (questionNum == 38) {
    finalGrade = true;
  } else {
    finalGrade = false;
  }
}
// shortcut function
void keyPressed() {
  if (key == 'w' || key == 'W') {
    questionNum = 39;
    athlete = false;
    curriculum = false;
    partTime = false;
    attendFest = false;
    attendgym = false;
    goToGame = false;
    yourMajor = false;
    runningLate = false;
    participateInEvent = false;
    doAssignment = false;
    studyMidTerm = false;
    umbcMerch = false;
    trueGrits = false;
    psychStudy = false;
    psychFriends = false;
    designStudy = false;
    codeDebug = false;
    codeCollab = false;
    codeSearch = false;
    visualArtsTheatre = false;
    choosingMaterials = false;
    findingInspo = false;
    socialGathering = false;
    fitnessRoutine = false;
    friendConflict = false;
    newGame = false;
    workLife = false;
    nmiClub = false;
    badTeacher = false;
    researchChance = false;
    feelingTired = false;
    robot = false;
    software = false;
    startingOver = false;
    addClass = false;
    exhibition = false;
    careerFair = false;
    coldDay = false;
    skipClass = false;
    wakingUp = false;
    campusInvite = false;
    careerClub = false;
    newShoes = false;
    rainyDay = false;
    studyDecision = false;
    timeOut = false;
    studyBreak = false;
    coffeeDrink = false;
    extraRest = false;
    finalGrade = false;
    resultScreenVisible = true;
  }
}// results screen
void resultScreen() {
  if (questionNum > 38) {
    resultScreenVisible = true;
    textSize(80);
    fill(#000000);
    text("RESULTS", 495, 100);
    if (healthBarWidth <= 225 && happinessBarWidth <= 225 && gradesBarWidth >= 300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      fill(#000000);
      text("You are emotionally and mentally drained, even though you saved a sizable sum of money and finished this semester with good grades. You made it through, but at what cost?", width/2, height/2);
    } else if ( healthBarWidth <= 300 && happinessBarWidth <= 300 && gradesBarWidth >= 300 && moneyBarWidth <= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You received good grades this semester, but your health and happiness is terrible and let's not forget...you are broke.", 110, 250, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth >= 300 && gradesBarWidth >=300 && moneyBarWidth <= 300) {  //Bad money
      textSize(25);
      textAlign(CENTER);
      text("Your semester was fantastic! You were happy and healthy, and you kept up with your classes!.....but next time, let's save a little cash.", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth >= 300 && gradesBarWidth >=300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      text("Many congratulations! You did well academically, saved a sufficient sum of money, and are happy and healthy!", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth <= 300 && happinessBarWidth <= 300 && gradesBarWidth <= 300 && moneyBarWidth >= 300) { //good money
      textSize(25);
      textAlign(CENTER);
      text("You are extremely wealthy! Tragically, your happiness, health, and grades suffered as a consequence", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth >= 300 && gradesBarWidth <=300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You've saved a ton of money and are in good health and happiness! You seem to have passed the semester--wait, your grades.....", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth >= 300 && gradesBarWidth <=300 && moneyBarWidth <= 300) { //no money bad grades
      textSize(25);
      textAlign(CENTER);
      text("You failed the semester, you have no money, but hey! You're in good health and you're happy!", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth <= 300 && happinessBarWidth <= 300 && gradesBarWidth <= 300 && moneyBarWidth <= 300) {
      textSize(25);
      textAlign(CENTER);
      text("Well there is always next semester.......right?", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth <= 300 && gradesBarWidth >= 300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You passed the semester with good grades, your physically feeling great, and you're not broke, BUT you are mentally exhausted and burnt out.", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth <= 300 && gradesBarWidth <= 300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You're alive and you've been hustling this semester, but at the cost of you're grades and social life. You didn't pass this semester.", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth <= 300 && gradesBarWidth >= 300 && moneyBarWidth <= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You're alive and you passed the semester! But you're broke and mentally exhausted. You really need to take a break.", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth >= 300 && happinessBarWidth <= 300 && gradesBarWidth <= 300 && moneyBarWidth <= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You're in the most amazing physical shape you've ever been...but uh...what happened to the rest of your life?", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth <= 300 && happinessBarWidth >= 300 && gradesBarWidth >= 300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      text("Your grades are great, you made some money, and you had a great time! but you might want to take care of yourself a little more...", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth <= 300 && happinessBarWidth >= 300 && gradesBarWidth <= 300 && moneyBarWidth >= 300) {
      textSize(25);
      textAlign(CENTER);
      text("You hustled by day....and partied by night, but you flucked this semester and you're a mess.....", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth <= 300 && happinessBarWidth >= 300 && gradesBarWidth >= 300 && moneyBarWidth <= 300) {
      textSize(25);
      textAlign(CENTER);
      text("Student by day and party animal by night, you passed and had a great time, but you're broke and you're a mess...", 110, 300, 500, 400);
      resultScreenVisible = true;
    } else if (healthBarWidth <= 300 && happinessBarWidth >= 300 && gradesBarWidth <= 300 && moneyBarWidth <= 300) {
      textSize(25);
      textAlign(CENTER);
      text("So you just partied all semester, why are you here again?", 110, 300, 500, 400);
      resultScreenVisible = true;
    }
  }
}
