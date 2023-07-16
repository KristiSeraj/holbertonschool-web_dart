int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int totalTeamA = calculateTotal(teamA);
    int totalTeamB = calculateTotal(teamB);

    if (totalTeamA > totalTeamB) {
        return 1;
    } else if (totalTeamA < totalTeamB) {
        return 2;
    } else {
        return 0;
    }
}

int calculateTotal(Map<String, int> team) {
    int total = 0;

    team.forEach((key, value) {
        if (key == 'Free throws') {
            total += value;
        } else if (key == '2 pointer') {
            total += value * 2;
        } else if (key == '3 pointer') {
            total += value * 3;
        }  
    });

    return total;
}