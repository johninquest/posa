import 'package:flutter/material.dart';
import 'package:posa/utils/date_time_helper.dart';
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

  DateTime selectedDate = DateTime.now();
  Future<void> _selectSaleDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        // selectedDate = picked;
        // _startDate.text = DateTimeHelper().toDeDateFormat('$picked');
        // _pickedDate.text = DateTimeFormatter().toDateString(picked);
        // saleDate.text = '$picked';
        saleDate.text = DateTimeHelper().fromDtToDeDateFormat(picked);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    saleDate.text = DateTimeHelper().fromDtToDeDateFormat(now);
    priceTotal.text = '100';
  }

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
                    /* validator: (val) => val!.isEmpty ? 'Item name' : null, */
                    onTap: () => _selectSaleDate(context))),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: itemName,
                  enabled: true,
                  decoration: const InputDecoration(labelText: 'Item (1) name'),
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
                  decoration: const InputDecoration(labelText: 'Quantity'),
                  keyboardType: TextInputType.number,
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
                  keyboardType: TextInputType.number,
                  textCapitalization: TextCapitalization.words,
                  validator: (val) => val!.isEmpty ? 'Unit price ?' : null,
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add new item'),
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
                )),
            const SizedBox(
              height: 8.0,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.89,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  controller: priceTotal,
                  enabled: false,
                  readOnly: true,
                  decoration: const InputDecoration(labelText: 'Total price'),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
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
