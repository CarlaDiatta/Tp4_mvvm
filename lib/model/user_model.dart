class UserModel{
  final int identifiant;
   String _nomComplet;
   String _adresseEmail;
   String _nomEntreprise;

  UserModel({required this.identifiant, 
  required String nomComplet, 
  required String adresseEmail, 
  required String nomEntreprise})
  : _nomComplet = nomComplet,
    _adresseEmail = adresseEmail,
    _nomEntreprise = nomEntreprise{
      _validationIndentifiant(identifiant);
      _validationNomComplet(_nomComplet);
      _validationAdresseEmail(_adresseEmail);
      _validationNomEntreprise(_nomEntreprise);
    }
    //Regle de validation  métier privées
    void _validationIndentifiant(int identifiant){
      if(identifiant <= 0){
        throw ArgumentError('L\'identifiant doit être un entier positif.');
      }
    }
    void _validationNomComplet(String nom){
      if(nom.isEmpty){
        throw ArgumentError('Le nom complet ne peut pas être vide.');
      }
    }
    void _validationAdresseEmail(String email){
      if(email.isEmpty  || !email.contains('@')){ {
        throw ArgumentError('L\'adresse email ne peut pas être vide ou invalide.');}
    }
    }
    void _validationNomEntreprise(String entreprise){
      if(entreprise.trim().isEmpty){
        throw ArgumentError('Le nom de l\'entreprise ne peut pas être vide.');
      }
    }
    //Getters  pour accéder aux propriétés privées 
    String get nomComplet => _nomComplet;
    String get adresseEmail => _adresseEmail;
    String get nomEntreprise => _nomEntreprise;

    // Les méthodes de mise à jour pour les propriétés privées
    void  mettreAJourNomComplet(String nouveauNom){
      _validationNomComplet(nouveauNom);
      _nomComplet = nouveauNom;   
   }
    void mettreAJourAdresseEmail(String nouvelleEmail){
      _validationAdresseEmail(nouvelleEmail);
      _adresseEmail = nouvelleEmail;
    }
    void mettreAJourNomEntreprise(String nouveauEntreprise){
      _validationNomEntreprise(nouveauEntreprise);
      _nomEntreprise = nouveauEntreprise;
    }
}