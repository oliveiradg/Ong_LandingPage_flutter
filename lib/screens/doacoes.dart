import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';

class Doacoes extends StatelessWidget {

  const Doacoes({ Key key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
        return  Scaffold(
      appBar: AppBar(
        title: Text('Patinhas Felizes'),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Ajude-nos a Cuidar de Cães e Gatos Abandonados',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Sobre Nós',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'A ONG Patinhas Felizes é uma organização dedicada ao resgate, reabilitação e adoção de cães e gatos em situação de abandono e maus-tratos. Nossa missão é proporcionar uma segunda chance a esses animais, oferecendo-lhes amor, cuidados veterinários e um lar amoroso.',
                        ),
                        SizedBox(height: 20),
                        // Outras informações sobre a ONG e os resgatados
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:    Image.asset('assets/images/doacao.png',
                height: 200,
                width: 200,
              ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                                   style: 
                ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 5,
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                  onPressed: () {
                    // Adicionar a lógica para realizar a doação em dinheiro
                  },
                  child: Text('Doação em Dinheiro'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                                   style: 
                ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 5,
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                  onPressed: () {
                    // Adicionar a lógica para doação de produtos
                  },
                  child: Text('Doação de Produtos'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                                  style: 
                ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 5,
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                  onPressed: () {
                    // Adicionar a lógica para apadrinhar um animal
                  },
                  child: Text('Apadrinhe um Animal'),
                ),
                SizedBox(height: 20),
                Text(
                  'ONG Patinhas Felizes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('CNPJ: 00.000.000/0001-00'),
                Text('Telefone: (XX) XXXX-XXXX'),
                Text('E-mail: contato@patinhasfelizes.org'),
                Text('Endereço: Rua dos Animais Felizes, 123 - Cidade Feliz/Estado - CEP: 00000-000'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
        