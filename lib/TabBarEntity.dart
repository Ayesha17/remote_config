class TabBarEntity{
  String? home;
  String? chat;
  String? bookings;
  String? search;
  String? settings;


  TabBarEntity({ 
    this.home,
    this.chat,
    this.bookings,
    this.search,
    this.settings});

  TabBarEntity.fromJson(dynamic json) {
    home = json['home'];
    chat = json['chat'];
    bookings = json['bookings'];
    search = json['search'];
    settings = json['settings'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['home'] = home;
    map['chat'] = chat;
    map['bookings'] = bookings;
    map['search'] = search;
    map['settings'] = settings;
    return map;
  }

}