
import 'aqueduct_teste.dart';

class AqueductTesteChannel extends ApplicationChannel {

  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/heroes/[:id]").link(() => HeroController());

    return router;
  }
}
