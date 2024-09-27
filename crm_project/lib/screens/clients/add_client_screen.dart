import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/widgets/home/home.dart';

class AddClientScreen extends StatefulWidget {
  const AddClientScreen({super.key});

  @override
  _AddClientScreenState createState() => _AddClientScreenState();
}

class _AddClientScreenState extends State<AddClientScreen> {
  final formKey = GlobalKey<FormState>();
  final drawerKey = GlobalKey<ScaffoldState>();

  // Variables para manejar el dropdown y la visibilidad de los campos
  String? selectedDocumentType;
  final List<String> documentTypes = ['DNI', 'NRO DE LICENCIA', 'RUC', 'PTP'];

  // Controladores para los campos
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController documentController = TextEditingController();

  // Función para consultar el DNI usando la API de apis.net.pe
  Future<void> consultarDNI(String dni) async {
    final String token = 'TOKEN_PIPIPI';
    final url = Uri.parse('https://api.apis.net.pe/v2/reniec/dni?numero=$dni');
    
    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        nameController.text = '${data['nombres']} ${data['apellidoPaterno']} ${data['apellidoMaterno']}';
      });
    } else {
      setState(() {
        nameController.text = 'Error al consultar el DNI';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    SizeConfig().init(context);
    return Scaffold(
      key: drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  drawerKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu, color: AppColors.black),
              ),
              actions: const [AppBarActions()],
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          Expanded(
            flex: 10,
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  children: [
                    const Header(title: 'Client', subtitle: 'Agrega clientes nuevos'),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal * 4,
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          // Dropdown para seleccionar el tipo de documento
                          DropdownButtonFormField<String>(
                            value: selectedDocumentType,
                            decoration: const InputDecoration(labelText: 'Tipo de documento'),
                            items: documentTypes
                                .map((type) => DropdownMenuItem(
                                      value: type,
                                      child: Text(type),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedDocumentType = value;
                                phoneController.clear();
                                documentController.clear();
                                nameController.clear();
                              });
                            },
                            validator: (value) => value == null ? 'Por favor, selecciona un tipo' : null,
                          ),
                          const SizedBox(height: 20),

                          // Mostrar campos dependiendo del tipo de documento seleccionado
                          if (selectedDocumentType == 'DNI') ...[
                            TextFormField(
                              controller: documentController,
                              decoration: const InputDecoration(hintText: 'Documento (DNI)'),
                              keyboardType: TextInputType.number,
                              maxLength: 8,
                              validator: (value) => value!.length != 8 ? 'Debe ser de 8 dígitos' : null,
                              // onChanged: (value) {
                              //   if (value.length == 8) {
                              //     consultarDNI(value); // Consultar DNI
                              //   }
                              // },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(hintText: 'Nombre'),
                              validator: (value) => value!.isEmpty ? 'Nombre es requerido' : null,
                            ),
                            
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: phoneController,
                              decoration: const InputDecoration(hintText: 'Teléfono'),
                              keyboardType: TextInputType.phone,
                              maxLength: 9,
                              validator: (value) => value!.isEmpty ? 'Teléfono es requerido' : null,
                            ),
                          ] else if (selectedDocumentType == 'NRO DE LICENCIA') ...[
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(hintText: 'Nombre'),
                              validator: (value) => value!.isEmpty ? 'Nombre es requerido' : null,
                            ),
                            const SizedBox(height: 20),
                            
                            TextFormField(
                              controller: documentController,
                              decoration: const InputDecoration(hintText: 'Documento (Licencia)'),
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              validator: (value) => value!.length != 10 ? 'Debe ser de 10 dígitos' : null,
                            ),
                          ] else if (selectedDocumentType == 'RUC') ...[
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(hintText: 'Nombre'),
                              validator: (value) => value!.isEmpty ? 'Nombre es requerido' : null,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(hintText: 'Nombre de Empresa'),
                              validator: (value) => value!.isEmpty ? 'Nombre de emes requerido' : null,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: documentController,
                              decoration: const InputDecoration(hintText: 'Documento (RUC)'),
                              keyboardType: TextInputType.number,
                              maxLength: 11,
                              validator: (value) => value!.length != 11 ? 'Debe ser de 11 dígitos' : null,
                            ),
                          ] else if (selectedDocumentType == 'PTP') ...[
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(hintText: 'Nombre'),
                              validator: (value) => value!.isEmpty ? 'Nombre es requerido' : null,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: phoneController,
                              decoration: const InputDecoration(hintText: 'Teléfono'),
                              keyboardType: TextInputType.phone,
                              maxLength: 9,
                              validator: (value) => value!.isEmpty ? 'Teléfono es requerido' : null,
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: documentController,
                              decoration: const InputDecoration(hintText: 'Documento (PTP)'),
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              validator: (value) => value!.length != 12 ? 'Debe ser de 12 dígitos' : null,
                            ),
                          ],
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                // Lógica para agregar el cliente
                                print('Formulario válido');
                              }
                            },
                            child: const Text('Agregar Cliente'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
