//
//  ViewController.swift
//  ble
//
//  Created by Hyeji on 2021/09/16.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController {

    private var centralManager: CBCentralManager!
    private var peripheral: CBPeripheral!
    var connectedPeripheral: CBPeripheral?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centralManager = CBCentralManager(delegate: self, queue: nil)

    }
}

extension ViewController: CBPeripheralDelegate, CBCentralManagerDelegate {
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central .state {
        case .poweredOn:
            // startScan()
            break
        // case .poweredOff :
            // // 사용자에게 블루투스를 켜도록 경고
            // break
        // case .unknown:
            // // 다음 상태 업데이트를 기다립니다.
            // break
        // case .resetting:
            // // 다음 상태 업데이트를 기다렸다가 Bluetooth 서비스 중단 로깅 고려
            // break
        // case .unsupported:
            // // 사용자에게 기기가 블루투스를 지원하지 않으며 앱이 예상대로 작동하지 않음을 알립니다.
            // break
        // case .unauthorized:
            // // 앱 설정에서 블루투스 권한을 사용하도록 사용자에게 알립니다.
            // break
        default:
            break
        }
        
    }
    
    // 장치를 찾았을 때 실행되는 이벤트
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print("장치를 찾았을 때 실행되는 이벤트")
    }
    
    // 올바른 장치에 연결되었는지 확인
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("올바른 장치에 연결되었는지 확인")
    }
    
    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        print("여기")
    }
    
}
