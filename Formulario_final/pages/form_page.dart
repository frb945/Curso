import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projf_formulario/widgets/my_alert.dart';
import 'package:projf_formulario/widgets/my_button.dart';
import 'package:projf_formulario/widgets/my_checkbox.dart';
import 'package:projf_formulario/widgets/my_radio.dart';
import 'package:projf_formulario/widgets/my_slider.dart';
import 'package:projf_formulario/widgets/my_switch.dart';
import 'package:projf_formulario/widgets/my_text_field.dart';
import 'package:projf_formulario/widgets/my_title.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
 double _sliderValue = 0;
 bool _notify = false;
 final List<String> _listprefs = [];
 String _gender = "Masculino";
 final TextEditingController _controllerNome = TextEditingController();
 final TextEditingController _controllerData = TextEditingController();

@override
  void dispose() {
    _controllerNome.dispose();
    _controllerData.dispose();
    super.dispose();
  }

  void _changeList(pref) {
    (!_listprefs.contains(pref))
    ? _listprefs.add(pref)
    : _listprefs.remove(pref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário Flutter",
          style: GoogleFonts.uchen(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                MyTitle(title: "Dados Pessoais"),

                SizedBox( 
                  width: double.infinity,
                  child: MyTextField(
                    title: "Nome",
                    isDate: false,
                    controller: _controllerNome,
                    ),
                ),

                SizedBox(height: 15),

                SizedBox( 
                  width: double.infinity,
                  child: MyTextField(
                    title: "Data nascimento",
                    isDate: true,
                    controller: _controllerData,
                    ),
                ),

                SizedBox(height: 15),
                
             MyTitle(title: "Gênero"),
              
                SizedBox(height: 15),
                
              MyRadio(
                value: (v) {
                    _gender = v!;
                }
              ),

                SizedBox(height: 15),
                
             MyTitle(title: "Preferências"),

                SizedBox(height: 15),
                
                Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(
                      title: "Música",
                       value: _changeList,
                    ),
                    MyCheckbox(
                      title: "Esportes",
                      value: _changeList,
                    ),
                  ],
                ),

                 Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyCheckbox(
                      title: "Filmes",
                      value: _changeList,
                      ),
                    MyCheckbox(
                      title: "Culinária",
                      value: _changeList,
                      ),
                  ],
                ),

                SizedBox(height: 15),

                MyTitle(title: "Escolaridade"),

                MySlider(
                  value: (v){
                    _sliderValue = v!;
                  },
                  ),

                SizedBox(height: 15),

                MySwitch(
                  title: "Deseja receber notificções",
                  value: (v){
                    _notify = v!;
                  },
                  ),

                SizedBox(height: 15),

                Mybutton(
                  title: "save",
                  icon: Icons.save,
                  onclick: (){
                    print(_controllerNome.text);
                    print(_controllerData.text);
                    print(_gender);
                    print(_sliderValue);
                    print(_listprefs);
                    print(_notify);

                    MyAlert.showSimpleDialog(
                      context, 
                      "Dados cadastrais", 
                      "${_controllerData.text}\n"
                      "${_controllerData.text}\n"
                      "$_gender\n"
                      "$_sliderValue\n"
                      "$_listprefs\n"
                      "$_notify\n"
                      );

                  },
                  ),

            ],
          ),
        ),
      ),
    );
  }
}