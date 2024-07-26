//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for RelayApi
void main() {
  // final instance = RelayApi();

  group('tests for RelayApi', () {
    // Add credentials to authenticate to a relay-host service.
    //
    //Future relayAddAuth(RelayAddAuthRequest relayAddAuthRequest) async
    test('test relayAddAuth', () async {
      // TODO
    });

    // Add domain to relay-host service.
    //
    // Add a relay-host where mail sent from mail accounts of the provided, domain will be relayed through to their destination.  If a port is not provided it will default to 25.  If the relay-host requires authentication, use the 'setup relay add-auth' command after adding the relay-host. 
    //
    //Future relayAddDomain(RelayAddDomainRequest relayAddDomainRequest) async
    test('test relayAddDomain', () async {
      // TODO
    });

    // Exclude the domain from relay-host service.
    //
    // When a default relay-host is configured (via ENV), the default behaviour is to relay all your mail accounts outgoing mail through that service.  This command allows to opt-out from that default behaviour by excluding all mail accounts belonging to a hosted domain you specify. 
    //
    //Future relayExcludeDomain(RelayExcludeDomainRequest relayExcludeDomainRequest) async
    test('test relayExcludeDomain', () async {
      // TODO
    });

  });
}
