
/// home : {"name":"John Doe","accountNumber":"1234567890","balance":2500.5,"currency":"USD","address":{"streetName":"Rhianna Row","buildingNumber":"6604","townName":"New Francesca","postCode":"23458","country":"Saint Helena"},"recentTransactions":[{"date":"2023-07-15","description":"Online Shopping","amount":-150,"fromAccount":"Checking","toAccount":"Cash"},{"date":"2023-07-14","description":"Deposit","amount":1000,"fromAccount":"Savings","toAccount":"External"},{"date":"2023-07-12","description":"ATM Withdrawal","amount":-200,"fromAccount":"Credit Card","toAccount":"External"}],"upcomingBills":[{"date":"2023-07-20","description":"Electricity Bill","amount":75.5,"fromAccount":"Savings","toAccount":"External"},{"date":"2023-07-28","description":"Phone Bill","amount":45,"fromAccount":"Checking","toAccount":"External"}]}

class HomeDataModel {
  HomeDataModel({
      Home? home,}){
    _home = home;
}

  HomeDataModel.fromJson(dynamic json) {
    _home = json['home'] != null ? Home.fromJson(json['home']) : null;
  }
  Home? _home;
HomeDataModel copyWith({  Home? home,
}) => HomeDataModel(  home: home ?? _home,
);
  Home? get home => _home;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_home != null) {
      map['home'] = _home?.toJson();
    }
    return map;
  }

}

/// name : "John Doe"
/// accountNumber : "1234567890"
/// balance : 2500.5
/// currency : "USD"
/// address : {"streetName":"Rhianna Row","buildingNumber":"6604","townName":"New Francesca","postCode":"23458","country":"Saint Helena"}
/// recentTransactions : [{"date":"2023-07-15","description":"Online Shopping","amount":-150,"fromAccount":"Checking","toAccount":"Cash"},{"date":"2023-07-14","description":"Deposit","amount":1000,"fromAccount":"Savings","toAccount":"External"},{"date":"2023-07-12","description":"ATM Withdrawal","amount":-200,"fromAccount":"Credit Card","toAccount":"External"}]
/// upcomingBills : [{"date":"2023-07-20","description":"Electricity Bill","amount":75.5,"fromAccount":"Savings","toAccount":"External"},{"date":"2023-07-28","description":"Phone Bill","amount":45,"fromAccount":"Checking","toAccount":"External"}]

class Home {
  Home({
      String? name, 
      String? accountNumber, 
      num? balance, 
      String? currency, 
      Address? address, 
      List<RecentTransactions>? recentTransactions, 
      List<UpcomingBills>? upcomingBills,}){
    _name = name;
    _accountNumber = accountNumber;
    _balance = balance;
    _currency = currency;
    _address = address;
    _recentTransactions = recentTransactions;
    _upcomingBills = upcomingBills;
}

  Home.fromJson(dynamic json) {
    _name = json['name'];
    _accountNumber = json['accountNumber'];
    _balance = json['balance'];
    _currency = json['currency'];
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
    if (json['recentTransactions'] != null) {
      _recentTransactions = [];
      json['recentTransactions'].forEach((v) {
        _recentTransactions?.add(RecentTransactions.fromJson(v));
      });
    }
    if (json['upcomingBills'] != null) {
      _upcomingBills = [];
      json['upcomingBills'].forEach((v) {
        _upcomingBills?.add(UpcomingBills.fromJson(v));
      });
    }
  }
  String? _name;
  String? _accountNumber;
  num? _balance;
  String? _currency;
  Address? _address;
  List<RecentTransactions>? _recentTransactions;
  List<UpcomingBills>? _upcomingBills;
Home copyWith({  String? name,
  String? accountNumber,
  num? balance,
  String? currency,
  Address? address,
  List<RecentTransactions>? recentTransactions,
  List<UpcomingBills>? upcomingBills,
}) => Home(  name: name ?? _name,
  accountNumber: accountNumber ?? _accountNumber,
  balance: balance ?? _balance,
  currency: currency ?? _currency,
  address: address ?? _address,
  recentTransactions: recentTransactions ?? _recentTransactions,
  upcomingBills: upcomingBills ?? _upcomingBills,
);
  String? get name => _name;
  String? get accountNumber => _accountNumber;
  num? get balance => _balance;
  String? get currency => _currency;
  Address? get address => _address;
  List<RecentTransactions>? get recentTransactions => _recentTransactions;
  List<UpcomingBills>? get upcomingBills => _upcomingBills;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['accountNumber'] = _accountNumber;
    map['balance'] = _balance;
    map['currency'] = _currency;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    if (_recentTransactions != null) {
      map['recentTransactions'] = _recentTransactions?.map((v) => v.toJson()).toList();
    }
    if (_upcomingBills != null) {
      map['upcomingBills'] = _upcomingBills?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : "2023-07-20"
/// description : "Electricity Bill"
/// amount : 75.5
/// fromAccount : "Savings"
/// toAccount : "External"

class UpcomingBills {
  UpcomingBills({
      String? date, 
      String? description, 
      num? amount, 
      String? fromAccount, 
      String? toAccount,}){
    _date = date;
    _description = description;
    _amount = amount;
    _fromAccount = fromAccount;
    _toAccount = toAccount;
}

  UpcomingBills.fromJson(dynamic json) {
    _date = json['date'];
    _description = json['description'];
    _amount = json['amount'];
    _fromAccount = json['fromAccount'];
    _toAccount = json['toAccount'];
  }
  String? _date;
  String? _description;
  num? _amount;
  String? _fromAccount;
  String? _toAccount;
UpcomingBills copyWith({  String? date,
  String? description,
  num? amount,
  String? fromAccount,
  String? toAccount,
}) => UpcomingBills(  date: date ?? _date,
  description: description ?? _description,
  amount: amount ?? _amount,
  fromAccount: fromAccount ?? _fromAccount,
  toAccount: toAccount ?? _toAccount,
);
  String? get date => _date;
  String? get description => _description;
  num? get amount => _amount;
  String? get fromAccount => _fromAccount;
  String? get toAccount => _toAccount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['description'] = _description;
    map['amount'] = _amount;
    map['fromAccount'] = _fromAccount;
    map['toAccount'] = _toAccount;
    return map;
  }

}

/// date : "2023-07-15"
/// description : "Online Shopping"
/// amount : -150
/// fromAccount : "Checking"
/// toAccount : "Cash"

class RecentTransactions {
  RecentTransactions({
      String? date, 
      String? description, 
      num? amount, 
      String? fromAccount, 
      String? toAccount,}){
    _date = date;
    _description = description;
    _amount = amount;
    _fromAccount = fromAccount;
    _toAccount = toAccount;
}

  RecentTransactions.fromJson(dynamic json) {
    _date = json['date'];
    _description = json['description'];
    _amount = json['amount'];
    _fromAccount = json['fromAccount'];
    _toAccount = json['toAccount'];
  }
  String? _date;
  String? _description;
  num? _amount;
  String? _fromAccount;
  String? _toAccount;
RecentTransactions copyWith({  String? date,
  String? description,
  num? amount,
  String? fromAccount,
  String? toAccount,
}) => RecentTransactions(  date: date ?? _date,
  description: description ?? _description,
  amount: amount ?? _amount,
  fromAccount: fromAccount ?? _fromAccount,
  toAccount: toAccount ?? _toAccount,
);
  String? get date => _date;
  String? get description => _description;
  num? get amount => _amount;
  String? get fromAccount => _fromAccount;
  String? get toAccount => _toAccount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['description'] = _description;
    map['amount'] = _amount;
    map['fromAccount'] = _fromAccount;
    map['toAccount'] = _toAccount;
    return map;
  }

}

/// streetName : "Rhianna Row"
/// buildingNumber : "6604"
/// townName : "New Francesca"
/// postCode : "23458"
/// country : "Saint Helena"

class Address {
  Address({
      String? streetName, 
      String? buildingNumber, 
      String? townName, 
      String? postCode, 
      String? country,}){
    _streetName = streetName;
    _buildingNumber = buildingNumber;
    _townName = townName;
    _postCode = postCode;
    _country = country;
}

  Address.fromJson(dynamic json) {
    _streetName = json['streetName'];
    _buildingNumber = json['buildingNumber'];
    _townName = json['townName'];
    _postCode = json['postCode'];
    _country = json['country'];
  }
  String? _streetName;
  String? _buildingNumber;
  String? _townName;
  String? _postCode;
  String? _country;
Address copyWith({  String? streetName,
  String? buildingNumber,
  String? townName,
  String? postCode,
  String? country,
}) => Address(  streetName: streetName ?? _streetName,
  buildingNumber: buildingNumber ?? _buildingNumber,
  townName: townName ?? _townName,
  postCode: postCode ?? _postCode,
  country: country ?? _country,
);
  String? get streetName => _streetName;
  String? get buildingNumber => _buildingNumber;
  String? get townName => _townName;
  String? get postCode => _postCode;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['streetName'] = _streetName;
    map['buildingNumber'] = _buildingNumber;
    map['townName'] = _townName;
    map['postCode'] = _postCode;
    map['country'] = _country;
    return map;
  }

}