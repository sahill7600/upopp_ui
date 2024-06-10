import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/DataHandler/Network/Utils/ErrorParsingModel.dart';
import 'package:demo_upopp/Services/ApiService.dart';
import 'package:dio/dio.dart';

late OnError networkError;

Future<OnError> getError({
  required DioError dioError,
}) {
  switch (dioError.type) {
    case DioErrorType.connectionTimeout:
      return networkError(
        ErrorParsingModel(
          message: LanguageConst.networkConnectionTimeout,
          code: dioError.response?.statusCode,
          action: {},
        ),
      );
    case DioErrorType.sendTimeout:
      return networkError(
        ErrorParsingModel(
          message: LanguageConst.networkSendTimeout,
          code: dioError.response?.statusCode,
          action: {},
        ),
      );

    case DioErrorType.receiveTimeout:
      return networkError(
        ErrorParsingModel(
          message: LanguageConst.networkReceiveTimeout,
          code: dioError.response?.statusCode,
          action: {},
        ),
      );

    case DioErrorType.badResponse:
      final response = dioError.response;
      if (response == null) {
        // This should never happen, judging by the current source code
        // for Dio.
        return networkError(
          ErrorParsingModel(
            message: LanguageConst.somethingWentWrong,
            code: dioError.response?.statusCode,
            action: {},
          ),
        );
      }

      return networkError(
        ErrorParsingModel(
          message: response.data.toString(),
          code: dioError.response?.statusCode,
          action: {},
        ),
      );

    case DioErrorType.cancel:
      return networkError(
        ErrorParsingModel(
          message: dioError.message,
          code: dioError.response?.statusCode,
          action: {},
        ),
      );

    case DioErrorType.unknown:
      return networkError(
        ErrorParsingModel(
          message: dioError.message,
          code: dioError.response?.statusCode,
          action: {},
        ),
      );
    default:
      return networkError(
        ErrorParsingModel(
          message: LanguageConst.somethingWentWrong,
          code: dioError.response?.statusCode,
          action: {},
        ),
      );
  }
}
