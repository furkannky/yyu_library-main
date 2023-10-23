import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class FirestoreDb {
  
   final db = FirebaseFirestore.instance;
   
  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers() async {
    QuerySnapshot<Map<String, dynamic>> veri = await db
        .collection("users")
        .get();
    veri.docs.forEach((QueryDocumentSnapshot<Map<String, dynamic>> element) {
      print(element.data());
    });
    return veri;
  }


//   static void getkullanici(String id) async {
//     var veri = await db.collection("kullanicilar").doc(id).get();
//     if (veri.exists) {
//       //veri varsa yazdır
//       print("getkullanici metodu çalıştı--------------------------");
//       print(veri.data());
//     } else {
//       print("böyle bir kişi yok");
//     }
//   }

//   static void getyas() async {
//     var veri = await db.collection("kullanicilar").orderBy("yaş").get();
//     //var veri2 = await db.collection("kullanicilar").orderBy("yaş", descending: true).get(); //buda büyükten küçüğe sıralar
//     //var veri3 = await db.collection("kullanicilar").where("yaş",isLessThan: 50).get();//yaşı elliden küçük olanlar
//     //var veri3 = await db.collection("kullanicilar").where("yaş",isLessThanOrEqualTo: 50).get();//yaşı elliden küçük ve eşit olanlar

//     print("getyaş metodu çalıştı--------------------------");
//     veri.docs.forEach((element) {
//       print(element.data()["yaş"]);
//     });
//   }

//   static void getcinsiyet(bool c) async {
//     var data = await db
//         .collection("kullanicilar")
//         .where("cinsiyet",
//             isEqualTo:
//                 c) //verilen parametreye göre cinsiyet true erkek veya false kadın olanlar gelecek
//         .get();
//     print("getcinsiyet metodu çalıştı--------------------------");
//     data.docs.forEach((element) {
//       print(element.data());
//     });
//   }

//   static void getcoklusorgu() async {
//     var data = await db
//         .collection('kullanicilar')
//         .where('yaş',
//             isGreaterThan: //yaşı 18 den büyük olanlar
//                 18) //birden fazla sorgu(where) çalıştırdığında hata alıcaksın bu hatanın içerisindeki linki tarayıcıya yapıştır enterla sorun çözülecek
//         .where('cinsiyet', isEqualTo: false) //cinsiyeti kadın olanlar
//         .orderBy('yaş', descending: true)
//         .get();
//     print("çoklu sorgu çalıştı----------------------------");
//     data.docs.forEach((element) {
//       print(element.data());
//     });
//   }

// //bu çok tercih edilmez. kullaniciolustur2 daha çok tercih edilir
//   static void kullanicigetir() async {
//     var data =
//         await db.collection("kullanicilar").doc("7ekNGk3Eggz6OVF3hofU").get();

//     var kullanici = User(
//         id: data.id,
//         name: data.get("ad"),
//         surname: data.get("soyad"),
//         age: data.get("yaş"),
//         mail: data.get("mail"),
//         tin: data.get("tin"),
//         role: data.get("role"),
//         phone: data.get("phone"),
//         adress: data.get("adress"),
//         registrationStatus: data.get("registrationStatus"),
//         membershipDate: data.get("membershipDate"),
//         dept: data.get("dept"),
//         penaltyDate: data.get("penaltyDate"),
//         bookCount: data.get("bookCount"));

//     print(kullanici.name);
//     print(kullanici.surname);
//     print(kullanici.age);
//   }

// //verileri doldurma işini users klasında yaptık
//   static Future<User> kullanicigetir2() async {
//     var data =
//         await db.collection("kullanicilar").doc("7ekNGk3Eggz6OVF3hofU").get();

//     User kullanici = User.fromJson(data.data()!);
//     return kullanici;
//   }

//   static Future<List<User>> modelegorecoklugetir() async {
//     QuerySnapshot<Map<String, dynamic>> veri =
//         await db.collection("kullanicilar").get(); //querysnaps

//     List<User> kullanicilar =
//         veri.docs.map((e) => User.fromJson(e.data())).toList();
//     return kullanicilar;
//   }

//   static void ekle() {
//     //initstate metoduna çağırırsan uygulama başladığı gibi ekler. her çalıştığında eklemeyi tekrar edicek dikkat et ayrıca id(document) otomatik ekleniyor
//     db
//         .collection("kullanicilar")
//         .add({
//           "ad": "hafize",
//           "soyad": "adar",
//           "yaş": 55,
//           "mail": "hafize@gmail.com",
//           "cinsiyet": false
//         })
//         .then((value) =>
//             print("${value.id} id numarası ile yeni kullanıcı eklendi"))
//         .catchError((eror) => print("hata :$eror"));
//   }

//   static void idliekle() {
//     //id li ekleme işlemi
//     db
//         .collection("kullanicilar")
//         .doc("abc")
//         .set({
//           "ad": "büşra",
//           "soyad": "yalçın",
//           "yaş": 10,
//           "mail": "büşra@gmail.com",
//           "cinsiyet": false
//         }) //eğer girdiğin id ye göre bir kayıt zaten varsa üzerine yazar
//         .then((_) => print("manuel id li yeni kullanıcı eklendi"))
//         .catchError((eror) => print("hata :$eror"));
//   }

//   static void guncelle() {
//     db
//         .collection("kullanicilar")
//         .doc("QwtQ5WFOVOHN8KtJ5Rsw")
//         .set({
//           "ad": "yalçın",
//           "soyad": "kaya",
//           "yaş": 43,
//           "mail": "yalçın@gmail.com",
//           "cinsiyet": true
//         })
//         .then((_) => print("kullanıcı güncellendi"))
//         .catchError((eror) => print("hata :$eror"));
//   }

//   static void sil() {
//     //eğer öyle bir kullanıcı yoksa hata vermez
//     db
//         .collection("kullanicilar")
//         .doc("abc")
//         .delete()
//         .then((_) => print("kullanıcı silindi"))
//         .catchError((eror) => print("hata :$eror"));
//   }
}
