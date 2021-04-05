//import 'dart:html';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/helper/data.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/models/categorie_model.dart';
import 'package:newsapp/views/article_view.dart';
import 'package:newsapp/views/category_news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 List<CategoryModel> categories = new List<CategoryModel>();
 List<ArticleModel> articles = new List<ArticleModel>();

 bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();

  }

  getNews() async{

    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('News'),
            Text('India',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),

          ],
        ),
        elevation: 0,
      ),

      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ) : SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            children: <Widget>[

              /// categories
              Container(
               // padding: EdgeInsets.symmetric(horizontal: 16,),
                height: 64,
                child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return CategoryTile(

                        imageUrl: categories[index].imageUrl,
                        categoryName: categories[index].categoryName,
                      );
                    }),
              ),

              ///blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: articles.length,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context , index){
                      return BlogTile(
                        imageUrl:articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].description,
                        url: articles[index].url,

                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {

  final String imageUrl, categoryName;

  CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => CategoryNews(
          category: categoryName.toLowerCase(),
        )
      ));
      },
      
      child: Container(
      margin: EdgeInsets.only(right: 12),
        child: Stack(

          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: imageUrl, width: 120, height: 56, fit: BoxFit.cover,)),
            Container(
              alignment: Alignment.center,
              width: 120, height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black54,
              ),
              child: Text(categoryName , style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),),
            ),
          ],
        ) ,
      ),
    );
  }
}
class BlogTile extends StatelessWidget {

  final String imageUrl, title, desc, url;
  BlogTile({@required this.imageUrl,@required this.title,@required this.desc, @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ArticleView(
            blogUrl: url,
          )
        ));
      },
      child: Container(
      margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[


            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl,
                )),
            SizedBox(height: 8,),
            Text(title,
            style: TextStyle(
              fontSize: 17,
              height: 1.3,
              color: Colors.black87,
              fontWeight: FontWeight.w500,

            ),),
            SizedBox(height: 2,),
            Text(desc,
            style: TextStyle(
              color: Colors.black54,
              height: 1.4,


            ),)

          ],
        ),
      ),
    );
  }
}
