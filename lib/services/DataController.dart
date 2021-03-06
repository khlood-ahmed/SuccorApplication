import 'package:cloud_firestore/cloud_firestore.dart';
import "package:get/get.dart";
import 'package:gp_project/models/product.dart';
import 'package:gp_project/constance.dart';

class DataController extends GetxController {
  Future getData(String collection) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot =
        await firebaseFirestore.collection('Products').get();
    return snapshot.docs;
  }

  Future<QuerySnapshot> queryData(String queryString) async {
    return FirebaseFirestore.instance
        .collection('Products')
        .where('ProductTitle', isEqualTo: queryString)
        .get();
  }

Future getServicesData(String collection) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot =
        await firebaseFirestore.collection('Services').get();
    return snapshot.docs;
  }

  Future<QuerySnapshot> queryServicesData(String queryString) async {
    return FirebaseFirestore.instance
        .collection('Services')
        .where('ServiceTitle', isEqualTo: queryString)
        .get();
  }
  
  Future getJobData(String collection) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot =
        await firebaseFirestore.collection('jobs').get();
    return snapshot.docs;
  }

  Future<QuerySnapshot> queryJobData(String queryString) async {
    return FirebaseFirestore.instance
        .collection('jobs')
        .where('jobTitle', isEqualTo: queryString)
        .get();
  }

}
