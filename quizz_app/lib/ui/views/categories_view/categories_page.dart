import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz_app/models/categories_model/category_model.dart';
import 'package:quizz_app/service/repositories/repository.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  final futureList = Repository().getCategories();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: futureList,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Ошибка: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  CategoryModel category = snapshot.data![index];
                  return GestureDetector(
                    onTap: () => context.push('/questions'),
                    child: ListTile(
                      title: Text('${category.id}'),
                      subtitle: Text(category.name),
                    ),
                  );
                },
              );
            } else {
              return Center(child: Text('Нет данных'));
            }
          },
        ),
      ),
    );
  }
}
