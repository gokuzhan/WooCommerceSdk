library woocommerce_sdk;

import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:ansicolor/ansicolor.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:woocommerce_sdk/models/Auth/Auth.dart';

import 'constants/constants.dart';
import 'helpers/Query.dart';
import 'models/Cart/WCCart.dart';
import 'models/Cart/WCCartItem.dart';
import 'models/Coupon/WCCoupon.dart';
import 'models/Customer/Download/WCCustomerDownload.dart';
import 'models/Customer/WCCustomer.dart';
import 'models/Error/WCError.dart';
import 'models/Jwt/WCAuthResponse.dart';
import 'models/Order/Payload/WCOrderPayload.dart';
import 'models/Order/WCOrder.dart';
import 'models/PaymentGateway/WCPaymentGateway.dart';
import 'models/Product/Attribute/WCProductAttribute.dart';
import 'models/Product/Attribute/WCProductAttributeTerm.dart';
import 'models/Product/Category/WCProductCategory.dart';
import 'models/Product/Review/WCProductReview.dart';
import 'models/Product/Shipping/WCProductShippingClass.dart';
import 'models/Product/Tag/WCProductTag.dart';
import 'models/Product/Variation/WCProductVariation.dart';
import 'models/Product/WCProduct.dart';
import 'models/Shipping/Location/WCShippingZoneLocation.dart';
import 'models/Shipping/Method/WCShippingMethod.dart';
import 'models/Shipping/Method/Zone/WCShippingZoneMethod.dart';
import 'models/Shipping/WCShippingZone.dart';
import 'models/Tax/WCTaxClass.dart';
import 'models/Tax/WCTaxRate.dart';
import 'utils/local_db.dart';

export 'helpers/Jwt.dart' show WCJwtDecoder;
export 'models/Cart/WCCart.dart' show WCCart;
export 'models/Cart/WCCartItem.dart' show WCCartItem;
export 'models/Coupon/WCCoupon.dart' show WCCoupon;
export 'models/Customer/Download/WCCustomerDownload.dart'
    show WCCustomerDownload;
export 'models/Customer/WCCustomer.dart' show WCCustomer;
export 'models/Error/WCError.dart' show WCError;
export 'models/Jwt/WCAuthResponse.dart' show WCAuthResponse;
export 'models/Order/Payload/WCOrderPayload.dart' show WCOrderPayload;
export 'models/Order/WCOrder.dart' show WCOrder;
export 'models/PaymentGateway/WCPaymentGateway.dart' show WCPaymentGateway;
export 'models/Product/Attribute/WCProductAttribute.dart'
    show WCProductAttribute;
export 'models/Product/Attribute/WCProductAttributeTerm.dart'
    show WCProductAttributeTerm;
export 'models/Product/Category/WCProductCategory.dart' show WCProductCategory;
export 'models/Product/Review/WCProductReview.dart' show WCProductReview;
export 'models/Product/Shipping/WCProductShippingClass.dart'
    show WCProductShippingClass;
export 'models/Product/Tag/WCProductTag.dart' show WCProductTag;
export 'models/Product/Variation/WCProductVariation.dart'
    show WCProductVariation;
export 'models/Product/WCProduct.dart' show WCProduct;
export 'models/Shipping/Location/WCShippingZoneLocation.dart'
    show WCShippingZoneLocation;
export 'models/Shipping/Method/WCShippingMethod.dart' show WCShippingMethod;
export 'models/Shipping/Method/Zone/WCShippingZoneMethod.dart'
    show WCShippingZoneMethod;
export 'models/Shipping/WCShippingZone.dart' show WCShippingZone;
export 'models/Tax/WCTaxClass.dart' show WCTaxClass;
export 'models/Tax/WCTaxRate.dart' show WCTaxRate;

/// [WooCommerce_sdk].

class WooCommerceSdk {
  /// Parameter, [baseUrl] is the base url of your site. For example, http://me.com or https://me.com.
  String baseUrl;

  /// Parameter [consumerKey] is the consumer key provided by WooCommerce, e.g. `ck_12abc34n56j`.
  String consumerKey;

  /// Parameter [consumerSecret] is the consumer secret provided by WooCommerce, e.g. `cs_1uab8h3s3op`.
  String consumerSecret;

  /// Returns if the website is https or not based on the [baseUrl] parameter.
  bool isHttps;

  /// Parameter(Optional) [apiPath], tells the SDK if there is a different path to your api installation.
  /// Useful if the websites woocommerce api path have been modified.
  String apiPath;

  /// Parameter(Optional) [isDebug], tells the library if it should _printToLog debug logs.
  /// Useful if you are debuging or in development.
  bool isDebug;

  AnsiPen _consolePen = new AnsiPen();

  WooCommerceSdk({
    @required String baseUrl,
    @required String consumerKey,
    @required String consumerSecret,
    String apiPath = DEFAULT_WC_API_PATH,
    bool isDebug = false,
  }) {
    this.baseUrl = baseUrl;
    this.consumerKey = consumerKey;
    this.consumerSecret = consumerSecret;
    this.apiPath = apiPath;
    this.isDebug = isDebug;

    if (this.baseUrl.startsWith("https")) {
      this.isHttps = true;
    } else {
      this.isHttps = false;
    }
  }

  void _printDebug(String message) {
    if (isDebug) {
      print("WooCommerceSdk Log : " + message);
    }
  }

  Auth _authInstance;

  Auth get authInstance => _authInstance;

  set setAuth(Auth auth) => {_authInstance = auth};

  Uri queryUri;

  String get apiResourceUrl => queryUri.toString();

  // Header to be sent for JWT authorization
  Map<String, String> _urlHeader = {'Authorization': ''};

  String get urlHeader => _urlHeader['Authorization'] =
      'Bearer ' + (authInstance != null ? authInstance.access_token : '');
  LocalDatabaseService _localDbService = new LocalDatabaseService();

  /// Associated endpoint : yourwebsite.com/wp-json/api-bearer-auth/v1/auth
  Future<Auth> authenticateWithJwt({String username, String password}) async {
    final body = {
      'username': username,
      'password': password,
    };

    final response = await http.post(this.baseUrl + URL_AUTH_TOKEN,
        body: json.encode(body), headers: {'Content-Type': 'application/json'});

    if (response.statusCode >= 200 && response.statusCode < 300) {
      WCAuthResponse authResponse =
          WCAuthResponse.fromJson(json.decode(response.body));
      // checking customer capabilities
      final capabilities = authResponse.wp_user["caps"];
      if (capabilities != null && capabilities["customer"] == true) {
        this.setAuth = Auth.fromJson(authResponse.toJson());
        _localDbService.updateSecurityAccess(authInstance.access_token);
        _localDbService.updateSecurityRefresh(authInstance.refresh_token);
        _urlHeader['Authorization'] =
            'Bearer ${_localDbService.getSecurityAccess()}';
        return authInstance;
      }
      throw new WCError(
          "not_customer", "Authorized user is not a customer ", null);
    } else {
      throw new WCError.fromJson(json.decode(response.body));
    }
  }

  /// Confirm if a customer is logged in [true] or out [false].
  Future<bool> isCustomerLoggedIn() async {
    String sToken = await _localDbService.getSecurityAccess();
    if (sToken == '0') {
      return false;
    } else {
      return true;
    }
  }

  // Get the auth token from db.
  Future<Auth> getAuthInstance() async {
    // customer logged
    if (await isCustomerLoggedIn()) {
      // if auth is null
      if (authInstance == null) {
        // preparing auth refreshing payload
        final String refreshToken = await _localDbService.getSecurityRefresh();
        _printDebug('refresh token : ' + refreshToken);
        final body = {'token': await _localDbService.getSecurityRefresh()};
        // making request for refreshing auth
        final response = await http.post(this.baseUrl + URL_AUTH_TOKEN_REFRESH,
            body: json.encode(body),
            headers: {'Content-Type': 'application/json'});
        if (response.statusCode >= 200 && response.statusCode < 300) {
          this.setAuth = Auth.fromJson(json.decode(response.body));
        } else {
          logUserOut();
          // bad status
          throw new WCError.fromJson(json.decode(response.body));
        }
      }

      // customer access is expired
      if (await authInstance.isExpired) {
        // preparing auth refreshing payload
        final body = {'token': authInstance.refresh_token};
        // making request for refreshing auth
        final response = await http.post(this.baseUrl + URL_AUTH_TOKEN_REFRESH,
            body: json.encode(body),
            headers: {'Content-Type': 'application/json'});
        // status should be success
        if (response.statusCode >= 200 && response.statusCode < 300) {
          WCAuthResponse authResponse =
              WCAuthResponse.fromJson(json.decode(response.body));
          this.setAuth = Auth.fromJson(authResponse.toJson());
          // updating the security access `access_token`
          _localDbService.updateSecurityAccess(authInstance.access_token);
          _urlHeader['Authorization'] = 'Bearer ${authResponse.access_token}';
          return authInstance;
        } else {
          // bad status
          throw new WCError.fromJson(json.decode(response.body));
        }
      } else {
        return authInstance;
      }
    } else {
      _localDbService.deleteSecurityToken();
      return null;
    }
  }

  /// Fetches already authenticated user, using Jwt
  ///
  /// Associated endpoint : /wp-json/wp/v2/users/me
  Future<WCCustomer> fetchLoggedCustomer() async {
    final auth = await getAuthInstance();
    if (await isCustomerLoggedIn()) {
      WCCustomer customer;
      final id = await auth.customerId;
      _setApiResourceUrl(
        path: 'customers/' + id.toString(),
      );
      final response = await get(queryUri.toString());
      customer = WCCustomer.fromJson(response);
      return customer;
    } else {
      return null;
    }
  }

  /// Log User out
  ///
  logUserOut() async {
    this.setAuth = null;
    await _localDbService.deleteSecurityToken();
  }

  /// Creates a new Woocommerce Customer and returns the customer object.
  ///
  /// Accepts a customer object as required parameter.
  Future<bool> createCustomer(WCCustomer customer) async {
    _printDebug('Creating Customer With info : ' + customer.toString());
    _setApiResourceUrl(path: 'customers');
    final response = await post(queryUri.toString(), customer.toJson());
    _printDebug('created customer : ' + response.toString());
    final cus = WCCustomer.fromJson(response);
    if (cus is WCCustomer) {
      return true;
    } else {
      return false;
    }
    //return WCCustomer.fromJson(response);
  }

  /// Returns a list of all [WCCustomer], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customers
  Future<List<WCCustomer>> getCustomers(
      {int page,
      int perPage,
      String search,
      List<int> exclude,
      List<int> include,
      int offset,
      String order,
      String orderBy,
      //String email,
      String role}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page, 'per_page': perPage, 'search': search,
      'exclude': exclude, 'include': include, 'offset': offset,
      'order': order, 'orderby': orderBy, //'email': email,
      'role': role,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });

    List<WCCustomer> customers = [];
    _setApiResourceUrl(path: 'customers', queryParameters: payload);

    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    for (var c in response) {
      var customer = WCCustomer.fromJson(c);
      _printDebug('customers here : ' + customer.toString());
      customers.add(customer);
    }
    return customers;
  }

  /// Returns a [WCCustomer], whoose [id] is specified.
  Future<WCCustomer> getCustomerById({@required int id}) async {
    WCCustomer customer;
    _setApiResourceUrl(
      path: 'customers/' + id.toString(),
    );
    final response = await get(queryUri.toString());
    print({"response": response});
    customer = WCCustomer.fromJson(response);
    return customer;
  }

  /// Returns a list of all [WCCustomerDownload], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customers
  Future<List<WCCustomerDownload>> getCustomerDownloads(
      {@required int customerId}) async {
    List<WCCustomerDownload> customerDownloads = [];
    _setApiResourceUrl(
        path: 'customers/' + customerId.toString() + '/downloads');

    final response = await get(queryUri.toString());
    _printDebug('getting customer downloads : ' + response.toString());
    for (var d in response) {
      var download = WCCustomerDownload.fromJson(d);
      _printDebug('download gotten here : ' + download.toString());
      customerDownloads.add(download);
    }
    return customerDownloads;
  }

  /// Updates an existing Customer and returns the [WCCustomer] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customer-properties.

  Future<WCCustomer> oldUpdateCustomer(
      {@required WCCustomer wcCustomer}) async {
    _printDebug(
        'Updating customer With customerId : ' + wcCustomer.id.toString());
    _setApiResourceUrl(
      path: 'customers/' + wcCustomer.id.toString(),
    );
    final response = await put(queryUri.toString(), wcCustomer.toJson());
    return WCCustomer.fromJson(response);
  }

  Future<WCCustomer> updateCustomer({@required int id, Map data}) async {
    _printDebug('Updating customer With customerId : ' + id.toString());
    _setApiResourceUrl(
      path: 'customers/' + id.toString(),
    );
    final response = await put(queryUri.toString(), data);
    return WCCustomer.fromJson(response);
  }

  /// Deletes an existing Customer and returns the [WCCustomer] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customer-properties.

  Future<WCCustomer> deleteCustomer(
      {@required int customerId, reassign}) async {
    Map data = {
      'force': true,
    };
    if (reassign != null) data['reassign'] = reassign;
    _printDebug('Deleting customer With customerId : ' + customerId.toString());
    _setApiResourceUrl(
      path: 'customers/' + customerId.toString(),
    );
    final response = await delete(queryUri.toString(), data);
    return WCCustomer.fromJson(response);
  }

  /// Returns a list of all [WCProduct], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#products.
  Future<List<WCProduct>> getProducts(
      {int page,
      int perPage,
      String search,
      String after,
      String before,
      String order,
      String orderBy,
      String slug,
      String status,
      String type,
      String sku,
      String category,
      String tag,
      String shippingClass,
      String attribute,
      String attributeTerm,
      String taxClass,
      String minPrice,
      String maxPrice,
      String stockStatus,
      List<int> exclude,
      List<int> parentExclude,
      List<int> include,
      List<int> parent,
      int offset,
      bool featured,
      bool onSale}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'after': after,
      'before': before,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'parent': parent,
      'parent_exclude': parentExclude,
      'slug': slug,
      'status': status,
      'type': type,
      'sku': sku,
      'featured': featured,
      'category': category,
      'tag': tag,
      'shipping_class': shippingClass,
      'attribute': attribute,
      'attribute_term': attributeTerm,
      'tax_class': taxClass,
      'on_sale': onSale,
      'min_price': minPrice,
      'max_price': maxPrice,
      'stock_status': stockStatus,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });

    _printDebug("Parameters: " + payload.toString());
    List<WCProduct> products = [];
    _setApiResourceUrl(path: 'products', queryParameters: payload);
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    _printDebug('this is the queri uri : ' + queryUri.toString());
    for (var p in response) {
      var prod = WCProduct.fromJson(p);
      _printDebug('product gotten here : ' + prod.name.toString());
      products.add(prod);
    }
    return products;
  }

  /// Returns a [WCProduct], with the specified [id].
  Future<WCProduct> getProductById({@required int id}) async {
    WCProduct product;
    _setApiResourceUrl(
      path: 'products/' + id.toString(),
    );
    final response = await get(queryUri.toString());
    product = WCProduct.fromJson(response);
    return product;
  }

  /// Returns a list of all [WCProductVariation], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-variations
  Future<List<WCProductVariation>> getProductVariations(
      {@required int productId,
      int page,
      int perPage,
      String search,
      String after,
      String before,
      List<int> exclude,
      List<int> include,
      int offset,
      String order,
      String orderBy,
      List<int> parent,
      List<int> parentExclude,
      String slug,
      String status,
      String sku,
      String taxClass,
      bool onSale,
      String minPrice,
      String maxPrice,
      String stockStatus}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'after': after,
      'before': before,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'parent': parent,
      'parent_exclude': parentExclude,
      'slug': slug,
      'status': status,
      'sku': sku,
      'tax_class': taxClass,
      'on_sale': onSale,
      'min_price': minPrice,
      'max_price': maxPrice,
      'stock_status': stockStatus,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });
    List<WCProductVariation> productVariations = [];
    _setApiResourceUrl(
        path: 'products/' + productId.toString() + '/variations',
        queryParameters: payload);
    _printDebug('this is the curent path : ' + this.apiPath);
    final response = await get(queryUri.toString());
    for (var v in response) {
      var prodv = WCProductVariation.fromJson(v);
      _printDebug('prod gotten here : ' + prodv.toString());
      productVariations.add(prodv);
    }
    return productVariations;
  }

  /// Returns a [WCProductVariation], with the specified [productId] and [variationId].

  Future<WCProductVariation> getProductVariationById(
      {@required int productId, variationId}) async {
    WCProductVariation productVariation;
    _setApiResourceUrl(
      path: 'products/' +
          productId.toString() +
          '/variations/' +
          variationId.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());

    productVariation = WCProductVariation.fromJson(response);
    return productVariation;
  }

  /// Returns a list of all [WCProductAttribute].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-attributes

  Future<List<WCProductAttribute>> getProductAttributes() async {
    List<WCProductAttribute> productAttributes = [];
    _setApiResourceUrl(
      path: 'products/attributes',
    );
    final response = await get(queryUri.toString());
    for (var a in response) {
      var att = WCProductAttribute.fromJson(a);
      _printDebug('prod gotten here : ' + att.toString());
      productAttributes.add(att);
    }
    return productAttributes;
  }

  /// Returns a [WCProductAttribute], with the specified [attributeId].

  Future<WCProductAttribute> getProductAttributeById(
      {@required int attributeId}) async {
    WCProductAttribute productAttribute;
    _setApiResourceUrl(
      path: 'products/attributes/' + attributeId.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());

    productAttribute = WCProductAttribute.fromJson(response);
    return productAttribute;
  }

  /// Returns a list of all [WCProductAttributeTerm], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-attribute-terms
  Future<List<WCProductAttributeTerm>> getProductAttributeTerms(
      {@required int attributeId,
      int page,
      int perPage,
      String search,
      List<int> exclude,
      List<int> include,
      String order,
      String orderBy,
      bool hideEmpty,
      int parent,
      int product,
      String slug}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'exclude': exclude,
      'include': include,
      'order': order,
      'orderby': orderBy,
      'hide_empty': hideEmpty,
      'parent': parent,
      'product': product,
      'slug': slug,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });
    List<WCProductAttributeTerm> productAttributeTerms = [];
    _setApiResourceUrl(
        path: 'products/attributes/' + attributeId.toString() + '/terms',
        queryParameters: payload);
    final response = await get(queryUri.toString());
    for (var t in response) {
      var term = WCProductAttributeTerm.fromJson(t);
      _printDebug('term gotten here : ' + term.toString());
      productAttributeTerms.add(term);
    }
    return productAttributeTerms;
  }

  /// Returns a [WCProductAttributeTerm], with the specified [attributeId] and [termId].

  Future<WCProductAttributeTerm> getProductAttributeTermById(
      {@required int attributeId, termId}) async {
    WCProductAttributeTerm productAttributeTerm;
    _setApiResourceUrl(
      path: 'products/attributes/' +
          attributeId.toString() +
          '/terms/' +
          termId.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());

    productAttributeTerm = WCProductAttributeTerm.fromJson(response);
    return productAttributeTerm;
  }

  /// Returns a list of all [WCProductCategory], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-categories

  Future<List<WCProductCategory>> getProductCategories(
      {int page,
      int perPage,
      String search,
      //List<int> exclude,
      //List<int> include,
      String order,
      String orderBy,
      bool hideEmpty,
      int parent,
      int product,
      String slug}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page, 'per_page': perPage, 'search': search,
      //'exclude': exclude, 'include': include,
      'order': order, 'orderby': orderBy, 'hide_empty': hideEmpty,
      'parent': parent,
      'product': product, 'slug': slug,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });

    List<WCProductCategory> productCategories = [];
    _printDebug('payload : ' + payload.toString());
    _setApiResourceUrl(path: 'products/categories', queryParameters: payload);
    _printDebug('this is the path : ' + this.apiPath);
    final response = await get(queryUri.toString());
    for (var c in response) {
      var cat = WCProductCategory.fromJson(c);
      _printDebug('category gotten here : ' + cat.toString());
      productCategories.add(cat);
    }
    return productCategories;
  }

  /// Returns a [WCProductCategory], with the specified [categoryId].

  Future<WCProductCategory> getProductCategoryById(
      {@required int categoryId}) async {
    WCProductCategory productCategory;
    _setApiResourceUrl(
      path: 'products/categories/' + categoryId.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    productCategory = WCProductCategory.fromJson(response);
    return productCategory;
  }

  /// Returns a list of all [WCProductShippingClass], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-shipping-classes
  Future<List<WCProductShippingClass>> getProductShippingClasses(
      {int page,
      int perPage,
      String search,
      List<int> exclude,
      List<int> include,
      int offset,
      String order,
      String orderBy,
      bool hideEmpty,
      int product,
      String slug}) async {
    Map<String, dynamic> payload = {};
    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'hide_empty': hideEmpty,
      'product': product,
      'slug': slug,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });
    List<WCProductShippingClass> productShippingClasses = [];
    _setApiResourceUrl(
      path: 'products/shipping_classes',
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    for (var c in response) {
      var sClass = WCProductShippingClass.fromJson(c);
      _printDebug('prod gotten here : ' + sClass.toString());
      productShippingClasses.add(sClass);
    }
    return productShippingClasses;
  }

  /// Returns a [WCProductShippingClass], with the specified [id].

  Future<WCProductShippingClass> getProductShippingClassById(
      {@required int id}) async {
    WCProductShippingClass productShippingClass;
    _setApiResourceUrl(
      path: 'products/shipping_classes/' + id.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    productShippingClass = WCProductShippingClass.fromJson(response);
    return productShippingClass;
  }

  /// Returns a list of all [ProductTag], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-tags
  Future<List<WCProductTag>> getProductTags(
      {int page,
      int perPage,
      String search,
      //List<int> exclude,
      //List<int> include,
      int offset,
      String order,
      String orderBy,
      bool hideEmpty,
      int product,
      String slug}) async {
    Map<String, dynamic> payload = {};
    ({
      'page': page, 'per_page': perPage, 'search': search,
      // 'exclude': exclude, 'include': include,
      'offset': offset,
      'order': order, 'orderby': orderBy, 'hide_empty': hideEmpty,
      'product': product, 'slug': slug,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });
    List<WCProductTag> productTags = [];
    _printDebug('making request with payload : ' + payload.toString());
    _setApiResourceUrl(path: 'products/tags', queryParameters: payload);
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    for (var c in response) {
      var tag = WCProductTag.fromJson(c);
      _printDebug('prod gotten here : ' + tag.toString());
      productTags.add(tag);
    }
    return productTags;
  }

  /// Returns a [WCProductTag], with the specified [id].

  Future<WCProductTag> getProductTagById({@required int id}) async {
    WCProductTag productTag;
    _setApiResourceUrl(
      path: 'products/tags/' + id.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    productTag = WCProductTag.fromJson(response);
    return productTag;
  }

  /// Returns a  [WCProductReview] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews
  Future<WCProductReview> createProductReview(
      {@required int productId,
      int status,
      @required String reviewer,
      @required String reviewerEmail,
      @required String review,
      int rating,
      bool verified}) async {
    Map<String, dynamic> payload = {};

    ({
      'product_id': productId,
      'status': status,
      'reviewer': reviewer,
      'reviewer_email': reviewerEmail,
      'review': review,
      'rating': rating,
      'verified': verified,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });

    WCProductReview productReview;
    _setApiResourceUrl(
      path: 'products/reviews',
    );
    final response = await post(queryUri.toString(), payload);
    _printDebug('response gotten : ' + response.toString());
    productReview = WCProductReview.fromJson(response);
    return productReview;
  }

  /// Returns a list of all [WCProductReview], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews
  Future<List<WCProductReview>> getProductReviews(
      {int page,
      int perPage,
      String search,
      String after,
      String before,
      //List<int> exclude,
      //List<int> include,
      int offset,
      String order,
      String orderBy,
      List<int> reviewer,
      //List<int> reviewerExclude,
      //List<String> reviewerEmail,
      List<int> product,
      String status}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page, 'per_page': perPage, 'search': search,
      'after': after, 'before': before,
      //'exclude': exclude, 'include': include,
      'offset': offset,
      'order': order, 'orderby': orderBy,
      'reviewer': reviewer,
      //'reviewer_exclude': reviewerExclude, 'reviewer_email': reviewerEmail,
      'product': product,
      'status': status,
    }).forEach((k, v) {
      if (v != null) payload[k] = v;
    });
    String meQueryPath = 'products/reviews' + getQueryString(payload);
    List<WCProductReview> productReviews = [];
    //_setApiResourceUrl(path: 'products/reviews', queryParameters: payload);
    final response = await get(meQueryPath);
    _printDebug('response gotten : ' + response.toString());
    for (var r in response) {
      var rev = WCProductReview.fromJson(r);
      _printDebug('reviews gotten here : ' + rev.toString());
      productReviews.add(rev);
    }
    return productReviews;
  }

  /// Returns a [WCProductReview], with the specified [reviewId].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews

  Future<WCProductReview> getProductReviewById({@required int reviewId}) async {
    WCProductReview productReview;
    _setApiResourceUrl(
      path: 'products/reviews/' + reviewId.toString(),
    );
    final response = await get(queryUri.toString());
    _printDebug('response gotten : ' + response.toString());
    productReview = WCProductReview.fromJson(response);
    return productReview;
  }

  /// Updates an existing Product Review and returns the [WCProductReview] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews

  Future<WCProductReview> updateProductReview(
      {@required WCProductReview productReview}) async {
    _printDebug('Updating product review With reviewId : ' +
        productReview.id.toString());
    _setApiResourceUrl(
      path: 'products/reviews/' + productReview.id.toString(),
    );
    final response = await put(queryUri.toString(), productReview.toJson());
    return WCProductReview.fromJson(response);
  }

  /// Deletes an existing Product Review and returns the [WCProductReview] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews

  Future<WCProductReview> deleteProductReview({@required int reviewId}) async {
    Map data = {
      'force': true,
    };
    _printDebug(
        'Deleting product review With reviewId : ' + reviewId.toString());
    _setApiResourceUrl(
      path: 'products/review/' + reviewId.toString(),
    );
    final response = await delete(queryUri.toString(), data);
    return WCProductReview.fromJson(response);
  }

  /**
      /// Accepts an int [id] of a product or product variation, int quantity, and an array of chosen variation attribute objects
      /// Related endpoint : wc/store/cart
      Future<WCCartItem>addToCart({@required int itemId, @required int quantity, List<WCProductVariation> variations}) async{
      Map<String, dynamic> data = {
      'id': itemId,
      'quantity' : quantity,
      };
      if(variations!=null) data['variations'] = variations;
      _setApiResourceUrl(path: 'cart/items', isShop: true);
      final response = await post(queryUri.toString(), data,);
      return WCCartItem.fromJson(response);
      }
   */

  /// Accepts an int [id] of a product or product variation, int quantity, and an array of chosen variation attribute objects
  /// Related endpoint : wc/store/cart
  ///
  Future<WCCartItem> addToMyCart(
      {@required String itemId,
      @required String quantity,
      List<WCProductVariation> variations}) async {
    Map<String, dynamic> data = {
      'id': itemId,
      'quantity': quantity,
    };
    if (variations != null) data['variations'] = variations;
    await getAuthInstance();
    if (authInstance != null) {
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;
      final response = await http.post(
        this.baseUrl + URL_STORE_API_PATH + 'cart/items',
        headers: {
          'Content-Type': 'application/json',
          ..._urlHeader,
        },
        body: json.encode(data),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonStr = json.decode(response.body);

        _printDebug('added to my cart : ' + jsonStr.toString());
        return WCCartItem.fromJson(jsonStr);
      } else {
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  /// Returns a list of all [WCCartItem].
  ///
  /// Related endpoint : wc/store/cart/items

  Future<List<WCCartItem>> getMyCartItems() async {
    await getAuthInstance();
    if (authInstance != null) {
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;
      final response = await http.get(
          this.baseUrl + URL_STORE_API_PATH + 'cart/items',
          headers: _urlHeader);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonStr = json.decode(response.body);
        List<WCCartItem> cartItems = [];
        _printDebug('response gotten : ' + response.body.toString());
        for (var p in jsonStr) {
          var prod = WCCartItem.fromJson(p);
          _printDebug('prod gotten here : ' + prod.name.toString());
          cartItems.add(prod);
        }

        _printDebug('account user fetch : ' + jsonStr.toString());
        return cartItems;
      } else {
        _printDebug(' error : ' + response.body);
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  /// Returns the current user's [WCCart], information

  Future<WCCart> getMyCart() async {
    await getAuthInstance();
    if (authInstance != null) {
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;
      WCCart cart;
      final response = await http
          .get(this.baseUrl + URL_STORE_API_PATH + 'cart', headers: _urlHeader);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonStr = json.decode(response.body);
        cart = WCCart.fromJson(jsonStr);
        return cart;
      } else {
        _printDebug(' error : ' + response.body);
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  Future deleteMyCartItem({@required String key}) async {
    await getAuthInstance();
    if (authInstance != null) {
      Map<String, dynamic> data = {
        'key': key,
      };
      _printDebug('Deleting CartItem With Payload : ' + data.toString());
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;

      final http.Response response = await http.delete(
        this.baseUrl + URL_STORE_API_PATH + 'cart/items/' + key,
        headers: _urlHeader,
      );
      _printDebug('response of delete cart  : ' + response.body.toString());

      if (response.statusCode >= 200 && response.statusCode < 300) {
        _printDebug(
            'response of delete cart oooo   : ' + response.body.toString());
        //final jsonStr = json.decode(response.body);

        //_printToLog('added to my cart : '+jsonStr.toString());
        //return WCCartItem.fromJson(jsonStr);
        return response.body;
      } else {
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  Future deleteAllMyCartItems() async {
    await getAuthInstance();
    if (authInstance != null) {
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;

      final http.Response response = await http.delete(
        this.baseUrl + URL_STORE_API_PATH + 'cart/items/',
        headers: _urlHeader,
      );

      _printDebug('response of delete cart  : ' + response.body.toString());

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return response.body;
      } else {
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  /// Returns a [WCCartItem], with the specified [key].

  Future<WCCartItem> getMyCartItemByKey(String key) async {
    await getAuthInstance();
    if (authInstance != null) {
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;
      WCCartItem cartItem;
      final response = await http.get(
          this.baseUrl + URL_STORE_API_PATH + 'cart/items/' + key,
          headers: _urlHeader);

      _printDebug('response gotten : ' + response.body.toString());
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonStr = json.decode(response.body);
        cartItem = WCCartItem.fromJson(jsonStr);
        return cartItem;
      } else {
        _printDebug('error : ' + response.body);
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  Future<WCCartItem> updateMyCartItemByKey(
      {@required String key,
      @required int id,
      @required int quantity,
      List<WCProductVariation> variations}) async {
    Map<String, dynamic> data = {
      'key': key,
      'id': id.toString(),
      'quantity': quantity.toString(),
    };
    if (variations != null) data['variations'] = variations;
    await getAuthInstance();
    if (authInstance != null) {
      _urlHeader['Authorization'] = 'Bearer ' + authInstance.access_token;
      final response = await http.put(
          this.baseUrl + URL_STORE_API_PATH + 'cart/items/' + key,
          headers: _urlHeader,
          body: data);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonStr = json.decode(response.body);

        _printDebug('update to my cart : ' + jsonStr.toString());
        return WCCartItem.fromJson(jsonStr);
      } else {
        WCError err = WCError.fromJson(json.decode(response.body));
        throw err;
      }
    } else {
      return null;
    }
  }

  /// Creates an order and returns the [WCOrder] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.
  Future<WCOrder> createOrder(WCOrderPayload orderPayload) async {
    await getAuthInstance();
    if (authInstance != null) {
      _printDebug('Creating Order With Payload : ' + orderPayload.toString());
      _setApiResourceUrl(
        path: 'orders',
      );
      final response = await post(queryUri.toString(), orderPayload.toJson());
      return WCOrder.fromJson(response);
    } else {
      return null;
    }
  }

  /// Returns a list of all [Order], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders
  Future<List<WCOrder>> getOrders(
      {int page,
      int perPage,
      String search,
      String after,
      String before,
      List<int> exclude,
      List<int> include,
      int offset,
      String order,
      String orderBy,
      List<int> parent,
      List<int> parentExclude,
      List<String>
          status, // Options: any, pending, processing, on-hold, completed, cancelled, refunded, failed and trash. Default is any.
      int customer,
      int product,
      int dp}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'after': after,
      'before': before,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'parent': parent,
      'parent_exclude': parentExclude,
      'status': status,
      'customer': customer,
      'product': product,
      'dp': dp,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });
    await getAuthInstance();
    if (authInstance != null) {
      List<WCOrder> orders = [];
      _printDebug('Getting Order With Payload : ' + payload.toString());
      _setApiResourceUrl(path: 'orders', queryParameters: payload);
      final response = await get(queryUri.toString());
      for (var o in response) {
        var order = WCOrder.fromJson(o);
        _printDebug('order gotten here : ' + order.toString());
        orders.add(order);
      }
      return orders;
    } else {
      return null;
    }
  }

  /// Returns a [WCOrder] object that matches the provided [id].

  Future<WCOrder> getOrderById(int id, {String dp}) async {
    if (authInstance != null) {
      Map<String, dynamic> payload = {};
      if (dp != null) payload["dp"] = dp;
      _setApiResourceUrl(
          path: 'orders/' + id.toString(), queryParameters: payload);
      final response = await get(queryUri.toString());
      return WCOrder.fromJson(response);
    } else {
      return null;
    }
  }

  /// Updates an existing order and returns the [WCOrder] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WCOrder> updateOrder(WCOrder order) async {
    if (authInstance != null) {
      _printDebug('Updating Order With Payload : ' + order.toString());
      _setApiResourceUrl(
        path: 'orders/' + order.id.toString(),
      );
      final response = await put(queryUri.toString(), order.toJson());
      return WCOrder.fromJson(response);
    } else {
      return null;
    }
  }

  /// Deletes an existing order and returns the [WCOrder] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WCOrder> deleteOrder({@required int orderId}) async {
    Map data = {
      'force': true,
    };
    if (authInstance != null) {
      _printDebug('Deleting Order With Id : ' + orderId.toString());
      _setApiResourceUrl(
        path: 'orders/' + orderId.toString(),
      );
      final response = await delete(queryUri.toString(), data);
      return WCOrder.fromJson(response);
    } else {
      return null;
    }
  }

  /// Creates an coupon and returns the [WCCoupon] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#coupons.
  Future<WCCoupon> createCoupon({
    String code,
    String discountType,
    String amount,
    bool individualUse,
    bool excludeSaleItems,
    String minimumAmount,
  }) async {
    if (authInstance != null) {
      Map<String, dynamic> payload = {};

      ({
        'code': code,
        'discount_type': discountType,
        'amount': amount,
        'individual_use': individualUse,
        'exclude_sale_items': excludeSaleItems,
        'minimum_amount': minimumAmount,
      }).forEach((k, v) {
        if (v != null) payload[k] = v.toString();
      });
      WCCoupon coupon;
      _setApiResourceUrl(
        path: 'coupons',
      );
      final response = await post(queryUri.toString(), payload);
      _printDebug('response gotten : ' + response.toString());
      coupon = WCCoupon.fromJson(response);
      return coupon;
    } else {
      return null;
    }
  }

  /// Returns a list of all [WCCoupon], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#coupons
  Future<List<WCCoupon>> getCoupons({
    int page,
    int perPage,
    String search,
    String after,
    String before,
    //List<int> exclude,
    //List<int> include,
    int offset,
    String order,
    String orderBy,
    String code,
  }) async {
    if (authInstance != null) {
      Map<String, dynamic> payload = {};
      ({
        'page': page, 'per_page': perPage, 'search': search,
        'after': after, 'before': before,
        //'exclude': exclude, 'include': include,
        'offset': offset,
        'order': order, 'orderby': orderBy, 'code': code,
      }).forEach((k, v) {
        if (v != null) payload[k] = v.toString();
      });
      List<WCCoupon> coupons;
      _printDebug('Getting Coupons With Payload : ' + payload.toString());
      _setApiResourceUrl(path: 'coupons', queryParameters: payload);
      final response = await get(queryUri.toString());
      for (var c in response) {
        var coupon = WCCoupon.fromJson(c);
        _printDebug('prod gotten here : ' + order.toString());
        coupons.add(coupon);
      }
      return coupons;
    } else {
      return null;
    }
  }

  /// Returns a [WCCoupon] object with the specified [id].
  Future<WCCoupon> getCouponById(int id) async {
    if (authInstance != null) {
      _setApiResourceUrl(path: 'coupons/' + id.toString());
      final response = await get(queryUri.toString());
      return WCCoupon.fromJson(response);
    } else {
      return null;
    }
  }

  /// Returns a list of all [WCTaxRate], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#tax-rates.
  Future<List<WCTaxRate>> getTaxRates(
      {int page,
      int perPage,
      int offset,
      String order,
      String orderBy,
      String taxClass}) async {
    Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'class': taxClass,
    }).forEach((k, v) {
      if (v != null) payload[k] = v.toString();
    });
    List<WCTaxRate> taxRates = [];
    _printDebug('Getting Taxrates With Payload : ' + payload.toString());
    _setApiResourceUrl(path: 'taxes', queryParameters: payload);
    final response = await get(queryUri.toString());
    for (var t in response) {
      var tax = WCTaxRate.fromJson(t);
      _printDebug('prod gotten here : ' + order.toString());
      taxRates.add(tax);
    }
    return taxRates;
  }

  /// Returns a [WCTaxRate] object matching the specified [id].

  Future<WCTaxRate> getTaxRateById(int id) async {
    _setApiResourceUrl(path: 'taxes/' + id.toString());
    final response = await get(queryUri.toString());
    return WCTaxRate.fromJson(response);
  }

  /// Returns a list of all [WCTaxClass].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#tax-classes.
  Future<List<WCTaxClass>> getTaxClasses() async {
    List<WCTaxClass> taxClasses = [];
    _setApiResourceUrl(path: 'taxes/classes');
    final response = await get(queryUri.toString());
    for (var t in response) {
      var tClass = WCTaxClass.fromJson(t);
      _printDebug('tax class gotten here : ' + tClass.toString());
      taxClasses.add(tClass);
    }
    return taxClasses;
  }

  /// Returns a list of all [WCShippingZone].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-zones.
  Future<List<WCShippingZone>> getShippingZones() async {
    List<WCShippingZone> shippingZones = [];
    _setApiResourceUrl(path: 'shipping/zones');
    final response = await get(queryUri.toString());
    for (var z in response) {
      var sZone = WCShippingZone.fromJson(z);
      _printDebug('shipping zones gotten here : ' + sZone.toString());
      shippingZones.add(sZone);
    }
    return shippingZones;
  }

  /// Returns a [WCShippingZone] object with the specified [id].

  Future<WCShippingZone> getShippingZoneById(int id) async {
    WCShippingZone shippingZone;
    _setApiResourceUrl(path: 'shipping/zones/' + id.toString());
    final response = await get(queryUri.toString());
    shippingZone = WCShippingZone.fromJson(response);
    return shippingZone;
  }

  /// Returns a list of all [WCShippingMethod].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-methods.
  Future<List<WCShippingMethod>> getShippingMethods() async {
    List<WCShippingMethod> shippingMethods = [];
    _setApiResourceUrl(path: 'shipping_methods');
    final response = await get(queryUri.toString());
    for (var z in response) {
      var sMethod = WCShippingMethod.fromJson(z);
      _printDebug('shipping methods gotten here : ' + sMethod.toString());
      shippingMethods.add(sMethod);
    }
    return shippingMethods;
  }

  /// Returns a [WCShippingMethod] object with the specified [id].

  Future<WCShippingMethod> getShippingMethodById(int id) async {
    WCShippingMethod shippingMethod;
    _setApiResourceUrl(path: 'shipping_methods/' + id.toString());
    final response = await get(queryUri.toString());
    shippingMethod = WCShippingMethod.fromJson(response);
    return shippingMethod;
  }

  /// Returns a list of all [WCShippingZoneMethod] associated with a shipping zone.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-zone-locations.
  Future<List<WCShippingZoneMethod>> getAllShippingZoneMethods(
      {@required int shippingZoneId}) async {
    List<WCShippingZoneMethod> shippingZoneMethods = [];
    _setApiResourceUrl(
        path: 'shipping/zones/' + shippingZoneId.toString() + '/methods');
    final response = await get(queryUri.toString());
    for (var l in response) {
      var sMethod = WCShippingZoneMethod.fromJson(l);
      _printDebug(
          'shipping zone locations gotten here : ' + sMethod.toString());
      shippingZoneMethods.add(sMethod);
    }
    return shippingZoneMethods;
  }

  /// Returns a [WCShippingZoneMethod] object from the specified [zoneId] and [methodId].

  Future<WCShippingZoneMethod> getAShippingMethodFromZone(
      {@required int zoneId, @required int methodId}) async {
    WCShippingZoneMethod shippingZoneMethod;
    _setApiResourceUrl(
        path: 'shipping/zones/' +
            zoneId.toString() +
            'methods/' +
            methodId.toString());
    final response = await get(queryUri.toString());
    shippingZoneMethod = WCShippingZoneMethod.fromJson(response);
    return shippingZoneMethod;
  }

  /// Deletes an existing shipping zone method and returns the [WCShippingZoneMethod] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WCShippingZoneMethod> deleteShippingZoneMethod(
      {@required int zoneId, @required int methodId}) async {
    Map data = {
      'force': true,
    };
    _printDebug(
        'Deleting shipping zone method with zoneId : ' + zoneId.toString());
    _setApiResourceUrl(
        path: 'shipping/zones/' +
            zoneId.toString() +
            'methods/' +
            methodId.toString());
    final response = await delete(queryUri.toString(), data);
    return WCShippingZoneMethod.fromJson(response);
  }

  /// Returns a list of all [WCShippingZoneLocation].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-zone-locations.
  Future<List<WCShippingZoneLocation>> getShippingZoneLocations(
      {@required int shippingZoneId}) async {
    List<WCShippingZoneLocation> shippingZoneLocations = [];
    _setApiResourceUrl(
        path: 'shipping/zones/' + shippingZoneId.toString() + '/locations');
    final response = await get(queryUri.toString());
    for (var l in response) {
      var sZoneLocation = WCShippingZoneLocation.fromJson(l);
      _printDebug(
          'shipping zone locations gotten here : ' + sZoneLocation.toString());
      shippingZoneLocations.add(sZoneLocation);
    }
    return shippingZoneLocations;
  }

  /// Returns a list of all [WCPaymentGateway] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#list-all-payment-gateways.
  Future<List<WCPaymentGateway>> getPaymentGateways() async {
    List<WCPaymentGateway> gateways = [];
    _setApiResourceUrl(path: 'payment_gateways');
    final response = await get(queryUri.toString());
    for (var g in response) {
      var sMethod = WCPaymentGateway.fromJson(g);
      _printDebug(
          'shipping zone locations gotten here : ' + sMethod.toString());
      gateways.add(sMethod);
    }
    return gateways;
  }

  /// Returns a [WCPaymentGateway] object from the specified [id].

  Future<WCPaymentGateway> getPaymentGatewayById(int id) async {
    WCPaymentGateway paymentGateway;
    _setApiResourceUrl(path: 'payment_gateways/' + id.toString());
    final response = await get(queryUri.toString());
    paymentGateway = WCPaymentGateway.fromJson(response);
    return paymentGateway;
  }

  /// Updates an existing order and returns the [WCPaymentGateway] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WCPaymentGateway> updatePaymentGateway(
      WCPaymentGateway gateway) async {
    _printDebug(
        'Updating Payment Gateway With Payload : ' + gateway.toString());
    _setApiResourceUrl(
      path: 'payment_gateways/' + gateway.id,
    );
    final response = await put(queryUri.toString(), gateway.toJson());
    return WCPaymentGateway.fromJson(response);
  }

  /// This Generates a valid OAuth 1.0 URL
  ///
  /// if [isHttps] is true we just return the URL with
  /// [consumerKey] and [consumerSecret] as query parameters
  String _getOAuthURL(String requestMethod, String endpoint) {
    String consumerKey = this.consumerKey;
    String consumerSecret = this.consumerSecret;

    String token = "";
    _printDebug('oauth token = : ' + token);
    String url = this.baseUrl + apiPath + endpoint;
    bool containsQueryParams = url.contains("?");

    if (this.isHttps == true) {
      return url +
          (containsQueryParams == true
              ? "&consumer_key=" +
                  this.consumerKey +
                  "&consumer_secret=" +
                  this.consumerSecret
              : "?consumer_key=" +
                  this.consumerKey +
                  "&consumer_secret=" +
                  this.consumerSecret);
    }

    Random rand = Random();
    List<int> codeUnits = List.generate(10, (index) {
      return rand.nextInt(26) + 97;
    });

    /// Random string uniquely generated to identify each signed request
    String nonce = String.fromCharCodes(codeUnits);

    /// The timestamp allows the Service Provider to only keep nonce values for a limited time
    int timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    String parameters = "oauth_consumer_key=" +
        consumerKey +
        "&oauth_nonce=" +
        nonce +
        "&oauth_signature_method=HMAC-SHA1&oauth_timestamp=" +
        timestamp.toString() +
        "&oauth_token=" +
        token +
        "&oauth_version=1.0&";

    if (containsQueryParams == true) {
      parameters = parameters + url.split("?")[1];
    } else {
      parameters = parameters.substring(0, parameters.length - 1);
    }

    Map<dynamic, dynamic> params = QueryString.parse(parameters);
    Map<dynamic, dynamic> treeMap = new SplayTreeMap<dynamic, dynamic>();
    treeMap.addAll(params);

    String parameterString = "";

    for (var key in treeMap.keys) {
      parameterString = parameterString +
          Uri.encodeQueryComponent(key) +
          "=" +
          treeMap[key] +
          "&";
    }

    parameterString = parameterString.substring(0, parameterString.length - 1);

    String method = requestMethod;
    String baseString = method +
        "&" +
        Uri.encodeQueryComponent(
            containsQueryParams == true ? url.split("?")[0] : url) +
        "&" +
        Uri.encodeQueryComponent(parameterString);

    String signingKey = consumerSecret + "&" + token;
    crypto.Hmac hmacSha1 =
        crypto.Hmac(crypto.sha1, utf8.encode(signingKey)); // HMAC-SHA1

    /// The Signature is used by the server to verify the
    /// authenticity of the request and prevent unauthorized access.
    /// Here we use HMAC-SHA1 method.
    crypto.Digest signature = hmacSha1.convert(utf8.encode(baseString));

    String finalSignature = base64Encode(signature.bytes);

    String requestUrl = "";

    if (containsQueryParams == true) {
      requestUrl = url.split("?")[0] +
          "?" +
          parameterString +
          "&oauth_signature=" +
          Uri.encodeQueryComponent(finalSignature);
    } else {
      requestUrl = url +
          "?" +
          parameterString +
          "&oauth_signature=" +
          Uri.encodeQueryComponent(finalSignature);
    }

    return requestUrl;
  }

  _handleError(dynamic response) {
    if (response['message'] == null) {
      return response;
    } else {
      throw Exception(WCError.fromJson(response).toString());
    }
  }

  Exception _handleHttpError(http.Response response) {
    switch (response.statusCode) {
      case 400:
      case 401:
      case 404:
      case 500:
        throw Exception(
            WCError.fromJson(json.decode(response.body)).toString());
      default:
        throw Exception(
            "An error occurred, status code: ${response.statusCode}");
    }
  }

  // Sets the Uri for an endpoint.
  Future<String> _setApiResourceUrl({
    @required String path,
    String host,
    port,
    queryParameters,
    bool isShop = false,
  }) async {
    this.apiPath = DEFAULT_WC_API_PATH;
    if (isShop) {
      this.apiPath = URL_STORE_API_PATH;
    } else {
      this.apiPath = DEFAULT_WC_API_PATH;
    }
    queryUri = new Uri(
        path: path, queryParameters: queryParameters, port: port, host: host);
    _printDebug('Query : ' + queryUri.toString());

    return queryUri.toString();
  }

  String getQueryString(Map params,
      {String prefix: '&', bool inRecursion: false}) {
    String query = '';

    params.forEach((key, value) {
      if (inRecursion) {
        key = '[$key]';
      }

      //if (value is String || value is int || value is double || value is bool) {
      query += '$prefix$key=$value';
      //} else if (value is List || value is Map) {
      // if (value is List) value = value.asMap();
      // value.forEach((k, v) {
      //  query += getQueryString({k: v}, prefix: '$prefix$key', inRecursion: true);
      //});
      // }
    });

    return query;
  }

  /// Make a custom get request to a Woocommerce endpoint, using WooCommerce SDK.

  Future<dynamic> get(String endPoint) async {
    String url = this._getOAuthURL("GET", endPoint);
    String _token = await _localDbService.getSecurityAccess();
    String _bearerToken = "Bearer $_token";
    Map<String, String> headers = new HashMap();
    headers.putIfAbsent('Accept', () => 'application/json charset=utf-8');
    headers.putIfAbsent('Authorization', () => _bearerToken);
    try {
      final http.Response response = await http.get(url, headers: headers);
      _printDebug(
          '${response.request.method.toString()} request -> ${response.request.url.toString()}');
      _printDebug('request headers:${response.request.headers.toString()}');
      _printDebug(
          'response status:${response.statusCode.toString()} data:${response.body.toString()}');
      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
      _handleHttpError(response);
    } on SocketException {
      throw Exception('No Internet connection.');
    }
  }

  Future<dynamic> oldget(String endPoint) async {
    String url = this._getOAuthURL("GET", endPoint);

    http.Client client = http.Client();
    http.Request request = http.Request('GET', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
    'application/json; charset=utf-8';
    //request.headers[HttpHeaders.authorizationHeader] = _token;
    request.headers[HttpHeaders.cacheControlHeader] = "no-cache";
    String response =
    await client.send(request).then((res) => res.stream.bytesToString());
    var dataResponse = await json.decode(response);
    _printDebug(
        '${request.method.toString()} request -> ${request.url.toString()}');
    _printDebug('request headers:${request.headers.toString()}}');
    _printDebug('response ${response.toString()}');
    _handleError(dataResponse);
    return dataResponse;
  }

  /// Make a custom post request to Woocommerce, using WooCommerce SDK.

  Future<dynamic> post(
    String endPoint,
    Map data,
  ) async {
    String url = this._getOAuthURL("POST", endPoint);

    http.Client client = http.Client();
    http.Request request = http.Request('POST', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
    'application/json; charset=utf-8';
    //request.headers[HttpHeaders.authorizationHeader] = _bearerToken;
    request.headers[HttpHeaders.cacheControlHeader] = "no-cache";
    request.body = json.encode(data);
    String response =
    await client.send(request).then((res) => res.stream.bytesToString());
    var dataResponse = await json.decode(response);

    _printDebug('request headers:${request.headers.toString()}}');
    _printDebug('response ${response.toString()}');
    _handleError(dataResponse);
    return dataResponse;
  }

  /// Make a custom put request to Woocommerce, using WooCommerce SDK.

  Future<dynamic> put(String endPoint, Map data) async {
    String url = this._getOAuthURL("PUT", endPoint);

    http.Client client = http.Client();
    http.Request request = http.Request('PUT', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
    'application/json; charset=utf-8';
    request.headers[HttpHeaders.cacheControlHeader] = "no-cache";
    request.body = json.encode(data);
    String response =
    await client.send(request).then((res) => res.stream.bytesToString());
    var dataResponse = await json.decode(response);

    _printDebug('request headers:${request.headers.toString()}}');
    _printDebug('response ${response.toString()}');
    _handleError(dataResponse);
    return dataResponse;
  }

  /// Make a custom delete request to Woocommerce, using WooCommerce SDK.

  Future<dynamic> Oldelete(String endPoint, Map data) async {
    String url = this._getOAuthURL("DELETE", endPoint);

    http.Client client = http.Client();
    http.Request request = http.Request('DELETE', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
    'application/json; charset=utf-8';
    //request.headers[HttpHeaders.authorizationHeader] = _urlHeader['Authorization'];
    request.headers[HttpHeaders.cacheControlHeader] = "no-cache";
    request.body = json.encode(data);
    final response =
    await client.send(request).then((res) => res.stream.bytesToString());
    var dataResponse = await json.decode(response);

    _printDebug('request headers:${request.headers.toString()}}');
    _printDebug('response ${response.toString()}');
    _handleHttpError(dataResponse);
    return dataResponse;
  }

  Future<dynamic> delete(String endPoint, Map data, {String aUrl}) async {
    String realUrl;
    final url = this._getOAuthURL("DELETE", endPoint);
    if (aUrl == null) {
      realUrl = url;
    } else {
      realUrl = url;
    }
    // final url = Uri.parse(baseUrl + "notes/delete");
    final request = http.Request("DELETE", Uri.parse(realUrl));
    request.headers.addAll(<String, String>{
      "Accept": "application/json",
    });

    request.body = jsonEncode(data);
    final response = await request.send();
    if (response.statusCode > 300)
      return Future.error(
          "error: status code ${response.statusCode} ${response.reasonPhrase}");
    final deleteResponse = await response.stream.bytesToString();
    _printDebug(
        '${request.method.toString()} request -> ${request.url.toString()}');
    _printDebug('request headers:${request.headers.toString()}}');
    _printDebug('response ${response.toString()}');
    return deleteResponse;
  }
}
