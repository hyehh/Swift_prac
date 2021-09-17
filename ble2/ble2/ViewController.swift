//
//  ViewController.swift
//  ble2
//
//  Created by Hyeji on 2021/09/17.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController {

    @IBOutlet weak var tblOfList: UITableView!
    @IBOutlet weak var lblOfDeviceName: UILabel!
    @IBOutlet weak var btnOfScan: UIButton!
    
    var peripherals: [CBPeripheral] = []
    var centralManager: CBCentralManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tblOfList.tableFooterView = UIView()
        self.tblOfList.delegate = self
        self.tblOfList.dataSource = self
        centralManager = CBCentralManager(delegate: self, queue: .main)
    }


    @IBAction func btnScanClick(_ sender: Any) {
        print("scan start!")
        
        if !centralManager.isScanning {
            centralManager?.scanForPeripherals(withServices: nil, options: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 60.0) {
            self.centralManager.stopScan()
            print("Scanning stop")
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peripherals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblOfList.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        let peripheral = peripherals[indexPath.row]
        cell.textLabel?.text = peripheral.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let peripheral = peripherals[indexPath.row]
//        centralManager.connect(peripheral)
        print("Details : ", peripheral)
    }
    
}

extension ViewController : CBPeripheralDelegate, CBCentralManagerDelegate {
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        if !(peripheral.name ?? "").isEmpty {
            var check : Bool = false
            for p in peripherals {
                if p.name == peripheral.name {
                    check = true
                }
            }
            
            if !check {
                self.peripherals.append(peripheral)
                print(peripheral, "안녕~~ 너 누구야~~~~~")
                print("Discovered \(peripheral.name ?? "")")
                print(peripherals.count, "ㅎㅁㅎㅁ")
                self.tblOfList.reloadData()
                
            }
            
            if "MX Anywhere 3" == peripheral.name {
                print("여기 들어와라 제바라ㅏㅏㅏㅏ랄")
                centralManager.connect(peripheral)
            }
        }
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unknown:
            print("central.state is .unknown")
        case .resetting:
            print("central.state is .resetting")
        case .unsupported:
            print("central.state is .unsupported")
        case .unauthorized:
            print("central.state is .unauthorized")
        case .poweredOff:
            print("central.state is .poweredOff")
        case .poweredOn:
            print("central.state is .poweredOn")
        @unknown default:
            fatalError()
        }
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("여기 들어오냐?")
        print("Connected to "+peripheral.name!)
    }
    
    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        print(error!)
    }
}

