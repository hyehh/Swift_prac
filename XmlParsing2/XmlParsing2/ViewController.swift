//
//  ViewController.swift
//  XmlParsing2
//
//  Created by HYEJI on 2021/09/30.
//

import UIKit

class Book{
    var id: String!
    var title: String!
    var author: String!
    var summary: String!
}

class ViewController: UIViewController {
    
    var elementValue: String!
    var book: Book!
    var books = [Book]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://sites.google.com/site/iphonesdktutorials/xml/Books.xml")
        let xmlParser = XMLParser(contentsOf: url!)
        xmlParser!.delegate = self
        let success = xmlParser!.parse()
        if success == true {
            self.title = "파싱 성공"
        }else {
            self.title = "파싱 실패"
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: XMLParserDelegate {
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "Book" {
            book = Book()
            let dic = attributeDict as Dictionary
            book.id = dic["id"]
        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "Book" {
            books.append(book)
        }else if elementName == "title" {
            book.title = elementValue
        }else if elementName == "author" {
            book.author = elementValue
        }else if elementName == "summary" {
            book.summary = elementValue
        }
        elementValue = nil
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if elementValue == nil {
            elementValue = string
        }else {
            elementValue = "\(elementValue!)\(string)"
        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = books[indexPath.row].title
        // print(books[indexPath.row].title)
        return cell
    }
}
