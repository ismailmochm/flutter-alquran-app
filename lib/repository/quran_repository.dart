import 'package:alquran_app/core/constant/constant.dart';
import 'package:alquran_app/data/api_service.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_detail_model.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_model.dart';

class QuranRepository {
  Future<QuranModel> fetchListQuran() async {
    try {
      final response =
          await ApiService().get(Constant.API_LIST_QURAN); // Example API
      if (response.statusCode == 200) {
        return QuranModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load items');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<QuranDetailModel> fetchQuranByNomor(String nomor) async {
    try {
      final response = await ApiService()
          .get('${Constant.API_DETAIL_QURAN}$nomor'); // Example API
      if (response.statusCode == 200) {
        return QuranDetailModel.fromJson(
            response.data); // Assuming the API returns a list of items
      } else {
        throw Exception('Failed to load items');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
