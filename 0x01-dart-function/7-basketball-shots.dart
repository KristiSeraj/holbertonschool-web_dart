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

    total += (team['Free throws'] ?? 0) * 1;
    total += (team['2 pointer'] ?? 0) * 2;
    total += (team['3 pointer'] ?? 0) * 3;

    return total;
}