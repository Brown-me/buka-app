
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

class MCloudHelperFunctions {
  static Widget? checkSingleRecordState<T>(AsyncSnapshot<T> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(
          color: MColors.secondary,
        ),
      );
    }

    if (!snapshot.hasData || snapshot.data == null) {
      return const Center(
        child: Text('No Data Found'),
      );
    }

    if (snapshot.hasError) {
      return const Center(
        child: Text('Something Went wrong'),
      );
    }
    return null;
  }

  static Widget? checkMultiRecordState<T>(
      {required AsyncSnapshot<List<T>> snapshot,
      Widget? loader,
      Widget? error,
      Widget? nothingFound}) {
    // check State of Future Builder

    if (snapshot.connectionState == ConnectionState.waiting) {
      if (loader != null) return loader;
      return const Center(
        child: CircularProgressIndicator(
          color: MColors.secondary,
        ),
      );
    }

    if (!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
      if (nothingFound != null) return nothingFound;
      return const Center(
        child: Text('No Data Found'),
      );
    }

    if (snapshot.hasError) {
      if (error != null) return error;
      return const Center(
        child: Text('Something Went wrong'),
      );
    }

    return null;
  }

  // static Future<String> getURLFromPathAndName(String path) async {
  //   try {
  //     if (path.isEmpty) return '';
  //     final ref = FirebaseStorage.instance.ref().child(path);
  //     final url = await ref.getDownloadURL();
  //     return url;
  //   } on FirebaseException catch (e) {
  //     throw e.message!;
  //   } on PlatformException catch (e) {
  //     throw e.message!;
  //   } catch (e) {
  //     throw 'Something went Wrong';
  //   }
  // }
}
