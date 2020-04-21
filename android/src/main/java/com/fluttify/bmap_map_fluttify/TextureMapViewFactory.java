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
        put("com.baidu.mapapi.map.TextureMapView::setCustomMapStylePath", (args, methodResult) -> {
            // args
            // jsonable arg
            String var0 = (String) ((Map<String, Object>) args).get("var0");
        
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setIconCustom", (args, methodResult) -> {
            // args
            // jsonable arg
            int var0 = (int) ((Map<String, Object>) args).get("var0");
        
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setLoadCustomMapStyleFileMode", (args, methodResult) -> {
            // args
            // jsonable arg
            int var0 = (int) ((Map<String, Object>) args).get("var0");
        
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomEnable", (args, methodResult) -> {
            // args
            // jsonable arg
            boolean var0 = (boolean) ((Map<String, Object>) args).get("var0");
        
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setCustomStyleFilePathAndMode", (args, methodResult) -> {
            // args
            // jsonable arg
            String var1 = (String) ((Map<String, Object>) args).get("var1");
            // jsonable arg
            int var2 = (int) ((Map<String, Object>) args).get("var2");
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomStylePath", (args, methodResult) -> {
            // args
            // jsonable arg
            String var1 = (String) ((Map<String, Object>) args).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomStyle", (args, methodResult) -> {
            // args
            // ref arg
            com.baidu.mapapi.map.MapCustomStyleOptions var1 = (com.baidu.mapapi.map.MapCustomStyleOptions) getHEAP().get((int) ((Map<String, Object>) args).get("var1"));
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::setMapCustomStyle(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setMapCustomStyle(var1, new com.baidu.mapapi.map.MapView.CustomMapStyleCallBack() {
                // method channel
                MethodChannel callbackChannel = new MethodChannel(messenger, "com.baidu.mapapi.map.TextureMapView::setMapCustomStyle::Callback");
        
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
                    callbackChannel.invokeMethod(
                            "Callback::com.baidu.mapapi.map.MapView.CustomMapStyleCallBack::onPreLoadLastCustomMapStyle",
                            new HashMap<String, Object>() {{
                                put("var1", argvar1);
                            }}
                    );
        
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
                    callbackChannel.invokeMethod(
                            "Callback::com.baidu.mapapi.map.MapView.CustomMapStyleCallBack::onCustomMapStyleLoadSuccess",
                            new HashMap<String, Object>() {{
                                put("var1", argvar1);
                                put("var2", argvar2);
                            }}
                    );
        
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
                    callbackChannel.invokeMethod(
                            "Callback::com.baidu.mapapi.map.MapView.CustomMapStyleCallBack::onCustomMapStyleLoadFailed",
                            new HashMap<String, Object>() {{
                                put("var1", argvar1);
                                put("var2", argvar2);
                                put("var3", argvar3);
                            }}
                    );
        
                    // method result
                    return true;
                }
        
            });
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setMapCustomStyleEnable", (args, methodResult) -> {
            // args
            // jsonable arg
            boolean var1 = (boolean) ((Map<String, Object>) args).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setPadding", (args, methodResult) -> {
            // args
            // jsonable arg
            int var1 = (int) ((Map<String, Object>) args).get("var1");
            // jsonable arg
            int var2 = (int) ((Map<String, Object>) args).get("var2");
            // jsonable arg
            int var3 = (int) ((Map<String, Object>) args).get("var3");
            // jsonable arg
            int var4 = (int) ((Map<String, Object>) args).get("var4");
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getMap", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getMap(" + "" + ")");
            }
        
            // invoke native method
            com.baidu.mapapi.map.BaiduMap result;
            try {
                result = ref.getMap();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            Integer jsonableResult = null;
            if (result != null) {
                jsonableResult = System.identityHashCode(result);
                getHEAP().put(jsonableResult, result);
            }
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onDestroy", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setLogoPosition", (args, methodResult) -> {
            // args
            // enum arg
            com.baidu.mapapi.map.LogoPosition var1 = com.baidu.mapapi.map.LogoPosition.values()[(int) ((Map<String, Object>) args).get("var1")];
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getLogoPosition", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getLogoPosition(" + "" + ")");
            }
        
            // invoke native method
            com.baidu.mapapi.map.LogoPosition result;
            try {
                result = ref.getLogoPosition();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            Integer jsonableResult = null;
            if (result != null) {
                jsonableResult = System.identityHashCode(result);
                getHEAP().put(jsonableResult, result);
            }
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onPause", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onResume", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::showZoomControls", (args, methodResult) -> {
            // args
            // jsonable arg
            boolean var1 = (boolean) ((Map<String, Object>) args).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setZoomControlsPosition", (args, methodResult) -> {
            // args
            // ref arg
            android.graphics.Point var1 = (android.graphics.Point) getHEAP().get((int) ((Map<String, Object>) args).get("var1"));
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::showScaleControl", (args, methodResult) -> {
            // args
            // jsonable arg
            boolean var1 = (boolean) ((Map<String, Object>) args).get("var1");
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::setScaleControlPosition", (args, methodResult) -> {
            // args
            // ref arg
            android.graphics.Point var1 = (android.graphics.Point) getHEAP().get((int) ((Map<String, Object>) args).get("var1"));
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getScaleControlViewWidth", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getScaleControlViewWidth(" + "" + ")");
            }
        
            // invoke native method
            int result;
            try {
                result = ref.getScaleControlViewWidth();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            int jsonableResult = result;
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getScaleControlViewHeight", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getScaleControlViewHeight(" + "" + ")");
            }
        
            // invoke native method
            int result;
            try {
                result = ref.getScaleControlViewHeight();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            int jsonableResult = result;
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::getMapLevel", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
            com.baidu.mapapi.map.TextureMapView ref = (com.baidu.mapapi.map.TextureMapView) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.baidu.mapapi.map.TextureMapView@" + refId + "::getMapLevel(" + "" + ")");
            }
        
            // invoke native method
            int result;
            try {
                result = ref.getMapLevel();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            int jsonableResult = result;
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onSaveInstanceState", (args, methodResult) -> {
            // args
            // ref arg
            android.os.Bundle var1 = (android.os.Bundle) getHEAP().get((int) ((Map<String, Object>) args).get("var1"));
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
        // method
        put("com.baidu.mapapi.map.TextureMapView::onCreate", (args, methodResult) -> {
            // args
            // ref arg
            android.content.Context var1 = (android.content.Context) getHEAP().get((int) ((Map<String, Object>) args).get("var1"));
            // ref arg
            android.os.Bundle var2 = (android.os.Bundle) getHEAP().get((int) ((Map<String, Object>) args).get("var2"));
        
            // ref
            int refId = (int) ((Map<String, Object>) args).get("refId");
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
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // convert result to jsonable result
            String jsonableResult = "success";
        
            methodResult.success(jsonableResult);
        });
    }};

    @Override
    public PlatformView create(Context __, int id, Object params) {
        Map<String, Object> args = (Map<String, Object>) params;
        // ref arg
        com.baidu.mapapi.map.BaiduMapOptions var2 = (com.baidu.mapapi.map.BaiduMapOptions) getHEAP().get((int) ((Map<String, Object>) args).get("var2"));

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
