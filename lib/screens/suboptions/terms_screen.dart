import 'package:flutter/material.dart';

class TermsScreen extends StatefulWidget {
  TermsScreen({Key key}) : super(key: key);

  @override
  _TermsScreenState createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  FlatButton(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'appform'),
                  ),
                  Text(
                    'Termos',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 300,
                  child: Text(
                    'Ao aceder à aplicação, Malibu Escola de Surf, concorda em cumprir estes termos de serviço, todas as leis e regulamentos aplicáveis ​​e concorda que é responsável pelo cumprimento de todas as leis locais aplicáveis. Se você não concordar com algum destes termos, está proibido de usar ou aceder a esta aplicação. Os materiais contidos nesta aplicação são protegidos pelas leis de direitos autorais e marcas comerciais aplicáveis. A sua privacidade é importante para nós. É política da Malibu Escola de Surf respeitar a sua privacidade em relação a qualquer informação sua que possamos coletar na aplicação Malibu Escola de Surf. Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos porque coletamos e como será usado. Apenas retemos as informações coletadas pelo tempo necessário para fornecer o serviço solicitado. Quando armazenamos dados, protegemos dentro de meios comercialmente aceitáveis ​​para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
