import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/fliters_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            titleSmall: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleMedium: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
        FiltersScreen.routeName:(ctx)=>FiltersScreen(),
      },
      // onGenerateRoute: (setting)
      // {
      //   print(setting.arguments);
      //   return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
      // },
      onUnknownRoute: (setting)
      {
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen()
        );
      },
    );
  }
}
