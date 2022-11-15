import 'package:flutter/material.dart';

class SubScribeInfo extends StatelessWidget {
  const SubScribeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Subscribe',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Text(
                'Subscribe Your Favorite Podcast Authores Or You Can Skip it For Now.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const SubscribeItem(),
                childCount: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubscribeItem extends StatefulWidget {
  const SubscribeItem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SubscribeState();
}

class SubscribeState extends State<SubscribeItem> {
  bool isEnable = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(15)),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The Smith Comedy Show',
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '685 Podcast',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 12),
                      ),
                      ElevatedButton(
                        onPressed: () => setState(() => isEnable = !isEnable),
                        style: ElevatedButton.styleFrom(
                          primary: isEnable
                              ? Colors.purpleAccent
                              : Colors.grey.shade500,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
