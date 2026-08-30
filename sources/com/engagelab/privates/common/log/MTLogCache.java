package com.engagelab.privates.common.log;

import android.content.Context;
import android.util.Log;
import com.engagelab.privates.common.constants.MTCommonConstants;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTLogCache {
    private static final String DATE_FORMAT_PATTERN = "yyyy-MM-dd HH:mm:ss.SSS";
    private static final String FILE_ENCODING = "UTF-8";
    private static final String FILE_STATUS_ACTIVE = "_ACTIVE";
    private static final String FILE_STATUS_CLOSED = "_CLOSED";
    private static final String LINE_SEPARATOR_PROPERTY = "line.separator";
    private static final String LOG_DIR_NAME = "tmp_log";
    private static final String LOG_DIR_PREFIX = "com_engagelab_l_r";
    private static final String LOG_FILE_EXTENSION = ".log";
    private static final String LOG_FILE_PREFIX = "log_";
    private static final long MAX_FILE_SIZE = 1048576;
    private static final String PROCESS_TYPE_MAIN = "MAIN";
    private static final String PROCESS_TYPE_SUB = "SUB";
    private static final String PROCESS_TYPE_UNKNOWN = "UNKNOWN";
    private static final String TIMESTAMP_FORMAT_PATTERN = "yyyyMMdd_HHmmss";
    private static volatile MTLogCache instance;
    private Context context;
    private File currentLogFile;
    private BufferedWriter currentWriter;
    private volatile ExecutorService writeExecutor;
    private static final String TAG = MTCommonConstants.getLogTag() + "MTLogCache";
    private static final Object LOCK = new Object();
    private File logDirBasePath = null;
    private final ReadWriteLock fileLock = new ReentrantReadWriteLock();
    private final SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_PATTERN, Locale.getDefault());
    private volatile boolean isSetEnabled = false;
    private volatile boolean isEnabledAll = false;
    private volatile boolean isSetEnabledAll = false;
    private volatile boolean isEnabled = false;
    private volatile long maxTotalSize = 10485760;
    private volatile boolean isReuseActiveFile = true;
    private volatile boolean isSetReuseActiveFile = false;
    private volatile String currentProcessType = PROCESS_TYPE_UNKNOWN;
    private volatile boolean isProcessTypeSet = false;
    private final LinkedList<MTLogEntry> memoryCacheList = new LinkedList<>();
    private final int MAX_MEMORY_CACHE_SIZE = 1000;
    private volatile long currentFileSize = 0;
    private boolean isInitLogFile = false;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MTLogCache.this.initLogFile();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MTLogCache.this.initLogFile();
            MTLogCache.this.switchToNewLogFileSync();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MTLogEntry f1214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f1215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f1216c;

        public c(MTLogEntry mTLogEntry, String str, String str2) {
            this.f1214a = mTLogEntry;
            this.f1215b = str;
            this.f1216c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MTLogCache.this.isOK()) {
                MTLogCache.this.initLogFile();
                MTLogCache.this.flushMemoryCache();
                MTLogCache.this.writeLogSync(this.f1214a);
                return;
            }
            MTLogCache.this.addToMemoryCache(this.f1214a);
            Log.d(MTLogCache.TAG, "Process type not set, log cached to memory: " + this.f1215b + " - " + this.f1216c);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class d implements Comparator<File> {
        public d(MTLogCache mTLogCache) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified();
            long jLastModified2 = file2.lastModified();
            if (jLastModified < jLastModified2) {
                return 1;
            }
            return jLastModified == jLastModified2 ? 0 : -1;
        }
    }

    private MTLogCache() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addToMemoryCache(MTLogEntry mTLogEntry) {
        synchronized (this.memoryCacheList) {
            try {
                this.memoryCacheList.addLast(mTLogEntry);
                if (this.memoryCacheList.size() > 1000) {
                    this.memoryCacheList.removeFirst();
                    Log.w(TAG, "Memory cache exceeded max size, removed oldest entry");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void cleanupOldLogFiles() {
        File logPath = getLogPath();
        if (logPath == null || !logPath.exists()) {
            return;
        }
        try {
            List<File> allLogFiles = getAllLogFiles();
            Iterator<File> it = allLogFiles.iterator();
            long length = 0;
            while (it.hasNext()) {
                length += it.next().length();
            }
            if (length > this.maxTotalSize) {
                Log.i(TAG, "Total log files size (" + length + " bytes) exceeds limit (" + this.maxTotalSize + " bytes), cleaning up...");
                for (int size = allLogFiles.size() + (-1); size >= 0; size--) {
                    File file = allLogFiles.get(size);
                    long length2 = file.length();
                    if (file.exists() && file.delete()) {
                        length -= length2;
                        Log.i(TAG, "Deleted old log file: " + file.getName() + " (size: " + length2 + " bytes)");
                        if (length <= this.maxTotalSize) {
                            return;
                        }
                    }
                }
            }
        } catch (Exception e9) {
            Log.e(TAG, "cleanupOldLogFiles failed: " + e9.getMessage());
        }
    }

    private void clearAllLogsSync() {
        File[] fileArrListFiles;
        this.fileLock.writeLock().lock();
        try {
            try {
                closeCurrentWriter();
                File logPath = getLogPath();
                if (logPath != null && logPath.exists() && (fileArrListFiles = logPath.listFiles()) != null) {
                    for (File file : fileArrListFiles) {
                        if (file.isFile()) {
                            file.delete();
                        }
                    }
                }
                this.currentLogFile = null;
                this.currentFileSize = 0L;
            } catch (Exception e9) {
                Log.e(TAG, "clearAllLogsSync failed: " + e9.getMessage());
            }
            this.fileLock.writeLock().unlock();
        } catch (Throwable th) {
            this.fileLock.writeLock().unlock();
            throw th;
        }
    }

    private boolean clearMemoryCacheList() {
        synchronized (this.memoryCacheList) {
            try {
                if (this.memoryCacheList.isEmpty()) {
                    return true;
                }
                this.memoryCacheList.clear();
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void closeCurrentWriter() {
        BufferedWriter bufferedWriter = this.currentWriter;
        if (bufferedWriter != null) {
            try {
                bufferedWriter.close();
            } catch (IOException e9) {
                Log.e(TAG, "closeCurrentWriter failed: " + e9.getMessage());
            }
            this.currentWriter = null;
        }
    }

    private void closeCurrentWriterAndMarkFile() {
        closeCurrentWriter();
        File file = this.currentLogFile;
        if (file == null || !file.exists()) {
            return;
        }
        markFileAsClosed(this.currentLogFile);
        this.currentLogFile = null;
    }

    private void createNewWriter() {
        try {
            if (this.currentLogFile != null) {
                this.currentWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.currentLogFile, true), FILE_ENCODING));
            }
        } catch (Exception e9) {
            Log.e(TAG, "createNewWriter failed: " + e9.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushMemoryCache() {
        synchronized (this.memoryCacheList) {
            try {
                if (this.memoryCacheList.isEmpty()) {
                    return;
                }
                Log.i(TAG, "Flushing " + this.memoryCacheList.size() + " cached entries to file");
                Iterator<MTLogEntry> it = this.memoryCacheList.iterator();
                while (it.hasNext()) {
                    writeLogSync(it.next());
                }
                this.memoryCacheList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private String formatLogEntry(MTLogEntry mTLogEntry) {
        return this.dateFormat.format(new Date(mTLogEntry.getTimestamp())) + " " + mTLogEntry.getProcessId() + " " + mTLogEntry.getThreadId() + " " + mTLogEntry.getProcessType() + " " + mTLogEntry.getLevel() + " " + mTLogEntry.getTag() + ": " + mTLogEntry.getMessage();
    }

    private List<File> getAllActiveLogFiles() {
        List<File> allLogFiles = getAllLogFiles();
        ArrayList arrayList = new ArrayList();
        for (File file : allLogFiles) {
            if (isActiveLogFile(file)) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    private List<File> getAllLogFiles() {
        File logPath = getLogPath();
        if (logPath == null || !logPath.exists()) {
            return new ArrayList();
        }
        File[] fileArrListFiles = logPath.listFiles();
        if (fileArrListFiles == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            if (file.isFile() && file.getName().endsWith(LOG_FILE_EXTENSION)) {
                arrayList.add(file);
            }
        }
        Collections.sort(arrayList, new d(this));
        return arrayList;
    }

    private File getCurrentProcessActiveLogFile() {
        File[] fileArrListFiles;
        File logPath = getLogPath();
        if (logPath == null || !logPath.exists() || (fileArrListFiles = logPath.listFiles()) == null) {
            return null;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile() && isCurrentProcessActiveLogFile(file)) {
                return file;
            }
        }
        return null;
    }

    private String getCurrentProcessType() {
        return this.currentProcessType;
    }

    private long getCurrentTotalSize() {
        File logPath = getLogPath();
        if (logPath != null && logPath.exists()) {
            try {
                Iterator<File> it = getAllLogFiles().iterator();
                long length = 0;
                while (it.hasNext()) {
                    length += it.next().length();
                }
                return length;
            } catch (Exception e9) {
                Log.e(TAG, "getCurrentTotalSize failed: " + e9.getMessage());
            }
        }
        return 0L;
    }

    public static MTLogCache getInstance() {
        if (instance == null) {
            synchronized (LOCK) {
                try {
                    if (instance == null) {
                        instance = new MTLogCache();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    private File getLogPath() {
        File file = this.logDirBasePath;
        if (file == null) {
            StringBuilder sb = new StringBuilder(LOG_DIR_PREFIX);
            String str = File.separator;
            sb.append(str);
            sb.append(this.context.getPackageName());
            sb.append(str);
            sb.append(LOG_DIR_NAME);
            File file2 = new File(this.context.getFilesDir(), sb.toString());
            if (!file2.exists()) {
                file2.mkdirs();
            }
            this.logDirBasePath = file2;
        } else if (!file.exists()) {
            this.logDirBasePath.mkdirs();
        }
        return this.logDirBasePath;
    }

    private synchronized ExecutorService getWriteExecutor() {
        try {
            if (this.writeExecutor == null) {
                this.writeExecutor = Executors.newSingleThreadExecutor();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.writeExecutor;
    }

    private void initImp() {
        if (isOK()) {
            getWriteExecutor().submit(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initLogFile() {
        if (this.context == null || this.isInitLogFile) {
            return;
        }
        try {
            cleanupOldLogFiles();
            File currentProcessActiveLogFile = getCurrentProcessActiveLogFile();
            if (this.isReuseActiveFile && currentProcessActiveLogFile != null && currentProcessActiveLogFile.exists()) {
                long length = currentProcessActiveLogFile.length();
                if (length < MAX_FILE_SIZE) {
                    this.currentLogFile = currentProcessActiveLogFile;
                    this.currentFileSize = length;
                    createNewWriter();
                    Log.i(TAG, "Reusing active file: " + currentProcessActiveLogFile.getName() + " (size: " + length + " bytes)");
                } else {
                    markFileAsClosed(currentProcessActiveLogFile);
                    switchToNewLogFileSync();
                    Log.i(TAG, "Active file size exceeds limit, creating new file: " + currentProcessActiveLogFile.getName() + " (size: " + length + " bytes)");
                }
            } else {
                if (currentProcessActiveLogFile != null) {
                    markFileAsClosed(currentProcessActiveLogFile);
                }
                switchToNewLogFileSync();
                Log.i(TAG, "Creating new log file (reuse disabled or no active file found)");
            }
            flushMemoryCache();
            this.isInitLogFile = true;
        } catch (Exception e9) {
            Log.e(TAG, "initLogDirectory failed: " + e9.getMessage());
        }
    }

    private boolean isActiveLogFile(File file) {
        if (file != null && file.exists()) {
            String name = file.getName();
            if (name.startsWith(LOG_FILE_PREFIX) && name.contains(FILE_STATUS_ACTIVE)) {
                return true;
            }
        }
        return false;
    }

    private boolean isClosedLogFile(File file) {
        if (file != null && file.exists()) {
            String name = file.getName();
            if (name.startsWith(LOG_FILE_PREFIX) && name.contains(FILE_STATUS_CLOSED)) {
                return true;
            }
        }
        return false;
    }

    private boolean isCurrentProcessActiveLogFile(File file) {
        if (file != null && file.exists()) {
            String name = file.getName();
            if (name.startsWith(LOG_FILE_PREFIX) && name.endsWith("_ACTIVE.log") && isCurrentProcessLogFile(file)) {
                return true;
            }
        }
        return false;
    }

    private boolean isCurrentProcessLogFile(File file) {
        if (file != null && file.exists()) {
            String name = file.getName();
            if (name.startsWith(LOG_FILE_PREFIX) && name.endsWith(LOG_FILE_EXTENSION)) {
                try {
                    String[] strArrSplit = name.substring(0, name.lastIndexOf(LOG_FILE_EXTENSION)).split("_");
                    if (strArrSplit.length >= 4) {
                        return strArrSplit[strArrSplit.length - 2].equals(getCurrentProcessType());
                    }
                } catch (Exception unused) {
                    Log.w(TAG, "Failed to parse process type from file name: ".concat(name));
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOK() {
        return this.context != null && this.isEnabled && this.isProcessTypeSet && this.isSetReuseActiveFile;
    }

    private void markFileAsClosed(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            String name = file.getName();
            if (name.contains(FILE_STATUS_ACTIVE)) {
                String strReplace = name.replace(FILE_STATUS_ACTIVE, FILE_STATUS_CLOSED);
                if (!file.renameTo(new File(file.getParent(), strReplace))) {
                    Log.w(TAG, "Failed to mark file as closed: ".concat(name));
                    return;
                }
                Log.i(TAG, "Marked file as closed: " + name + " -> " + strReplace);
            }
        } catch (Exception e9) {
            Log.e(TAG, "markFileAsClosed failed: " + e9.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToNewLogFileSync() {
        File logPath = getLogPath();
        if (logPath == null) {
            Log.w(TAG, "switchToNewLogFileSync: logDir not ready");
            return;
        }
        this.fileLock.writeLock().lock();
        try {
            try {
                String str = TAG;
                Log.d(str, "currentLogFile : " + this.currentLogFile);
                closeCurrentWriterAndMarkFile();
                this.currentLogFile = new File(logPath, LOG_FILE_PREFIX + new SimpleDateFormat(TIMESTAMP_FORMAT_PATTERN, Locale.getDefault()).format(new Date()) + "_" + getCurrentProcessType() + "_ACTIVE.log");
                this.currentFileSize = 0L;
                StringBuilder sb = new StringBuilder("currentLogFile 1: ");
                sb.append(this.currentLogFile);
                Log.d(str, sb.toString());
                createNewWriter();
                cleanupOldLogFiles();
            } catch (Exception e9) {
                Log.e(TAG, "switchToNewLogFileSync failed: " + e9.getMessage());
            }
        } finally {
            this.fileLock.writeLock().unlock();
        }
    }

    private void writeLog(String str, String str2, String str3) {
        if (!this.isSetEnabled) {
            addToMemoryCache(new MTLogEntry(str, str2, str3, getCurrentProcessType()));
        } else if (!this.isEnabled) {
            clearMemoryCacheList();
        } else {
            getWriteExecutor().submit(new c(new MTLogEntry(str, str2, str3, getCurrentProcessType()), str2, str3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeLogSync(MTLogEntry mTLogEntry) {
        if (getLogPath() == null) {
            Log.w(TAG, "writeLogSync: logDir not ready, entry ignored");
            return;
        }
        this.fileLock.readLock().lock();
        try {
            try {
            } catch (Exception e9) {
                Log.e(TAG, "writeLogSync failed: " + e9.getMessage());
            }
            if (this.currentWriter == null) {
                Log.w(TAG, "writeLogSync: currentWriter is null");
                return;
            }
            if (this.currentFileSize >= MAX_FILE_SIZE) {
                this.fileLock.readLock().unlock();
                switchToNewLogFileSync();
                this.fileLock.readLock().lock();
                if (this.currentWriter == null) {
                    return;
                }
            }
            String logEntry = formatLogEntry(mTLogEntry);
            this.currentWriter.write(logEntry);
            this.currentWriter.newLine();
            this.currentWriter.flush();
            this.currentFileSize += (long) (logEntry.getBytes(FILE_ENCODING).length + System.getProperty(LINE_SEPARATOR_PROPERTY).getBytes(FILE_ENCODING).length);
        } finally {
            this.fileLock.readLock().unlock();
        }
    }

    public void d(String str, String str2) {
        writeLog("D", str, str2);
    }

    public void debug(String str, String str2) {
        if (this.isEnabledAll) {
            writeLog("D", str, str2);
        }
    }

    public void e(String str, String str2) {
        writeLog("E", str, str2);
    }

    public List<File> getAllClosedLogFiles() {
        List<File> allLogFiles = getAllLogFiles();
        ArrayList arrayList = new ArrayList();
        for (File file : allLogFiles) {
            if (isClosedLogFile(file)) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public long getMaxTotalSize() {
        return this.maxTotalSize;
    }

    public void i(String str, String str2) {
        writeLog("I", str, str2);
    }

    public void init(Context context) {
        this.context = context.getApplicationContext();
        initImp();
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isProcessTypeSet() {
        return this.isProcessTypeSet;
    }

    public void setEnabled(boolean z5) {
        this.isEnabled = z5;
        this.isSetEnabled = true;
        initImp();
    }

    public void setEnabledAll(boolean z5) {
        this.isEnabledAll = z5;
        this.isSetEnabledAll = true;
    }

    public void setMaxTotalSize(long j3) {
        if (j3 >= 1) {
            this.maxTotalSize = j3 * MAX_FILE_SIZE;
        }
    }

    public void setProcessType(boolean z5) {
        this.currentProcessType = z5 ? PROCESS_TYPE_MAIN : PROCESS_TYPE_SUB;
        this.isProcessTypeSet = true;
        Log.i(TAG, "Process type set to: " + this.currentProcessType);
        initImp();
    }

    public void setReuseActiveFile(boolean z5) {
        this.isReuseActiveFile = z5;
        this.isSetReuseActiveFile = true;
        Log.i(TAG, "Reuse active file setting changed to: " + z5);
    }

    public void switchToNewLogFile() {
        if (isOK()) {
            getWriteExecutor().submit(new b());
        }
    }

    public void w(String str, String str2) {
        writeLog("W", str, str2);
    }
}
