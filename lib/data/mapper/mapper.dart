
import 'package:tuts/app/constants.dart';

import '../../domain/models.dart';
import '../response/responses.dart';
import '../../app/extensions.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain(){
    return Customer(
        this?.id.orEmpty() ?? Constants.empty,
        this?.name.orEmpty() ?? Constants.empty,
        this?.numOfNotification.orZero() ?? Constants.zero
    );
  }
}

extension ContactResponseMapper on ContactResponse? {
  Contact toDomain(){
    return Contact(
        this?.phone.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.link.orEmpty() ?? Constants.empty
    );
  }
}
extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain(){
    return Authentication(
        this?.contact.toDomain(),
        this?.customer.toDomain(),

    );
  }
}