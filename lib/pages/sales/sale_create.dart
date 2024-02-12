import 'package:flutter/material.dart';

import '../../style/colors.dart';
// import 'package:go_router/go_router.dart';

class SaleCreatePage extends StatelessWidget {
  const SaleCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New sale'),
        centerTitle: true,
      ),
      body: const Center(
        child: SaleCreateForm(),
      ),
    );
  }
}

class SaleCreateForm extends StatefulWidget {
  const SaleCreateForm({super.key});

  @override
  State<SaleCreateForm> createState() => _SaleCreateFormState();
}

class _SaleCreateFormState extends State<SaleCreateForm> {
  final saleFormKey = GlobalKey<FormState>();
  final TextEditingController saleDate = TextEditingController();
  final TextEditingController itemName = TextEditingController();
  final TextEditingController itemQty = TextEditingController();
  final TextEditingController itemUnitPrice = TextEditingController();
  final TextEditingController priceTotal = TextEditingController();
  final TextEditingController commentOnSale = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: saleFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: saleDate,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Date'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  /* validator: (val) => val!.isEmpty
                                    ? 'Item name'
                                    : null, */
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: itemName,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Item name'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  /* validator: (val) => val!.isEmpty
                                    ? 'Item name'
                                    : null, */
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: itemQty,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Item quantity'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  /* validator: (val) => val!.isEmpty
                                    ? 'Item name'
                                    : null, */
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: itemUnitPrice,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Unit price'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  /* validator: (val) => val!.isEmpty
                                    ? 'Item name'
                                    : null, */
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: priceTotal,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Total'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  /* validator: (val) => val!.isEmpty
                                    ? 'Item name'
                                    : null, */
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: commentOnSale,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Comment'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  /* validator: (val) => val!.isEmpty
                                    ? 'Item name'
                                    : null, */
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(),
                    child: const Text(
                      'CANCEL',
                      style: TextStyle(color: txtBlackColor),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('SAVE'),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
