import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp4_mvvm/repositories/api_user_repository.dart';
import 'package:tp4_mvvm/view_model/user_view_model.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  late UserViewModel _uvm;
  @override
  void initState() {
    super.initState();
    _uvm = UserViewModel(ApiUserRepository()); 
 
    _chargerUsers();
  }
  void _chargerUsers() async {
    await _uvm.chargerUtilisateurs();
  }

  @override
  Widget build(BuildContext context) {
     _uvm = context.watch<UserViewModel>(); //S'abonne à la classe UserViewModel pour être notifié des changements d'état
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("Accueil"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    //Si c'est en cours de téléchargement, on affiche un indicateur de chargement
    if (_uvm.estEnChargement) {
      return const Center(child: CircularProgressIndicator());
    } else if (_uvm.erreur != null) {
      return Center(child: Container(
        margin: EdgeInsets.all(20),
        child: Text(_uvm.erreur!, style: TextStyle(color: Colors.red),),
      ));
    } else {
      return ListView.builder(
        itemCount: _uvm.utilisateurs.length,
        itemBuilder: (context, index) {
          final userEnCours = _uvm.utilisateurs[index];
          return Card(
            child: ListTile(
              title: Text(userEnCours.nomComplet),
              subtitle: Text(userEnCours.adresseEmail),
            ),
          );
        },
      );
    }
  }
}
