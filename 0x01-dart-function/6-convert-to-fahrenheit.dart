List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = temperaturesInC.map((temp) =>  (temp * 9 / 5 + 32).toStringAsFixed(2)).map(double.parse).toList();
    return temperaturesInF;
}