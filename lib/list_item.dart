import 'package:flutter/material.dart';

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> with AutomaticKeepAliveClientMixin {
  var count = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: [
          buildText(),
          buildButton(),
        ],
      ),
    );
  }

  Widget buildText() {
    return Text(count.toString());
  }

  Widget buildButton() {
    return MaterialButton(
      onPressed: () {
        setState(() {
          count += 1;
        });
      },
      child: const Text("+"),
    );
  }
}
