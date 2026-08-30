package com.engagelab.privates.common.handler;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.engagelab.privates.common.log.MTCommonLog;
import java.lang.Thread;
import java.util.concurrent.ConcurrentHashMap;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTHandler {
    private static final int DEFAULT_RELEASE_INTERVAL = 300000;
    private static final String TAG = "MTHandler";
    private static volatile MTHandler instance;
    private final ConcurrentHashMap<String, CommonHandlerThread> handlerThreadMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, CommonHandler> handlerMap = new ConcurrentHashMap<>();

    public static MTHandler getInstance() {
        if (instance == null) {
            synchronized (MTHandler.class) {
                instance = new MTHandler();
            }
        }
        return instance;
    }

    public CommonHandler buildHandler(Context context, String str) {
        return buildHandler(context, str, DEFAULT_RELEASE_INTERVAL);
    }

    public void postMessageDelayed(Context context, String str, Runnable runnable, long j3) {
        try {
            CommonHandler commonHandlerBuildHandler = buildHandler(context, str);
            if (commonHandlerBuildHandler == null) {
                return;
            }
            commonHandlerBuildHandler.postDelayed(runnable, j3);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("sendMessageDelayed failed "), TAG);
        }
    }

    public void releaseHandler(Context context, String str) {
        try {
            if (this.handlerMap.containsKey(str)) {
                CommonHandler commonHandler = this.handlerMap.get(str);
                if (commonHandler != null) {
                    MTCommonLog.d(TAG, "releaseHandler:" + str);
                    commonHandler.removeCallbacksAndMessages(null);
                }
                this.handlerMap.remove(str);
            }
            if (this.handlerThreadMap.containsKey(str)) {
                CommonHandlerThread commonHandlerThread = this.handlerThreadMap.get(str);
                if (commonHandlerThread != null) {
                    commonHandlerThread.quit();
                }
                this.handlerThreadMap.remove(str);
            }
        } catch (Throwable th) {
            x.j(th, new StringBuilder("releaseHandler failed "), TAG);
        }
    }

    public void removeMessages(Context context, String str, int i6) {
        try {
            CommonHandler commonHandlerBuildHandler = buildHandler(context, str);
            if (commonHandlerBuildHandler == null) {
                return;
            }
            commonHandlerBuildHandler.removeMessages(i6);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("removeMessages failed "), TAG);
        }
    }

    public void sendMessage(Context context, String str, int i6, Bundle bundle) {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.arg1 = 0;
            messageObtain.obj = str;
            messageObtain.what = i6;
            messageObtain.setData(bundle);
            CommonHandler commonHandlerBuildHandler = buildHandler(context, str);
            if (commonHandlerBuildHandler == null) {
                return;
            }
            commonHandlerBuildHandler.sendMessage(messageObtain);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("sendMessage failed "), TAG);
        }
    }

    public void sendMessageDelayed(Context context, String str, int i6, Bundle bundle, long j3) {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.arg1 = 1;
            messageObtain.obj = str;
            messageObtain.what = i6;
            messageObtain.setData(bundle);
            CommonHandler commonHandlerBuildHandler = buildHandler(context, str);
            if (commonHandlerBuildHandler == null) {
                return;
            }
            commonHandlerBuildHandler.sendMessageDelayed(messageObtain, j3);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("sendMessageDelayed failed "), TAG);
        }
    }

    public synchronized CommonHandler buildHandler(Context context, String str, int i6) {
        CommonHandler commonHandler;
        try {
            CommonHandlerThread commonHandlerThread = this.handlerThreadMap.get(str);
            if (commonHandlerThread == null) {
                commonHandlerThread = new CommonHandlerThread(str);
                this.handlerThreadMap.put(str, commonHandlerThread);
            }
            if (commonHandlerThread.getState() == Thread.State.NEW) {
                commonHandlerThread.start();
            }
            commonHandler = this.handlerMap.get(str);
            if (commonHandlerThread.getState() == Thread.State.TERMINATED) {
                if (commonHandler != null) {
                    commonHandler.removeCallbacksAndMessages(null);
                }
                commonHandlerThread = new CommonHandlerThread(str);
                commonHandlerThread.start();
                this.handlerThreadMap.put(str, commonHandlerThread);
                commonHandler = new CommonHandler(commonHandlerThread.getLooper(), context, i6);
                this.handlerMap.put(str, commonHandler);
                MTCommonLog.d(TAG, "buildHandler：" + str);
            }
            if (commonHandler == null) {
                commonHandler = new CommonHandler(commonHandlerThread.getLooper(), context, i6);
                this.handlerMap.put(str, commonHandler);
                MTCommonLog.d(TAG, "buildHandler：" + str);
            }
        } catch (Throwable th) {
            try {
                MTCommonLog.w(TAG, "buildHandler failed " + th.getMessage());
                return null;
            } finally {
            }
        }
        return commonHandler;
    }
}
