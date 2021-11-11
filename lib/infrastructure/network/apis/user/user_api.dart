import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/order/user_promo_model.dart';
import 'package:digiresto/domain/entity/response_model.dart' as responseModel;
import 'package:digiresto/domain/entity/user/credit_history_model.dart';
import 'package:digiresto/domain/entity/user/topup_list_model.dart';
import 'package:digiresto/domain/entity/user/topup_model.dart';
import 'package:digiresto/domain/entity/user/topup_pending_model.dart';
import 'package:digiresto/domain/entity/user/user_add_address_model.dart';
import 'package:digiresto/domain/entity/user/user_balance_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/entity/user/user_profile_model.dart';
import 'package:digiresto/domain/entity/user/user_remove_address_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UserApi {
  final INetworkService _networkService;
  final IStorage _storage;

  UserApi(
    this._networkService,
    this._storage,
  );

  Future<Either<Exception, UserProfile>> getProfile() async {
    try {
      String apiUrl = Endpoints.urlProfile;
      final apiResult = await _networkService.getHttp(path: apiUrl);
      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      return right(UserProfile.createUserProfile(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, UserBalance>> getBalance() async {
    try {
      String apiUrl = Endpoints.urlBalance;
      final apiResult = await _networkService.getHttp(path: apiUrl);
      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      return right(UserBalance.createBalance(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, List<UserAddress>>> getAddress() async {
    try {
      final _userAuth = await _getUserProfile();
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlGetAllAddress;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {},
          "body": {"wa_id": _userAuth.mobilePhone},
        },
        queryParameter: queryParameters,
      );

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<UserAddress> address = [];
      for (int i = 0; i < listUserData.length; i++) {
        address.add(UserAddress.createAddress(listUserData[i]));
      }
      return right(address);
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, UserAddAddress>> addAddress(
      Map<String, dynamic> object) async {
    try {
      final _userAuth = await _getUserProfile();
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlAddAddress;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {},
          "body": {
            "wa_id": _userAuth.mobilePhone,
            "waba_no": _userAuth.mobilePhone,
            "name": object["name"].toString(),
            "address": object["address"].toString(),
            "latitude": object["latitude"].toString(),
            "longitude": object["longitude"].toString(),
            "is_default": object["is_default"],
          }
        },
        queryParameter: queryParameters,
      );
      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      return right(UserAddAddress.createAddAddress(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, UserRemoveAddress>> removeAddress(
      Map<String, dynamic> object) async {
    try {
      final _userAuth = await _getUserProfile();
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlRemoveAddress;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {},
          "body": {
            "wa_id": _userAuth.mobilePhone,
            "waba_no": _userAuth.mobilePhone,
            "id": object["id"],
          }
        },
        queryParameter: queryParameters,
      );
      var userData = (apiResult as Map<String, dynamic>)[
          'response']; //mengambil data data didalam jsonObject
      return right(UserRemoveAddress.createUserRemoveAddress(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, List<UserAddress>>> setDefaultAddress(
      Map<String, dynamic> object) async {
    try {
      final _userAuth = await _getUserProfile();
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlSetDefaultAddress;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {},
          "body": {
            "wa_id": _userAuth.mobilePhone,
            "waba_no": _userAuth.mobilePhone,
            "id": object["id"],
          }
        },
        queryParameter: queryParameters,
      );

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)['data']
          ['list_address']; //mengambil data data didalam jsonObject
      List<UserAddress> address = [];
      for (int i = 0; i < listUserData.length; i++) {
        address.add(UserAddress.createAddress(listUserData[i]));
      }
      return right(address);
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, List<UserPromo>>> getPromo(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlGetPromo;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {
            "location": object["location"],
            "page": object["page"],
            "filter": object["filter"],
          },
          "body": {}
        },
        queryParameter: queryParameters,
      );

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<UserPromo> promos = [];
      for (int i = 0; i < listUserData.length; i++) {
        promos.add(UserPromo.createUserPromo(listUserData[i]));
      }
      return right(promos);
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, responseModel.Response>> updateProfile(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlUpdateProfile;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "name": object["name"],
        "email": object["email"],
      });
      var userData = (apiResult as Map<String, dynamic>)["response"];
      return right(responseModel.Response.createResponse(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, List<TopupList>>> getTopupLists() async {
    try {
      String apiUrl = Endpoints.urlTopupList;
      final apiResult = await _networkService.getHttp(path: apiUrl);

      var userData = (apiResult as Map<String, dynamic>)["data"]["topupMethod"];
      List<TopupList> topupList = [];
      for (int i = 0; i < userData.length; i++) {
        topupList.add(TopupList.fromJson(userData[i]));
      }
      return right(topupList);
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, Topup>> topup(
      Map<String, dynamic> object, String paymentType) async {
    try {
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlTopup;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {},
          "body": object,
        },
        queryParameter: queryParameters,
      );

      var userData = (apiResult as Map<String, dynamic>)["data"];
      return right(Topup.fromJson(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, responseModel.Response>> cancelBilling(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlCancelBilling;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {"billingId": object["billingId"]},
          "body": {},
        },
        queryParameter: queryParameters,
      );

      var userData = (apiResult as Map<String, dynamic>)["response"];
      return right(responseModel.Response.createResponse(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, CreditHistory>> getCreditHistory(int page) async {
    try {
      String apiUrl = Endpoints.urlCreditHistory +
          "?onPage=" +
          page.toString() +
          "&pageSize=10";
      final apiResult = await _networkService.getHttp(path: apiUrl);
      var userData = (apiResult as Map<String, dynamic>)['data'];
      return right(CreditHistory.fromJson(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<Either<Exception, List<TopupPending>>> getPendingPopup() async {
    try {
      String apiUrl = Endpoints.urlForward;
      final queryParameters = Endpoints.urlTopupPending;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {},
          "body": {},
        },
        queryParameter: queryParameters,
      );
      var userData = (apiResult as Map<String, dynamic>)['data'];
      List<TopupPending> topupPending = [];
      for (int i = 0; i < userData.length; i++) {
        topupPending.add(TopupPending.fromJson(userData[i]));
      }
      return right(topupPending);
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<UserAuth> _getUserProfile() async {
    final _box = await _storage.openBox(StorageConstants.user);
    final _userInStorage = await _storage.getData(
      _box,
    );
    final _userAuth = UserAuth.fromJson(_userInStorage);
    await _storage.close(_box);
    return _userAuth;
  }
}
