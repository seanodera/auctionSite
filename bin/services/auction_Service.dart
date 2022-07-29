import 'package:shelf/shelf.dart';

import '../podo/Models.dart';
import '../podo/constants.dart';
import '../podo/database.dart';

class AuctionService {
  Future<Response> auctionsHandler(Request req) async {
    List<Auction> list = await Database().getAuctions();
    final result =
        List.generate(list.length, (index) => list.elementAt(index).toMap());

    return Response.ok(result.toString(), headers: returnHeader);
  }
}
