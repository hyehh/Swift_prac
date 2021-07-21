//
//  ViewController.swift
//  Test
//
//  Created by 박성훈 on 2021/07/22.
//

import UIKit
import CoreBluetooth

//local central device object
class BluetoothViewController: UIViewController, CBPeripheralDelegate, CBCentralManagerDelegate {
    //properties
    private var centralManager: CBCentralManager!
    private var peripheral: CBPeripheral!
    
    var feedbackAmt = String() // from session setup view controller
    
    //label to display stage of gait cycle
    @IBOutlet weak var StateLabel: UILabel!
    
    //characteristics
    private var StateVar: CBCharacteristic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centralManager = CBCentralManager(delegate: self, queue: nil)
 
    }
    
    //func tells the delegate the central manager's state updated (required)
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            //can start scanning peripherals
            centralManager.scanForPeripherals(withServices: [ArduinoPeripheral.ArduinoServiceUUID], options: nil)
            StateLabel.text = "Scanning for devices..."
        }
    }
    
    //result of scan - call to this method reflects a detected advertisement packet of a BLE peripheral in range
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        //found peripheral so stop scanning
        self.centralManager.stopScan()
        
        //copy the peripheral instance
        self.peripheral = peripheral
        self.peripheral.delegate = self
        
        //connect to peripheral
        self.centralManager.connect(self.peripheral, options: nil)
    }
    
    //if successfully connected
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        //check if this is the desired peripheral
        if peripheral == self.peripheral {
            //start service discovery for desired service
            peripheral.discoverServices([ArduinoPeripheral.ArduinoServiceUUID])
            StateLabel.text = "Connected!"
        }
    }
    
    //handle service discovery event
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        //cycle through available services
        if let services = peripheral.services {
            for service in services {
                //find the service from arduino
                if service.uuid == ArduinoPeripheral.ArduinoServiceUUID {
                    //start discovery of the service's characteristics
                    peripheral.discoverCharacteristics([ArduinoPeripheral.ArduinoCharacteristicUUID], for: service)
                    StateLabel.text = "Service found"
                    
                    return
                }
            }
        }
    }
    
    //handle discovery of characteristics
    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        if let characteristics = service.characteristics {
            for characteristic in characteristics {
                if characteristic.uuid == ArduinoPeripheral.ArduinoCharacteristicUUID {
                    StateVar = characteristic
                    StateLabel.text = "Characteristic found"
                }
            }
        }
    }
    
    //subscribe to characteristic for value change / notification
    func subscribeToNotifications(peripheral: CBPeripheral, characteristic: CBCharacteristic) {
        peripheral.setNotifyValue(true, for: characteristic)
        StateLabel.text = "Subscribed"
    }
    
    //notification update
    func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?) {
       if let error = error {
            // Handle error
            print(error)
            return
       }
        // Successfully subscribed to or unsubscribed from notifications/indications on a characteristic
    }
    
    //read value
    func readValue(characteristic: CBCharacteristic) {
        self.peripheral.readValue(for: characteristic)
    }
    
    //value returned from readValue
    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        if let error = error {
            // Handle error
            print(error)
            return
        }
        
        
        StateLabel.text = "Value updated"
       }
    
}
