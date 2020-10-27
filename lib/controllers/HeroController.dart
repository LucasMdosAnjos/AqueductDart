import 'package:aqueduct_teste/aqueduct_teste.dart';

class HeroController extends ResourceController{

  final List heroes = [
    "Iron Man",
    "Saitama",
    "Capitão Rapadura",
    "Capitã Marvel"
  ];


  @Operation.get()
  Future<Response> getAll() async{
    try{
      return Response.ok(heroes);
    }catch (e){
      return Response.badRequest(body: {'Error':'Bad Request'});
    }
  }

  @Operation.get("id")
  Future<Response> getHero(@Bind.path("id") int id) async{
    try{
      return Response.ok({'Hero':heroes[id]});
    }catch (e){
      return Response.badRequest(body: {'Error':'Bad Request'});
    }
  }



}