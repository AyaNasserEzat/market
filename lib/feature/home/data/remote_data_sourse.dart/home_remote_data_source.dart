import 'package:pure_soft/core/database/api/api_consumer.dart';
import 'package:pure_soft/core/database/api/end_point.dart';
import 'package:pure_soft/feature/home/data/models/banner_model.dart';
import 'package:pure_soft/feature/home/data/models/product_model.dart';
import 'package:pure_soft/feature/home/data/models/vendor.dart';

abstract class HomeRemoteDataSource {
 Future<List<Vendor>> getVendor();
  Future<List<ProductModel>> getProductVendor(int vendorId);
  Future<List<BannerModel>> getBanner();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
 final ApiConsumer api;

  HomeRemoteDataSourceImpl({required this.api});
  @override
Future<List<Vendor>> getVendor()async {
  List<Vendor> vendorList=[];
final res=  await api.get(EndPoint.getVendor);
for (var vendor in res["data"]["data"]) {
  vendorList.add(Vendor.fromJson(vendor));
}

return vendorList;
  }
  
  @override
  Future<List<ProductModel>> getProductVendor(int vendorId)async {
  List<ProductModel> products=[];
final res=  await api.get("${EndPoint.getVendorProducts}?vendor_id=$vendorId");
for (var vendor in res["data"]) {
  products.add(ProductModel.fromJson(vendor));
}

return products;
  }
  
  @override
  Future<List<BannerModel>> getBanner() async{
  List<BannerModel> banners=[];
final res=  await api.get("${EndPoint.getbanner}");
for (var banner in res["data"]) {
  banners.add(BannerModel.fromJson(banner));
}

return banners;
  }
  

}