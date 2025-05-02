#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN macro
CAP_PLUGIN(BkarvZebraCapacitorPlugin, "BkarvZebraCapacitor",
           CAP_PLUGIN_METHOD(connectPrinter, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(printPDF, CAPPluginReturnPromise);
)