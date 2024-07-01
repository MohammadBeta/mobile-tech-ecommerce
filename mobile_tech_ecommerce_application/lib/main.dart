import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_tech_ecommerce_application/core/api/api_crud.dart';
import 'package:mobile_tech_ecommerce_application/features/home/data/reop/home_repo_impl.dart';
import 'package:mobile_tech_ecommerce_application/features/home/presentation/manager/cubit/fetch_categories_cubit.dart';

import 'core/constants/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchCategoriesCubit(HomeRepoImpl(apiCrud: ApiCrud(dio: Dio())))..fetchAllCategories(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Inter', textTheme: GoogleFonts.interTextTheme()),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}


// flutter clean
// flutter pub get
// flutter run