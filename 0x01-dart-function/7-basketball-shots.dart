// import '7-main.dart';

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAScore = (teamA['Free throws']?? 0) + (teamA['2-pointers']?? 0) * 2 + (teamA['3-pointers']?? 0) * 3;
  int teamBScore = (teamB['Free throws']?? 0) + (teamB['2-pointers']?? 0) * 2 + (teamB['3-pointers']?? 0) * 3;

  if (teamAScore > teamBScore) {
    return 1;
  } else if (teamAScore < teamBScore) {
    return 2;
  } else {
    return 0;
  }
}
void main() {
  var teamA = {'Free throws': 23, '2-pointers': 32, '3-pointers': 16};
  var teamB = {'Free throws': 31, '2-pointers': 27, '3-pointers': 13};
  print(whoWins(teamA, teamB));

  // Test case for a tie
  var teamC = {'Free throws': 10, '2-pointers': 20, '3-pointers': 10};
  var teamD = {'Free throws': 10, '2-pointers': 20, '3-pointers': 10};
  print(whoWins(teamC, teamD));

  // Test case for Team A winning
  var teamE = {'Free throws': 20, '2-pointers': 30, '3-pointers': 15};
  var teamF = {'Free throws': 15, '2-pointers': 25, '3-pointers': 10};
  print(whoWins(teamE, teamF));
}