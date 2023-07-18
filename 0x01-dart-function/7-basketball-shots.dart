int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int totalTeamA = calculateTotal(teamA);
    int totalTeamB = calculateTotal(teamB);

    print(totalTeamA);
    print(totalTeamB);

    if (totalTeamA == totalTeamB) {
        return 0;
    } else if (totalTeamA > totalTeamB) {
        return 1;
    } else {
        return 2;
    }

}

int calculateTotal(Map<String, int> team) {
    int total = 0;

    team.forEach((key, value) {
        if (key == 'Free throws') {
            total += value;
        } else if (key == '2 pointers') {
            total += value * 2;
        } else if (key == '3 pointers') {
            total += value * 3;
        }
    });

    return total;
}