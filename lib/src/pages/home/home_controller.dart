class HomeController{
  List<String> origem = ["011","016", "011", "017", "011", "018"];
  List<String> destino = ["016","011", "017", "011", "018", "011"];
  List<double> pricePerMinuteList = [1.90, 2.90, 1.70, 2.70, 0.90, 1.90];
  int currentIndex = 0;
  String plano = "";
  double valueWithPlan;
  double valueWithoutPlan;
  bool isVisible = false;

  calculaPrice(String dddOrigem, String dddDestino){
    double pricePerMinute  = 0.0;
    for(int i = 0; i < origem.length; i++){
      if(origem[i] == dddOrigem && destino[i] == dddDestino){
        pricePerMinute = pricePerMinuteList[i];
      }
    }
    return pricePerMinute;
  }

  calculateValueCall(String plano, String dddOrigem, String dddDestino, int timeCall){
    var valueCall;
    var tenPercentValueCall;
    double pricePerMinute = calculaPrice(dddOrigem, dddDestino);

    switch (plano){
      case "semFaleMais":
        {
          valueCall = timeCall * pricePerMinute;
        }
        break;
      case "faleMais30":
        {
          if (timeCall < 30) {
            valueCall = 0.0;
          } else {
            tenPercentValueCall = ((timeCall - 30) * pricePerMinute) * 0.1;
            valueCall = ((timeCall - 30) * pricePerMinute) + tenPercentValueCall;
          }
        }
        break;
      case "faleMais60":
        {
          if (timeCall < 60) {
            valueCall = 0.0;
          } else {
            tenPercentValueCall = ((timeCall - 60) * pricePerMinute) * 0.1;
            valueCall = ((timeCall - 60) * pricePerMinute) + tenPercentValueCall;
          }
        }
        break;
      case "faleMais120":
        {
          if (timeCall < 90) {
            valueCall = 0.0;
          } else {
            tenPercentValueCall = ((timeCall - 120) * pricePerMinute) * 0.1;
            valueCall = ((timeCall - 120) * pricePerMinute) + tenPercentValueCall;
          }

        }
        break;
    }

    return valueCall;
  }

  String validator(String value){
    if(value == null || value.isEmpty){
      return "DDD obrigatório";
    }
    if(!origem.contains(value)){
      return "Digite um DDD válido";
    }
    if(plano == null || plano == "" || plano.isEmpty){
      return "Escolha um plano";
    }
    return null;
  }

}