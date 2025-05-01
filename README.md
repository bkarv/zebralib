# zebra-capacitor

Zebra printer capacitor plugin library for iOS. Ionic Capacitor v3 wrapper with ZSDK_API. Support base64 PDF and regular Text printing.

Only tested with ZQ520 and ZQ521. Should work for all Zebra Bluetooth printers. Android is not yet supported at the moment unless someone wants to contribute to this repo. Contact me at [DOLOS+](http://dolosplus.com/contact.html)

## Install

```bash
npm install @dolosplus/zebra-capacitor
npx cap sync
```

## API

<docgen-index>

* [`connectPrinter(...)`](#connectprinter)
* [`printText(...)`](#printtext)
* [`printPDF(...)`](#printpdf)
* [`addListener(...)`](#addlistener)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### connectPrinter(...)

```typescript
connectPrinter(options: { config: string; }) => any
```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ config: string; }</code> |

**Returns:** <code>any</code>

--------------------


### printText(...)

```typescript
printText(options: { text: string; }) => any
```

| Param         | Type                           |
| ------------- | ------------------------------ |
| **`options`** | <code>{ text: string; }</code> |

**Returns:** <code>any</code>

--------------------


### printPDF(...)

```typescript
printPDF(options: { base64: string; }) => any
```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ base64: string; }</code> |

**Returns:** <code>any</code>

--------------------


### addListener(...)

```typescript
addListener(eventName: 'printerStatusChange', listenerFunc: StateChangeListener) => Promise<PluginListenerHandle> & PluginListenerHandle
```

| Param              | Type                                          |
| ------------------ | --------------------------------------------- |
| **`eventName`**    | <code>"printerStatusChange"</code>            |
| **`listenerFunc`** | <code>(state: ConnectState) =&gt; void</code> |

**Returns:** <code>any</code>

--------------------


### Interfaces


#### PluginListenerHandle

| Prop         | Type                      |
| ------------ | ------------------------- |
| **`remove`** | <code>() =&gt; any</code> |

</docgen-api>
