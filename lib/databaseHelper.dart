import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DatabaseHelper {
final String tabelname='userTable';
final String columnID="id";
final String columnUsername="username";
final String columnPassword="password";


static  final  DatabaseHelper  _intarnal=DatabaseHelper.instance();

factory DatabaseHelper()=>_intarnal;

   DatabaseHelper.instance();
//static  DatabaseHelper  get ins{
//  if(_intarnal==null){
//    _intarnal=DatabaseHelper.instance();
//  }else{return _intarnal;}
//}

static  Database  _db;
Future<Database>get db  async{
  if(_db!=null){
    return  _db;
  }
  _db=  await iniDb();
  return  _db;
}

  iniDb()async {
     Directory  directory=await getApplicationDocumentsDirectory();
     String path=join(directory.path,'main.db');
     var myDB= await openDatabase(path,version: 1,onCreate:_onCreate );




  }
  void _onCreate(Database db,int newVersion)async{
await db.execute(
  "CREATE TABLE $tabelname($columnID INTEGER PRIMARY KEY, $columnUsername TEXT,$columnPassword TEXT)"

);

  }
}









































































































