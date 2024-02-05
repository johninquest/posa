import 'package:flutter/material.dart';
import 'package:posa/style/colors.dart';

class InventoryCreatePage extends StatelessWidget {
  const InventoryCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New inventory'),
        centerTitle: true,
      ),
      body: const Center(
        child: InventoryCreateForm(),
      ),
    );
  }
}

class InventoryCreateForm extends StatefulWidget {
  const InventoryCreateForm({super.key});

  @override
  State<InventoryCreateForm> createState() => _InventoryCreateFormState();
}

class _InventoryCreateFormState extends State<InventoryCreateForm> {
  final inventoryItemFormKey = GlobalKey<FormState>();
  final TextEditingController itemName = TextEditingController();
  final TextEditingController itemQty = TextEditingController();
  final TextEditingController itemUnitPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: inventoryItemFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                      'cancel',
                      style: TextStyle(color: txtBlackColor),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('save'),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
