import 'package:flutter/material.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _controllerLitro = TextEditingController();
  final TextEditingController _controllerKm = TextEditingController();

  double? _media;
  double? _litro;
  double? _km;

  void media() {
      _litro = double.tryParse(_controllerLitro.text);
      _km = double.tryParse(_controllerKm.text);

      if (_formKey.currentState!.validate()) {
        setState(() {
          _media = _km! / _litro!.toDouble();
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "KM"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Valor não pode ser vazio";
                      }
                    },
                    controller: _controllerKm,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Litro"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Valor não pode ser vazio";
                      }
                    },
                    controller: _controllerLitro,
                  ),
                  SizedBox(height: 5.0),
                  ElevatedButton(
                    onPressed: () => media(),
                    child: Text(
                      'Calcular',
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text("Sua média é: ${_media ?? 0.0} KM")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
