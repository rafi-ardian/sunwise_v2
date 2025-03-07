/// Custom exception untuk menangani kesalahan dari server
class ServerException implements Exception {
  final String message;

  ServerException({this.message = 'Server Error'});

  @override
  String toString() => message;
}

/// Custom exception untuk menangani kesalahan jaringan
class NetworkException implements Exception {
  final String message;

  NetworkException({this.message = 'No Internet Connection'});

  @override
  String toString() => message;
}

/// Kelas Failure untuk menangani error di BloC
class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() => message;
}
