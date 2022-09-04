import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:provider/provider.dart';

class MyHistoryVC extends StatefulWidget {
  const MyHistoryVC({super.key});

  @override
  State<MyHistoryVC> createState() => _MyHistoryVCState();
}

class _MyHistoryVCState extends State<MyHistoryVC> {
  final Stream<QuerySnapshot> _myHistoryStream =
      FirebaseFirestore.instance.collection('Requests').snapshots();

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);

    String userType = userProvider.userData['account_type'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(userType == "Customer" ? "My History" : "Requests"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _myHistoryStream,
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            return ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  dynamic data = snapshots.data!.docs[index].data();
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: userType == "Customer"
                        ? MyHistoryCardComponent(
                            histories: data,
                          )
                        : RequestsCardComponent(
                            histories: data,
                          ),
                  );
                });
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class MyHistoryCardComponent extends StatelessWidget {
  MyHistoryCardComponent({Key? key, this.histories}) : super(key: key);
  String currrentUser = FirebaseAuth.instance.currentUser!.uid;
  final dynamic histories;
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(histories['created_at']);

    var formatDate = DateFormat('MMM k:mm a').format(dateTime).toString();

    TextStyle statusTextStyle = Theme.of(context).textTheme.bodyText1!;
    return Card(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: PRIMARY_COLOR,
                child: Icon(
                  FeatherIcons.bell,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${histories!['questionTitle']}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Icon(
                            FeatherIcons.mapPin,
                            size: 15,
                          ),
                          Text(histories["sender_location"],
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(fontSize: 14)),
                        ],
                      ),
                    ),
                    Wrap(
                      children: [
                        const Icon(FeatherIcons.user, size: 15),
                        Text(histories["full_name"])
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    FeatherIcons.circle,
                    color: Colors.red,
                    size: 15,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.end,
                    children: [
                      Text(formatDate,
                          style: Theme.of(context).textTheme.caption),
                      const Icon(FeatherIcons.clock, size: 15)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RequestsCardComponent extends StatelessWidget {
  RequestsCardComponent({Key? key, this.histories}) : super(key: key);
  String currrentUser = FirebaseAuth.instance.currentUser!.uid;
  final dynamic histories;
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(histories['created_at']);

    var formatDate = DateFormat('MMM k:mm a').format(dateTime).toString();

    TextStyle statusTextStyle = Theme.of(context).textTheme.bodyText1!;
    return Card(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: PRIMARY_COLOR,
                child: Icon(
                  FeatherIcons.bell,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${histories!['questionTitle']}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Icon(
                            FeatherIcons.mapPin,
                            size: 15,
                          ),
                          Text(histories["sender_location"],
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(fontSize: 14)),
                        ],
                      ),
                    ),
                    Wrap(
                      children: [
                        const Icon(FeatherIcons.user, size: 15),
                        Text(histories["full_name"])
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    FeatherIcons.circle,
                    color: Colors.red,
                    size: 15,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.end,
                    children: [
                      Text(formatDate,
                          style: Theme.of(context).textTheme.caption),
                      const Icon(FeatherIcons.clock, size: 15)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}