import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/home_app_bar.dart';
import 'package:omp_app/Components/price_market_component.dart';
import 'package:omp_app/Components/protect_environment.dart';


class HomeVC extends StatelessWidget {
  const HomeVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      const HomeAppBarComponent(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 3.5,
                                child:
                                    const EnvironmentProtectionTipsCarouselComponent(),
                              ),
                              const PricesMarketComponent(),
                              TopUsersDisplayComponent()
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          );
        }),
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item["imageUrl"], fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["title"],
                      style: const TextStyle(
                        color: Colors.white,
                        // fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(item["description"],
                        style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        )))
    .toList();

class TopUsersDisplayComponent extends StatelessWidget {
  const TopUsersDisplayComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top users",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 18),
              ),
              Text(
                "See all",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: PRIMARY_COLOR),
              ),
            ],
          ),
        ),

        ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>const TopUsersCardComponent(),
        )
      ],
    );
  }
}

class TopUsersCardComponent extends StatelessWidget {
  const TopUsersCardComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(5),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            width: 60,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1600180758890-6b94519a8ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")),
                borderRadius: BorderRadius.circular(10),
                color: Colors.green),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Adams Stephene",
                        style: Theme.of(context).textTheme.bodyText1),
                   const Text("Last active")
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Text("45454")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
