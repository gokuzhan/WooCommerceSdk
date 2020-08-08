import 'dart:convert';

import 'package:woocommerce_sdk/models/Error/WCError.dart';

class WCJwtDecoder {
  final token;

  WCJwtDecoder({this.token});

  Future<Map<String, dynamic>> decode() {
    try {
      // Split the token by '.'
      List<String> splitToken = this.token.split(".");
      // Payload is always the index 1
      String payloadBase64 = splitToken[1];
      // Base64 should be multiple of 4. Normalize the payload before decode it
      String normalizedPayload = base64.normalize(payloadBase64);
      // Decode payload, the result is a String
      String payloadString = utf8.decode(base64.decode(normalizedPayload));
      // Parse the String to a Map<String, dynamic>
      Map<String, dynamic> decodedPayload = jsonDecode(payloadString);

      // Return the decoded payload
      return Future.value(decodedPayload);
    } catch (error) {
      // If there's an error return null
      throw new WCError("jwt_invalid", "invalid jwt token", null);
      return null;
    }
  }

  Future<bool> isExpired() async {
    try {
      // Decode the token
      final Map<String, dynamic> decodedToken = await this.decode();
      if (decodedToken != null) {
        // Get the expiration date
        final DateTime expirationDate =
            new DateTime.fromMillisecondsSinceEpoch(0)
                .add(new Duration(seconds: decodedToken["exp"]));
        // If the current date is after the expiration date, the token is already expired
        return new DateTime.now().isAfter(expirationDate);
      } else {
        throw new WCError("jwt_malformed", "JWT token malformed", null);
      }
    } catch (error) {
      throw new WCError(error.code, error.message, null);
    }
  }
}

/**
 *
 * Wordpress Plugin : API Bearer Auth
 * link : https://wordpress.org/plugins/api-bearer-auth/
 * /// API Bearer Auth Response Schema
 *
 * Response Model
 * ------------------------------------
 *
 * LOGIN
 * ### POST /api-bearer-auth/v1/login
 *
 * {
    "wp_user": {
    "data": {
    "ID": 1,
    "user_login": "your_user_login",
    "user_nicename": "your_user_nicename",
    "user_email": "your_user_email",
    "user_url": "your_user_url",
    "user_registered": "your_user_registered",
    "user_activation_key": "your_user_activation_key",
    "user_status": "your_user_status",
    "display_name": "your_display_name"
    }
    },
    "access_token": "your_access_token",
    "expires_in": 86400, // number of seconds
    "refresh_token": "your_refresh_token"
    }
 *
 *
 * REFRESH LOGIN
 * ### POST /api-bearer-auth/v1/tokens/refresh
 *
 * {
    "access_token": "your_new_access_token",
    "expires_in": 86400
    }
 *
 */
