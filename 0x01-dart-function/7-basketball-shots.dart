// import '7-main.dart';

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAScore = (teamA['Free throws']?? 0) * 1 + (teamA['2-pointers']?? 0) * 2 + (teamA['3-pointers']?? 0) * 3;
  int teamBScore = (teamB['Free throws']?? 0) * 1 + (teamB['2-pointers']?? 0) * 2 + (teamB['3-pointers']?? 0) * 3;

  if (teamAScore > teamBScore) {
    return 1;
  } else if (teamAScore < teamBScore) {
    return 2;
  } else {
    return 0;
  }
}
main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}