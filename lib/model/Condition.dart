
class Condition {
  int id;
  String description;

  Condition(this.id, this.description);

  String getAssetString() {
    if (id >= 200 && id <= 299)
      return "assets/img/d7s.png";
    else if (id >= 300 && id <= 399)
      return "assets/img/d6s.png";
    else if (id >= 500 && id <= 599)
      return "assets/img/d5s.png";
    else if (id >= 600 && id <= 699)
      return "assets/img/d8s.png";
    else if (id >= 700 && id <= 799)
      return "assets/img/d9s.png";
    else if (id >= 300 && id <= 399)
      return "assets/img/d6s.png";
    else if (id == 800)
      return "assets/img/d1s.png";
    else if (id == 801)
      return "assets/img/d2s.png";
    else if (id == 802)
      return "assets/img/d3s.png";
    else if (id == 803 || id == 804)
      return "assets/img/d4s.png";

    print("Unknown condition $id");
    return "assets/img/n1s.png";
  }
}