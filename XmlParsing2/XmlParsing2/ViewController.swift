//
//  ViewController.swift
//  XmlParsing2
//
//  Created by HYEJI on 2021/09/30.
//

// 2021.09.30 Xml Parsing 시도한 방법 2
import UIKit

class Book{
    var id: String!
    var title: String!
    var author: String!
    var summary: String!
}

class ViewController: UIViewController {
    
    // 파싱에 필요한 변수
    // 태그 하나 하나의 값을 저장할 변수
    var elementValue: String!
    // Book 1개를 저장할 변수
    var book: Book!
    // 전체 데이터를 저장할 변수
    var books = [Book]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 데이터를 다운로드 받을 주소를 URL 인스턴스로 생성
        let url = URL(string: "http://sites.google.com/site/iphonesdktutorials/xml/Books.xml")
        // 데이터를 다운로드 받아서 파싱할 객체 만들기
        let xmlParser = XMLParser(contentsOf: url!)
        // 파싱을 수행할 객체 지정
        xmlParser!.delegate = self
        // 파싱을 요청하고 결과 받기
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
    
    // 여는 태그를 만났을 때 호출되는 메소드
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        // 하나의 객체 여는 태그를 만났을 때 객체를 생성
        // 태그 둘 중에서 속성을 가진 태그가 있으면 그 속성을 찾아와서 저장
        if elementName == "Book" {
            book = Book()
            // Book 태그에 있는 id 속성의 값을 찾아서 book에 저장
            let dic = attributeDict as Dictionary
            book.id = dic["id"]
        }
        
    }
    
    // 닫는 태그를 만났을 때 호출되는 메소드
    // 하나의 객체를 닫는 태그를 만나면 객체를 배열이나 리스트에 저장하고
    // 객체 내의 태그를 만나면 그 태그에 해당하는 프로퍼티에 데이터를 저장
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        // 하나의 객체를 닫는 태그를 만난 경우
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
    
    // 여는 태그와 닫는 태그 사이의 내용을 만났을 때 호출되는 메소드
    // 이 메소드는 유일하게 동일한 데이터 가지고 두 번 이상 호출될 수 있는 메소드
    // elementValue의 값이 nil 이면 바로 저장하고 그렇지 않으면 이전 데이터에 추가해주기
    // 태그에 적는 내용은 하나의 패킷 이하로 만들어지기 때문에 한 번에 전송되지만 여는 태그와 닫는 태그 사이에 작성하는 내용은 하나의 패킷 이상이 될 수 있다.
    // 이 부분은 다른 네트워크 프로그램을 만들 때도 기억해야 한다.
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
        cell.detailTextLabel?.text = books[indexPath.row].author
        // print(books[indexPath.row].title)
        return cell
    }
}
