//
//  ViewController.swift
//  MeuPrimeiroAppiOS
//
//  Created by Quellenni Barreto on 17/08/22.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var txtLogin: UITextField!
   
   @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createFilms(){
        
        let film1 = Film(name: "Interestellar", imageName: "interestellar", isMyFavorite: true)
        
        let film2 = Film(name: "Estrelas além do tempo", imageName: "estrelasalemdotempo", isMyFavorite: true)
        
        let film3 = Film(name: "Mary Shelley", imageName: "maryshelley", isMyFavorite: false)
        
        let film4 = Film(name: "Desventuras em série", imageName: "desventurasemserie", isMyFavorite: false)
        
        let film5 = Film(name: "Dirty Dancing", imageName: "dirtydancing", isMyFavorite: true)
        
        let film6 = Film(name: "Orgulho e Preconceito", imageName: "orgulhoepreconceito", isMyFavorite: false)
        
        let film7 = Film(name: "Divergente", imageName: "divergente", isMyFavorite: false)
        
        let film8 = Film(name: "Divertidamente", imageName: "divertidamente", isMyFavorite: true)
        
        let film9 = Film(name: "Jurassic Park: Parque dos Dinossauros", imageName: "jurassicpark", isMyFavorite: true)
        
        let film10 = Film(name: "Lisbela e o Prisioneiro", imageName: "lisbelaeprisioneiro" , isMyFavorite: true)
        
        DataFilms.films.append(film1)
        DataFilms.films.append(film2)
        DataFilms.films.append(film3)
        DataFilms.films.append(film4)
        DataFilms.films.append(film5)
        DataFilms.films.append(film6)
        DataFilms.films.append(film7)
        DataFilms.films.append(film8)
        DataFilms.films.append(film9)
        DataFilms.films.append(film10)
        
     
        
    }
    
    
    @IBAction func openAction(_ sender: Any) {
    
        if (txtLogin.text == "quellenni" && txtPassword.text == "1234"){
            DataFilms.films.removeAll()
            createFilms()
            performSegue(withIdentifier: "tela2", sender:self)
            
        }
        else{
           let alert = UIAlertController(title:"Alerta", message:"Erro no Login/Senha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true, completion: nil)
            
            /*  let alert = UIAlertController(title: <#T##String?#>, message: <#T##String?#>, preferredStyle: <#T##UIAlertController.Style#>)
             alert.addAction(UIAlertAction(title: <#T##String?#>, style: <#T##UIAlertAction.Style#>, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
                             self.present(alert, animated: true, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
             */
            
        }
        
     
    }
    

}


