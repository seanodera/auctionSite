class Auction {
  late List<String> images;
  late List<Bid> bids;
  late int currentPrice, startingPrice, id, sellerId;
  late bool active;
  late DateTime opened, closed, posted;
  late String name, description, location, country, condition;

  Auction(
      {required this.images,
      required this.bids,
      required this.currentPrice,
      required this.startingPrice,
      required this.id,
      required this.sellerId,
      required this.active,
      required this.opened,
      required this.closed,
      required this.posted,
      required this.name,
      required this.description,
      required this.location,
      required this.country,
      required this.condition});

  Auction.fromMap(Map<String, dynamic> data) {
    List<Map<String, dynamic>> _bids = data['bid'];
    images = data['images'];
    bids = _bids.map((e) => Bid.fromMap(e['bid'])).toList();
    currentPrice = data['currentPrice'];
    startingPrice = data['startingPrice'];
    id = data['id'];
    sellerId = data['sellerId'];
    active = data['active'];
    opened = DateTime.parse(data['opened']);
    closed = DateTime.parse(data['closed']);
    posted = DateTime.parse(data['posted']);
    name = data['name'];
    description = data['description'];
    location = data['location'];
    country = data['country'];
    condition = data['condition'];
  }
  Map<String, dynamic> toMap() => {
        'images': images,
        'bids': bids.map((e) => e.toMap()).toList(),
        'currentPrice': currentPrice,
        'startingPrice': startingPrice,
        'id': id,
        'sellerId': sellerId,
        'active': active,
        'opened': opened.toString(),
        'closed': closed.toString(),
        'posted': posted.toString(),
        'name': name,
        'description': description,
        'location': location,
        'country': country,
        'condition': condition,
      };
}

class Bid {
  late int id, auctionId;
  late int userId;
  late int amount;
  late DateTime timeStamp;
  Bid(
      {required this.id,
      required auctionId,
      required this.userId,
      required this.amount,
      required this.timeStamp});
  Bid.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    auctionId = data['auctionId'];
    userId = data['userId'];
    amount = data['amount'];
    timeStamp = DateTime.parse(data['timeStamp']);
  }
  Map<String, dynamic> toMap() => {
        'id': id,
        'userID': userId,
        'amount': amount,
        'timeStamp': timeStamp.toString(),
      };
}

class User {
  late int id;
  late String name, email, phoneNumber, pass, status;
  late DateTime joined;
  late bool seller;
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      required this.pass,
      required this.status,
      required this.joined,
      required this.seller});
}

class Seller {
  late int id, balance;
  late List<int> listings;
  late String status;
  Seller(
      {required this.id,
      required this.balance,
      required this.listings,
      required this.status});
}

class Address {
  late String line1, line2, town, city, country;
  late int zip;
  Address(
      {required this.line1,
      required this.line2,
      required this.town,
      required this.city,
      required this.country,
      required this.zip});
}
