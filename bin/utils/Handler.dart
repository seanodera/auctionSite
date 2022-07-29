import 'package:shelf_router/shelf_router.dart';

import '../services/auction_Service.dart';

class Handlers {
  final router = Router();
  AuctionService auctionService = AuctionService();
  Handlers() {
    router.get('/auctions', auctionService.auctionsHandler);
  }
}
