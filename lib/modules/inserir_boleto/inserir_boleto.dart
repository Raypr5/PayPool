import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paypool/shared/themes/app_colors.dart';
import 'package:paypool/shared/themes/app_textstyles.dart';
import 'package:paypool/shared/widgets/input_text/input_text_widget.dart';

class InserirBoleto extends StatelessWidget {
  const InserirBoleto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(
          color: AppColors.input,),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
            child: Text
              ("Preencha os dados do boleto",
              style: TextStyles.titleBoldHeading,
              textAlign: TextAlign.center,
            ),
          ),
          InputTextWidget(
            label: "Nome do boleto",
            icon: Icons.description_outlined,
            onChanged: (value){}, validator: (String ) {  }, controller: null,
          ),
        InputTextWidget(
          label: "Vencimento",
          icon: FontAwesomeIcons.timesCircle,
          onChanged: (value){}, validator: (String ) {  }, controller: null,),
          InputTextWidget(
            label: "Valor",
            icon: FontAwesomeIcons.wallet,
            onChanged: (value){}, controller: null, validator: (String ) {  },),
          InputTextWidget(
            label: "Codigo",
            icon:FontAwesomeIcons.barcode,
            onChanged: (value){}, controller: null, validator: (String ) {  },
          )
        ],
      ),
      bottomNavigationBar: SetLabelButtons(
        primaryLabel: "cancelar",
        primaryOnPressed: () {},
        secondaryLabel: "Cadastrar",
        secondaryOnPressed: (){},
      ),
    );
  }
}
