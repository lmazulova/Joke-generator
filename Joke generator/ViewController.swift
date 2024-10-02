//
//  ViewController.swift
//  Joke generator
//
//  Created by user on 01.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var typeView: UIView!
    @IBOutlet weak var jokeIDView: UIView!
    @IBOutlet weak var reloadButton: UIButton!
    @IBOutlet weak var punchlineButton: UIButton!
    
    private func border(View: UIView){
        View.layer.masksToBounds = true
        View.layer.borderColor = UIColor.black.cgColor
        View.layer.borderWidth = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        border(View: cardView)
        border(View: typeView)
        border(View: jokeIDView)
        border(View: reloadButton)
        border(View: punchlineButton)
    }
    
    @IBAction func punchlineButton(_ sender: Any) {
        let alert = UIAlertController(title: "Punchline", message: "For fowl play", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}
