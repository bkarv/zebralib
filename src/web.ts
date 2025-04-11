import { PluginListenerHandle, WebPlugin } from '@capacitor/core';

import type { StateChangeListener, ZebraLibPlugin } from './definitions';

export class ZebraLibWeb extends WebPlugin implements ZebraLibPlugin {

  // async echo(options: { value: string }): Promise<{ value: string }> {
  //   console.log('ECHO', options);
  //   return options;
  // }

  async connectPrinter(options: { config: string }): Promise<any>{
    return options;
  }

  async printText(options: { text: string }): Promise<any>{
    console.log('ECHO', options);
    return options;
  }

  async printPDF(options: { base64: string }): Promise<any> {
    console.log('Web Zebra Print is not supported', options);
    return options;
  }
    // **Override** addListener to match the interface's signature
    addListener(
      eventName: 'printerStatusChange',
      listenerFunc: StateChangeListener,
    ): Promise<PluginListenerHandle> & PluginListenerHandle {
      // Delegate to WebPlugin’s generic addListener
      return super.addListener(eventName, listenerFunc) as
        Promise<PluginListenerHandle> & PluginListenerHandle;
    }

}
