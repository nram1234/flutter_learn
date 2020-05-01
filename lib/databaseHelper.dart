import 'dart:io';

import 'package:flutterlearn/userdatatype.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DatabaseHelper {
final String _tabelname='userTable';
final String _columnID="id";
final String _columnUsername="username";
final String _columnPassword="password";


static  final  DatabaseHelper  _intarnal=DatabaseHelper._instance();

factory DatabaseHelper()=>_intarnal;

   DatabaseHelper._instance();
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
return myDB;



  }
  void _onCreate(Database db,int newVersion)async{
await db.execute(
  "CREATE TABLE $_tabelname($_columnID INTEGER PRIMARY KEY, $_columnUsername TEXT,$_columnPassword TEXT)");

  }
  Future<int>saveUser(UserDataType userDataType)async{
  var dbClint=await db;
  int res=await dbClint.insert("$_tabelname", userDataType.tomap());
  return res;
  }
Future<List>getallUser()async{
  var dbClient=await db;
  var result=await dbClient.rawQuery("SELECT * FROM $_tabelname");
  return result.toList();
}  
Future<int>getCount()async{
  var dbClient=await db;
  return Sqflite.firstIntValue(await dbClient.rawQuery("SELECT COUNT(*) FROM $_tabelname"));
}
Future<UserDataType>getUser(int id) async{
   var dbClient=await db;
  var result=await dbClient.rawQuery("SELECT * FROM $_tabelname WHERE $_columnID =$id");
  if(result.length==0)return null;
  return new UserDataType.fromMap(result.first);
}
Future<int>deletUser(int id)async{
  var dbClient=await db;
  return await dbClient.delete(_tabelname,where: "$_columnID =?",whereArgs: [id]);
}
Future<int>updatUser(UserDataType userDataType)async{
  var dbClient=await db;
  return  await dbClient.update(_tabelname, userDataType.tomap(),where:"$_columnID =?",whereArgs:[userDataType.id] );
}
Future close()async{
  var dbClient=await db;
  return dbClient.close();
}
}

































































































































