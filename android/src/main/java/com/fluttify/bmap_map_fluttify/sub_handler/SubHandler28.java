//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package com.fluttify.bmap_map_fluttify.sub_handler;

import android.os.Bundle;
import android.util.Log;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.StandardMethodCodec;
import io.flutter.plugin.platform.PlatformViewRegistry;

import com.fluttify.bmap_map_fluttify.BmapMapFluttifyPlugin.Handler;
import me.yohom.foundation_fluttify.core.FluttifyMessageCodec;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;

@SuppressWarnings("ALL")
public class SubHandler28 {
    public static Map<String, Handler> getSubHandler(BinaryMessenger messenger) {
        return new HashMap<String, Handler>() {{
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_LatLngBounds_Builder__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.LatLngBounds.Builder> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.model.LatLngBounds.Builder __obj__ = new com.baidu.mapapi.model.LatLngBounds.Builder();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_inner_Point__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.inner.Point> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.model.inner.Point __obj__ = new com.baidu.mapapi.model.inner.Point();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_inner_Point__int__int", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.inner.Point> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    Number var1 = (Number) ((Map<String, Object>) __args__).get("var1");
                    // ref arg
                    Number var2 = (Number) ((Map<String, Object>) __args__).get("var2");
            
                    // create target object
                    com.baidu.mapapi.model.inner.Point __obj__ = new com.baidu.mapapi.model.inner.Point(var1.intValue(), var2.intValue());
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_inner_MapBound__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.inner.MapBound> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.model.inner.MapBound __obj__ = new com.baidu.mapapi.model.inner.MapBound();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_inner_GeoPoint__double__double", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.inner.GeoPoint> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    Number var1 = (Number) ((Map<String, Object>) __args__).get("var1");
                    // ref arg
                    Number var3 = (Number) ((Map<String, Object>) __args__).get("var3");
            
                    // create target object
                    com.baidu.mapapi.model.inner.GeoPoint __obj__ = new com.baidu.mapapi.model.inner.GeoPoint(var1.doubleValue(), var3.doubleValue());
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_LatLng__double__double", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.LatLng> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    Number var1 = (Number) ((Map<String, Object>) __args__).get("var1");
                    // ref arg
                    Number var3 = (Number) ((Map<String, Object>) __args__).get("var3");
            
                    // create target object
                    com.baidu.mapapi.model.LatLng __obj__ = new com.baidu.mapapi.model.LatLng(var1.doubleValue(), var3.doubleValue());
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_CoordUtil__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.CoordUtil> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.model.CoordUtil __obj__ = new com.baidu.mapapi.model.CoordUtil();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_model_ParcelItem__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.model.ParcelItem> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.model.ParcelItem __obj__ = new com.baidu.mapapi.model.ParcelItem();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_VersionInfo__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.VersionInfo> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.VersionInfo __obj__ = new com.baidu.mapapi.VersionInfo();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_mapapi_JNIInitializer__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.mapapi.JNIInitializer> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.mapapi.JNIInitializer __obj__ = new com.baidu.mapapi.JNIInitializer();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_geofence_GeoFenceClient__android_content_Context", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.geofence.GeoFenceClient> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    android.content.Context var1 = (android.content.Context) ((Map<String, Object>) __args__).get("var1");
            
                    // create target object
                    com.baidu.geofence.GeoFenceClient __obj__ = new com.baidu.geofence.GeoFenceClient(var1);
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_geofence_model_DPoint__double__double", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.geofence.model.DPoint> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    Number var1 = (Number) ((Map<String, Object>) __args__).get("var1");
                    // ref arg
                    Number var3 = (Number) ((Map<String, Object>) __args__).get("var3");
            
                    // create target object
                    com.baidu.geofence.model.DPoint __obj__ = new com.baidu.geofence.model.DPoint(var1.doubleValue(), var3.doubleValue());
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_geofence_GeoFence__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.geofence.GeoFence> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.geofence.GeoFence __obj__ = new com.baidu.geofence.GeoFence();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_baidu_geofence_PoiItem__", (__argsBatch__, __methodResult__) -> {
                List<com.baidu.geofence.PoiItem> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
            
            
                    // create target object
                    com.baidu.geofence.PoiItem __obj__ = new com.baidu.geofence.PoiItem();
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(__obj__);
                }
            
                __methodResult__.success(__resultList__);
            });
        }};
    }
}
