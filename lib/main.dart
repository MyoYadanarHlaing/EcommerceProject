import 'package:ecommerce_project/features/cart/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/cart/bloc/qty_cubit.dart';
import 'package:ecommerce_project/features/cart/cart_page.dart';
import 'package:ecommerce_project/features/cart/checkout_page.dart';
import 'package:ecommerce_project/features/home/bloc/home_bloc.dart';
import 'package:ecommerce_project/model/item_model.dart';
import 'package:ecommerce_project/utils/color_constant.dart';
import 'package:ecommerce_project/utils/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/home_page.dart';
import 'features/order/order_success_page.dart';
import 'features/product/bloc/product_detail_bloc.dart';
import 'features/product/product_detail_page.dart';
import 'injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  initDependencies();

  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider.value(
        //   value: injector.get<HomeBloc>()
        //     ..add(const HomeEvent.getVendor()),
        // ),
        // BlocProvider.value(
        //     value: injector.get<ProductDetailBloc>()
        //       ..add(const ProductDetailEvent.getItem())),
        BlocProvider.value(value: injector.get<CartBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white,
              primary: ColorConst.primaryColor,
              secondary: ColorConst.secondaryColor),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        initialRoute: AppRoutes.home,
        onGenerateRoute: (settings) {
          late Widget page;
          switch (settings.name) {
            case AppRoutes.productDetail:
              final item = settings.arguments as ItemModel;
              page = MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                      value: injector.get<ProductDetailBloc>()
                        ..add(const ProductDetailEvent.getItem())),
                  BlocProvider(create: (context) => ItemQtyCubit()),
                  // BlocProvider.value(value: injector.get<CartBloc>()),
                ],
                child: ProductDetailPage(
                  item: item,
                ),
              );
              break;
            case AppRoutes.cart:
              page = /*MultiBlocProvider(
                providers: [
                  BlocProvider.value(value: injector.get<CartBloc>()),
                ],
                child: */
                  const CartPage();
              //);
              break;
            case AppRoutes.checkOut:
              page = /*MultiBlocProvider(
                providers: [
                  BlocProvider.value(value: injector.get<CartBloc>()),
                ],
                child: */
                  const CheckOutPage();
              //);
              break;
            case AppRoutes.orderSuccess:
              page = /*MultiBlocProvider(
                providers: [
                  BlocProvider.value(value: injector.get<CartBloc>()),
                ],
                child: */
                  const OrderSuccessPage();
              //);
              break;
            case AppRoutes.home:
            default:
              page = MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: injector.get<HomeBloc>()
                      ..add(const HomeEvent.getVendor()),
                  ),
                  //BlocProvider.value(value: injector.get<CartBloc>()),
                ],
                child: const HomePage(),
              );
              break;
          }
          return MaterialPageRoute(builder: (_) => page, settings: settings);
        },
      ),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Ecommerce App',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(
    //         seedColor: Colors.white,
    //         primary: ColorConst.primaryColor,
    //         secondary: ColorConst.secondaryColor),
    //     useMaterial3: true,
    //     textTheme: GoogleFonts.poppinsTextTheme(),
    //   ),
    //   initialRoute: AppRoutes.home,
    //   onGenerateRoute: (settings) {
    //     late Widget page;
    //     switch (settings.name) {
    //       case AppRoutes.productDetail:
    //         page = MultiBlocProvider(
    //           providers: [
    //             BlocProvider.value(
    //                 value: injector.get<ProductDetailBloc>()
    //                   ..add(const ProductDetailEvent.getItem())),
    //             BlocProvider.value(value: injector.get<CartBloc>()),
    //             BlocProvider(create: (context) => ItemQtyCubit()),
    //           ],
    //           child: const ProductDetailPage(),
    //         );
    //         break;
    //       case AppRoutes.cart:
    //         page = MultiBlocProvider(
    //           providers: [
    //             BlocProvider.value(value: injector.get<CartBloc>()),
    //           ],
    //           child: const CartPage(),
    //         );
    //         break;
    //       case AppRoutes.home:
    //       default:
    //         page = MultiBlocProvider(
    //           providers: [
    //             BlocProvider.value(
    //               value: injector.get<HomeBloc>()
    //                 ..add(const HomeEvent.getVendor()),
    //             ),
    //             BlocProvider.value(value: injector.get<CartBloc>()),
    //           ],
    //           child: const HomePage(),
    //         );
    //         break;
    //     }
    //     return MaterialPageRoute(builder: (_) => page, settings: settings);
    //   },
    // );
  }
}
