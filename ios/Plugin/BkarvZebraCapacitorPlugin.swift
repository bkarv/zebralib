// Current imports probably look like this:
import Foundation
import Capacitor

// Add these explicit imports for Zebra SDK classes
import BkarvZebraCapacitor // This imports your module with all the Obj-C headers exposed via the module map
/**
 * Implementation of the BkarvZebraCapacitor plugin for iOS
 */
@objc(BkarvZebraCapacitorPlugin)
public class BkarvZebraCapacitorPlugin: CAPPlugin {
    private let implementation = BkarvZebraCapacitor()
    
    @objc func connectPrinter(_ call: CAPPluginCall) {
        guard let config = call.getString("config") else {
            call.reject("Must provide printer configuration")
            return
        }
        
        implementation.connectPrinter(config: config) { result, error in
            if let error = error {
                call.reject(error.localizedDescription)
                return
            }
            
            call.resolve(result ?? [:])
        }
    }
    
    @objc func printPDF(_ call: CAPPluginCall) {
        guard let base64 = call.getString("base64") else {
            call.reject("Must provide PDF as base64 string")
            return
        }
        
        implementation.printPDF(base64: base64) { result, error in
            if let error = error {
                call.reject(error.localizedDescription)
                return
            }
            
            call.resolve(result ?? [:])
        }
    }
}