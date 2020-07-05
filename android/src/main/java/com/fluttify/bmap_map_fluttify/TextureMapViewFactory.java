//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package com.fluttify.bmap_map_fluttify;

import android.content.Context;
import android.view.View;
import android.util.Log;
import android.app.Activity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;

@SuppressWarnings("ALL")
class TextureMapViewFactory extends PlatformViewFactory {

    TextureMapViewFactory(BinaryMessenger messenger, Activity activity) {
        super(StandardMessageCodec.INSTANCE);

        this.messenger = messenger;
        this.activity = activity;

        new MethodChannel(messenger, "com.fluttify/bmap_map_fluttify/com_baidu_mapapi_map_TextureMapView").setMethodCallHandler((methodCall, methodResult) -> {
                Map<String, Object> args = (Map<String, Object>) methodCall.arguments;
                BmapMapFluttifyPlugin.Handler handler = handlerMap.get(methodCall.method);
                if (handler != null) {
                    try {
                        handler.call(args, methodResult);
                    } catch (Exception e) {
                        e.printStackTrace();
                        methodResult.error(e.getMessage(), null, null);
                    }
                } else {
                    methodResult.notImplemented();
                }
            });
    }

    private BinaryMessenger messenger;
    private Activity activity;

    private final Map<String, BmapMapFluttifyPlugin.Handler> handlerMap = new HashMap<String, BmapMapFluttifyPlugin.Handler>() {{
        // method
        put("com.baidu.mapapi.map.TextureMapView::setCustomMapStylePath", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            String var0 = (String) ((Map<String, Object>) __args__).get("var0");
        
            // ref
        
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView::setCustomMapStylePath(" + var0 + ")");
            }
        
            // invoke native method
            try {
                com.baidu.mapapi.map.TextureMapView.setCustomMapStylePath(var0);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setIconCustom", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            int var0 = (int) ((Map<String, Object>) __args__).get("var0");
        
            // ref
        
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView::setIconCustom(" + var0 + ")");
            }
        
            // invoke native method
            try {
                com.baidu.mapapi.map.TextureMapView.setIconCustom(var0);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setLoadCustomMapStyleFileMode", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            int var0 = (int) ((Map<String, Object>) __args__).get("var0");
        
            // ref
        
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView::setLoadCustomMapStyleFileMode(" + var0 + ")");
            }
        
            // invoke native method
            try {
                com.baidu.mapapi.map.TextureMapView.setLoadCustomMapStyleFileMode(var0);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomEnable", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            boolean var0 = (boolean) ((Map<String, Object>) __args__).get("var0");
        
            // ref
        
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView::setMapCustomEnable(" + var0 + ")");
            }
        
            // invoke native method
            try {
                com.baidu.mapapi.map.TextureMapView.setMapCustomEnable(var0);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setCustomStyleFilePathAndMode", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            String var1 = (String) ((Map<String, Object>) __args__).get("var1");
            // jsonable arg
            int var2 = (int) ((Map<String, Object>) __args__).get("var2");
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setCustomStyleFilePathAndMode(" + var1 + var2 + ")");
            }
        
            // invoke native method
            try {
                ref.setCustomStyleFilePathAndMode(var1, var2);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomStylePath", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            String var1 = (String) ((Map<String, Object>) __args__).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setMapCustomStylePath(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setMapCustomStylePath(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomStyle", (__args__, __methodResult__) -> {
            // args
            // ref arg
            Integer __var1RefId__ = (Integer) ((Map<String, Object>) __args__).get("var1");
            com.baidu.mapapi.map.MapCustomStyleOptions var1 = __var1RefId__ != null ? (com.baidu.mapapi.map.MapCustomStyleOptions) getHEAP().get(__var1RefId__) : null;
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setMapCustomStyle(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setMapCustomStyle(var1, new com.baidu.mapapi.map.CustomMapStyleCallBack() {
                    // method channel
                    MethodChannel callbackChannel = new MethodChannel(messenger, "com.baidu.mapapi.map.TextureMapView::setMapCustomStyle::Callback");
                    android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        
                    // call dart method
                    @Override
                    public boolean onPreLoadLastCustomMapStyle(String var1) {
                        // print log
                        if (getEnableLog()) {
                            Log.d("java-callback", "fluttify-java-callback: onPreLoadLastCustomMapStyle(" + var1 + ")");
                        }
        
                        // convert to jsonable data
                        // jsonable arg
                        String argvar1 = var1;
        
                        // call dart method
                        handler.post(new Runnable() {
                            @Override
                            public void run() {
                                callbackChannel.invokeMethod(
                                    "Callback::com.baidu.mapapi.map.CustomMapStyleCallBack::onPreLoadLastCustomMapStyle",
                                    new HashMap<String, Object>() {{
                                        put("var1", argvar1);
                                    }}
                                );
                            }
                        });
        
                        // method result
                        return true;
                    }
        
                    @Override
                    public boolean onCustomMapStyleLoadSuccess(boolean var1, String var2) {
                        // print log
                        if (getEnableLog()) {
                            Log.d("java-callback", "fluttify-java-callback: onCustomMapStyleLoadSuccess(" + var1 + var2 + ")");
                        }
        
                        // convert to jsonable data
                        // jsonable arg
                        boolean argvar1 = var1;
                        // jsonable arg
                        String argvar2 = var2;
        
                        // call dart method
                        handler.post(new Runnable() {
                            @Override
                            public void run() {
                                callbackChannel.invokeMethod(
                                    "Callback::com.baidu.mapapi.map.CustomMapStyleCallBack::onCustomMapStyleLoadSuccess",
                                    new HashMap<String, Object>() {{
                                        put("var1", argvar1);
                                        put("var2", argvar2);
                                    }}
                                );
                            }
                        });
        
                        // method result
                        return true;
                    }
        
                    @Override
                    public boolean onCustomMapStyleLoadFailed(int var1, String var2, String var3) {
                        // print log
                        if (getEnableLog()) {
                            Log.d("java-callback", "fluttify-java-callback: onCustomMapStyleLoadFailed(" + var1 + var2 + var3 + ")");
                        }
        
                        // convert to jsonable data
                        // jsonable arg
                        int argvar1 = var1;
                        // jsonable arg
                        String argvar2 = var2;
                        // jsonable arg
                        String argvar3 = var3;
        
                        // call dart method
                        handler.post(new Runnable() {
                            @Override
                            public void run() {
                                callbackChannel.invokeMethod(
                                    "Callback::com.baidu.mapapi.map.CustomMapStyleCallBack::onCustomMapStyleLoadFailed",
                                    new HashMap<String, Object>() {{
                                        put("var1", argvar1);
                                        put("var2", argvar2);
                                        put("var3", argvar3);
                                    }}
                                );
                            }
                        });
        
                        // method result
                        return true;
                    }
        
            });
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomStyleEnable", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            boolean var1 = (boolean) ((Map<String, Object>) __args__).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setMapCustomStyleEnable(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setMapCustomStyleEnable(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setPadding", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            int var1 = (int) ((Map<String, Object>) __args__).get("var1");
            // jsonable arg
            int var2 = (int) ((Map<String, Object>) __args__).get("var2");
            // jsonable arg
            int var3 = (int) ((Map<String, Object>) __args__).get("var3");
            // jsonable arg
            int var4 = (int) ((Map<String, Object>) __args__).get("var4");
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setPadding(" + var1 + var2 + var3 + var4 + ")");
            }
        
            // invoke native method
            try {
                ref.setPadding(var1, var2, var3, var4);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getMap", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getMap(" + "" + ")");
            }
        
            // invoke native method
            com.baidu.mapapi.map.BaiduMap __result__;
            try {
                __result__ = ref.getMap();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            Integer jsonableResult = null;
            if (__result__ != null) {
                jsonableResult = System.identityHashCode(__result__);
                getHEAP().put(jsonableResult, __result__);
            }
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onDestroy", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::onDestroy(" + "" + ")");
            }
        
            // invoke native method
            try {
                ref.onDestroy();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setLogoPosition", (__args__, __methodResult__) -> {
            // args
            // enum arg
            com.baidu.mapapi.map.LogoPosition var1 = com.baidu.mapapi.map.LogoPosition.values()[(int) ((Map<String, Object>) __args__).get("var1")];
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setLogoPosition(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setLogoPosition(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getLogoPosition", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getLogoPosition(" + "" + ")");
            }
        
            // invoke native method
            com.baidu.mapapi.map.LogoPosition __result__;
            try {
                __result__ = ref.getLogoPosition();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            Integer jsonableResult = null;
            if (__result__ != null) {
                jsonableResult = __result__.ordinal();
            }
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onPause", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::onPause(" + "" + ")");
            }
        
            // invoke native method
            try {
                ref.onPause();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onResume", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::onResume(" + "" + ")");
            }
        
            // invoke native method
            try {
                ref.onResume();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::showZoomControls", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            boolean var1 = (boolean) ((Map<String, Object>) __args__).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::showZoomControls(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.showZoomControls(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setZoomControlsPosition", (__args__, __methodResult__) -> {
            // args
            // ref arg
            Integer __var1RefId__ = (Integer) ((Map<String, Object>) __args__).get("var1");
            android.graphics.Point var1 = __var1RefId__ != null ? (android.graphics.Point) getHEAP().get(__var1RefId__) : null;
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setZoomControlsPosition(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setZoomControlsPosition(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::showScaleControl", (__args__, __methodResult__) -> {
            // args
            // jsonable arg
            boolean var1 = (boolean) ((Map<String, Object>) __args__).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::showScaleControl(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.showScaleControl(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setScaleControlPosition", (__args__, __methodResult__) -> {
            // args
            // ref arg
            Integer __var1RefId__ = (Integer) ((Map<String, Object>) __args__).get("var1");
            android.graphics.Point var1 = __var1RefId__ != null ? (android.graphics.Point) getHEAP().get(__var1RefId__) : null;
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setScaleControlPosition(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setScaleControlPosition(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getScaleControlViewWidth", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getScaleControlViewWidth(" + "" + ")");
            }
        
            // invoke native method
            int __result__;
            try {
                __result__ = ref.getScaleControlViewWidth();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            int jsonableResult = __result__;
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getScaleControlViewHeight", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getScaleControlViewHeight(" + "" + ")");
            }
        
            // invoke native method
            int __result__;
            try {
                __result__ = ref.getScaleControlViewHeight();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            int jsonableResult = __result__;
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getMapLevel", (__args__, __methodResult__) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getMapLevel(" + "" + ")");
            }
        
            // invoke native method
            int __result__;
            try {
                __result__ = ref.getMapLevel();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            int jsonableResult = __result__;
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onSaveInstanceState", (__args__, __methodResult__) -> {
            // args
            // ref arg
            Integer __var1RefId__ = (Integer) ((Map<String, Object>) __args__).get("var1");
            android.os.Bundle var1 = __var1RefId__ != null ? (android.os.Bundle) getHEAP().get(__var1RefId__) : null;
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::onSaveInstanceState(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.onSaveInstanceState(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onCreate", (__args__, __methodResult__) -> {
            // args
            // ref arg
            Integer __var1RefId__ = (Integer) ((Map<String, Object>) __args__).get("var1");
            android.content.Context var1 = __var1RefId__ != null ? (android.content.Context) getHEAP().get(__var1RefId__) : null;
            // ref arg
            Integer __var2RefId__ = (Integer) ((Map<String, Object>) __args__).get("var2");
            android.os.Bundle var2 = __var2RefId__ != null ? (android.os.Bundle) getHEAP().get(__var2RefId__) : null;
        
            // ref
            int refId = (int) ((Map<String, Object>) __args__).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::onCreate(" + var1 + var2 + ")");
            }
        
            // invoke native method
            try {
                ref.onCreate(var1, var2);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                __methodResult__.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            __methodResult__.success(jsonableResult);
        });
    }};

    @Override
    public PlatformView create(Context __, int id, Object params) {
        Map<String, Object> __args__ = (Map<String, Object>) params;
        // ref arg
        Integer __var2RefId__ = (Integer) ((Map<String, Object>) __args__).get("var2");
        com.baidu.mapapi.map.BaiduMapOptions var2 = __var2RefId__ != null ? (com.baidu.mapapi.map.BaiduMapOptions) getHEAP().get(__var2RefId__) : null;

        com.baidu.mapapi.map.TextureMapView view = new com.baidu.mapapi.map.TextureMapView(activity, var2);
        getHEAP().put(Integer.MAX_VALUE - id, view);
        return new PlatformView() {

            // add to HEAP
            @Override
            public View getView() {
                return view;
            }

            @Override
            public void dispose() {}
        };
    }
}
