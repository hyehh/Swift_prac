//
//  ViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit
import Tabman
import Pageboy

class ViewController: TabmanViewController {

    private var viewControllers: Array<UIViewController> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let vc2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AllMenuViewController") as! AllMenuViewController
        let vc3 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyMenuViewController") as! MyMenuViewController
            
        viewControllers.append(vc2)
        viewControllers.append(vc3)
        
        self.dataSource = self

        // Create bar
        let bar = TMBar.ButtonBar()
        bar.layout.transitionStyle = .snap // Customize

        // Add to view
        addBar(bar, dataSource: self, at: .top)
        
        bar.backgroundView.style = .blur(style: .regular)
        
        bar.layout.contentInset = UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 20.0)
        
        bar.buttons.customize { (button) in
            button.tintColor = .systemGray
            button.selectedTintColor = .black
        }
        
        bar.indicator.weight = .light
        bar.indicator.tintColor = .systemGreen
        
        bar.indicator.overscrollBehavior = .compress
        
        bar.indicator.overscrollBehavior = .bounce
        
    }

}

extension ViewController: PageboyViewControllerDataSource, TMBarDataSource {
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        let item = TMBarItem(title: "")
        if index == 0 {
            item.title = "전체 메뉴"
        }else {
            item.title = "나만의 메뉴"
        }
        
        return item
    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }

    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }

    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
