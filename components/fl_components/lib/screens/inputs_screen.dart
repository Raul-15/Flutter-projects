import 'package:flutter/material.dart';
import 'package:fl_components/widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first name': 'fernando',
      'last name': 'herrera',
      'email': 'fernando@gmail.com',
      'password': '12345678',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombres',
                  hintText: 'Nombres del usuario',
                  formProperty: 'first name',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Apellidos',
                    hintText: 'Apellidos  del usuario',
                    formProperty: 'last name',
                    formValues: formValues),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Email',
                    hintText: 'Correo electronico del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues
                    // keyboardType: TextInputType.emailAddress,
                    ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues),
                SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                    items: [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Developer Jr.', child: Text('Developer Jr.')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
                ElevatedButton(
                  child: SizedBox(
                    child: Center(child: const Text('Guardar')),
                    width: double.infinity,
                  ),
                  onPressed: () {
                    // Baja el teclado
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
