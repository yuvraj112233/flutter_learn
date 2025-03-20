class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt({

    required this.imgUrl,
    required this.newsCnt,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl
  });





  static NewsArt fromAPItoApp(Map<String, dynamic> article){

    return NewsArt(
    imgUrl: article["urlToImage"] ?? "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    newsCnt: article["content"] ?? "--",
    newsDes: article["description"] ?? "--",
    newsHead: article["title"] ?? "--",
    newsUrl: article["url"]  ?? "https://news.google.com/home?q=Nepal&hl=en-US&gl=US&ceid=US:en");
  }





}