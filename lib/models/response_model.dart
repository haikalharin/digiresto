class Response {
  String code;
  String status;
  String message;

  Response({this.code,this.status,this.message});
  factory Response.createResponse(Map<String,dynamic> object){
    return Response(
      code: object['code'],
      status: object['status'],
      message: object['message'],
    );
  }
}