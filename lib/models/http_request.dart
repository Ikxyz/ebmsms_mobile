class HttpResponse<T> {
  final int? code;
  final String message;
  final T? data;
  final bool status;

  const HttpResponse(this.message, this.code, this.status, this.data);
}
