//
//  ViewController.swift
//  BookStore
//
//  Created by user190386 on 3/5/21.
//

import UIKit

class DetailViewController: UIViewController {
    // MARK: Properties
    

    
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pagesLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var readSwitch: UISwitch!
   
    var delegate: BookStoreDelegate? = nil
    var myBook = Book()
    
    @IBAction func deleteBookAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Warning", message: "Delete this book?", preferredStyle: .alert)

                let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)

                let yesAction = UIAlertAction(title: "Yes", style: .destructive) {(action) in self.delegate?.deleteBook(self)}

                alertController.addAction(noAction)
                alertController.addAction(yesAction)

                present(alertController, animated: false, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            if let controller = segue.destination as? AddViewController {
                controller.delegate = delegate
                controller.editBook = true
                controller.book = myBook
            }
        }
    }

    
    func configureView() {
                // Update the user interface for the detail item.
        readSwitch.isEnabled = false;
                if let detailBook = detailItem {
                    myBook = detailBook
                    titleLabel.text = myBook.title
                    authorLabel.text = myBook.author
                    descriptionTextView.text = myBook.description
                    imageView.image = UIImage(named: myBook.image)
                    if myBook.readThisBook{
                        readSwitch.isOn = true
                    } else{
                        readSwitch.isOn = false
                    }
                    
                }
            }

        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            configureView()
        }
        
        var detailItem : Book? {
            didSet {
                // Update the view.
            }
        }

    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion:nil)
    }
    
    }



