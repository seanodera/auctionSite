import 'dart:math';

import 'package:faker/faker.dart';

import 'Models.dart';

class Database {
  Future<Auction> getAuction(int id) async {
    return Auction.fromMap({});
  }

  Future<List<Auction>> getAuctions() async {
    List<Auction> list = [];
    for (int i = 0; i <= 20; i++) {
      var random = Random();
      List<Bid> bids = List.generate(
          random.nextInt(13),
          (index) => Bid(
              id: index,
              auctionId: i,
              userId: random.nextInt(20),
              amount: random.nextInt(2000),
              timeStamp: DateTime.now()));
      Auction auction = Auction(
          images: [
            'https://images.unsplash.com/flagged/photo-1562599838-8cc871c241a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGlnaXRhbHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60',
            'https://images.unsplash.com/photo-1544380904-c686aad2fc40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGlnaXRhbHxlbnwwfDJ8MHx8&auto=format&fit=crop&w=900&q=60'
          ],
          bids: bids,
          currentPrice: 2000,
          startingPrice: 20,
          id: i,
          sellerId: i,
          active: random.nextBool(),
          opened: DateTime.now(),
          closed: DateTime.now().add(Duration(days: 30)),
          posted: DateTime.now().subtract(Duration(days: 10)),
          name: Faker().person.name(),
          description: Faker().lorem.sentences(3).toString(),
          location: 'location',
          country: 'country',
          condition: 'used');
      list.add(auction);
    }
    return list;
  }

  Future<bool> addAuction(Auction auction) async {
    return false;
  }

  Future<bool> startAuction(int id) async {
    return false;
  }

  Future<bool> stopAuction(int id) async {
    return false;
  }

  Future<bool> bidAuction(int id, Bid bid) async {
    return false;
  }
}
