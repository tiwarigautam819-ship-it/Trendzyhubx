package utils;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ReplacePropertiesUtil {
    private final Properties properties = new Properties();

    public ReplacePropertiesUtil(Context context) {
        try {
            InputStream inputStreamOpen = context.getAssets().open("replace.properties");
            try {
                int iAvailable = inputStreamOpen.available();
                byte[] bArr = new byte[iAvailable];
                inputStreamOpen.mark(iAvailable);
                inputStreamOpen.read(bArr);
                System.out.println("replace.properties 内容如下：\n".concat(new String(bArr)));
                inputStreamOpen.reset();
            } catch (Exception e9) {
                System.out.println("读取 replace.properties 内容失败：" + e9.getMessage());
            }
            this.properties.load(inputStreamOpen);
        } catch (IOException e10) {
            Log.e("ReplacePropertiesReader", "读取 replace.properties 内容失败：" + e10.getMessage());
            e10.printStackTrace();
        }
    }

    public String get(String str) {
        return this.properties.getProperty(str);
    }

    public String getOrDefault(String str, String str2) {
        return this.properties.getProperty(str, str2);
    }

    public boolean isDebugger() {
        return "true".equals(get("debugger"));
    }

    public boolean isValidBiometric() {
        return "true".equals(get("is_valid_pwd"));
    }
}
