package com.example.dog_app;

import android.os.Build;
import android.util.Log;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        final String CHANNEL = "com.example.dog_app";
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            if(call.method.equals("getOsInfo")){
                                String os = getOsInfo();
                                result.success(os);
                            }
                        }
                );
    }

    String getOsInfo(){
        String androidVersionName = Build.VERSION.RELEASE;
        String osVersion = System.getProperty("os.version");
        return androidVersionName;
    }

}
