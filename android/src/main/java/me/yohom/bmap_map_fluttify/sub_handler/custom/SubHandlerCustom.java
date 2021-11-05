//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package me.yohom.bmap_map_fluttify.sub_handler.custom;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

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
import io.flutter.plugin.platform.PlatformViewRegistry;

import me.yohom.bmap_map_fluttify.BmapMapFluttifyPlugin.Handler;
import me.yohom.bmap_map_fluttify.R;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;

import com.baidu.mapapi.map.InfoWindow;
import com.baidu.mapapi.map.Marker;

@SuppressWarnings("ALL")
public class SubHandlerCustom {

    public static final SubHandlerCustom instance = new SubHandlerCustom();

    private SubHandlerCustom() {
    }

    public Map<String, Handler> getSubHandler(BinaryMessenger messenger, android.app.Activity activity) {
        return new HashMap<String, Handler>() {{
            put("com.baidu.mapapi.map.Marker::showInfoWindowX", (rawArgs, methodResult) -> {
                final Map<String, Object> args = (Map<String, Object>) rawArgs;
                // args
                final Marker marker = (Marker) args.get("__this__");
                final String title = (String) args.get("title");
                final String snippet = (String) args.get("snippet");

                Log.d("", "com.baidu.mapapi.map.Marker::showInfoWindowX: "+marker+","+title+","+snippet);

                final LinearLayout infoWindowView = new LinearLayout(activity);
                infoWindowView.setOrientation(LinearLayout.VERTICAL);
                infoWindowView.setPadding(12, 12, 12, 12);
                infoWindowView.setBackgroundResource(R.drawable.round_corner);
                if (title != null) {
                    final TextView titleView = new TextView(activity);
                    titleView.setText(title);
                    titleView.setPadding(12, 12, 12, 12);
                    infoWindowView.addView(titleView);
                }
                if (snippet != null) {
                    final TextView titleView = new TextView(activity);
                    titleView.setText(snippet);
                    titleView.setPadding(0, 12, 0, 0);
                    infoWindowView.addView(titleView);
                }
                final InfoWindow infoWindow = new InfoWindow(infoWindowView, marker.getPosition(), -100);

                // invoke native method
                try {
                    marker.showInfoWindow(infoWindow);
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
    }
}
