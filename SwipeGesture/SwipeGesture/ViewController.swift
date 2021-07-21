//
//  ViewController.swift
//  SwipeGesture
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgUp: UIImageView!
    @IBOutlet weak var imgDown: UIImageView!
    @IBOutlet weak var imgLeft: UIImageView!
    @IBOutlet weak var imgRight: UIImageView!
    
    var imgUpList = [UIImage?]()
    var imgDownList = [UIImage?]()
    var imgLeftList = [UIImage?]()
    var imgRightList = [UIImage?]()
    var numOfTouches = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 이미지 리스트 설정
        makeImageList()
        // 초기 화면 설정
        imgUp.image = imgUpList[0]
        imgDown.image = imgDownList[0]
        imgLeft.image = imgLeftList[0]
        imgRight.image = imgRightList[0]
        // 한 손가락 Gesture
        singleSwipeGesture()
        // 두 손가락 Gesture
        multiSwipeGesture()
    }

    func makeImageList() {
        
        imgUpList.append(UIImage(named: "arrow-up-black.png"))
        imgDownList.append(UIImage(named: "arrow-down-black.png"))
        imgLeftList.append(UIImage(named: "arrow-left-black.png"))
        imgRightList.append(UIImage(named: "arrow-right-black.png"))

        imgUpList.append(UIImage(named: "arrow-up-red.png"))
        imgDownList.append(UIImage(named: "arrow-down-red.png"))
        imgLeftList.append(UIImage(named: "arrow-left-red.png"))
        imgRightList.append(UIImage(named: "arrow-right-red.png"))

        imgUpList.append(UIImage(named: "arrow-up-green.png"))
        imgDownList.append(UIImage(named: "arrow-down-green.png"))
        imgLeftList.append(UIImage(named: "arrow-left-green.png"))
        imgRightList.append(UIImage(named: "arrow-right-green.png"))

    }
    
    func singleSwipeGesture() {
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSingleGesture(_:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSingleGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSingleGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSingleGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
    @objc func respondToSingleGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            // 초기값 설정
            imgUp.image = imgUpList[0]
            imgDown.image = imgDownList[0]
            imgLeft.image = imgLeftList[0]
            imgRight.image = imgRightList[0]
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                imgUp.image = imgUpList[1]
            case UISwipeGestureRecognizer.Direction.down:
                imgDown.image = imgDownList[1]
            case UISwipeGestureRecognizer.Direction.left:
                imgLeft.image = imgLeftList[1]
            case UISwipeGestureRecognizer.Direction.right:
                imgRight.image = imgRightList[1]
            default:
                break
            }
        }
    }
    
    func multiSwipeGesture() {
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToMultiSwipe(_:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        swipeUp.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDpwn = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToMultiSwipe(_:)))
        swipeDpwn.direction = UISwipeGestureRecognizer.Direction.down
        swipeDpwn.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeDpwn)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToMultiSwipe(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        swipeLeft.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToMultiSwipe(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        swipeRight.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToMultiSwipe(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            
            // 초기값 설정
            imgUp.image = imgUpList[0]
            imgDown.image = imgDownList[0]
            imgLeft.image = imgLeftList[0]
            imgRight.image = imgRightList[0]
            
            // 두 손가락 방향에 따른 case 분류
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                imgUp.image = imgUpList[2]
            case UISwipeGestureRecognizer.Direction.down:
                imgDown.image = imgDownList[2]
            case UISwipeGestureRecognizer.Direction.left:
                imgLeft.image = imgLeftList[2]
            case UISwipeGestureRecognizer.Direction.right:
                imgRight.image = imgRightList[2]
            default:
                break
            }
        }
    }
}

