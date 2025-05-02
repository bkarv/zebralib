#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Import all Zebra SDK headers that you need
#import "ZebraPrinter.h"
#import "ZebraPrinterConnection.h"
#import "ZebraPrinterFactory.h"
#import "TcpPrinterConnection.h"
#import "MfiBtPrinterConnection.h"
#import "SGD.h"
#import "PrinterStatus.h"
#import "NetworkDiscoverer.h"
#import "DiscoveredPrinter.h"
#import "DiscoveredPrinterNetwork.h"
#import "FileUtil.h"
#import "FormatUtil.h"
#import "GraphicsUtil.h"
#import "ToolsUtil.h"
// Add any other headers your Swift code needs to access

// Define the plugin using the CAP_PLUGIN macro
CAP_PLUGIN(BkarvZebraCapacitorPlugin, "BkarvZebraCapacitor",
           CAP_PLUGIN_METHOD(connectPrinter, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(printPDF, CAPPluginReturnPromise);
)