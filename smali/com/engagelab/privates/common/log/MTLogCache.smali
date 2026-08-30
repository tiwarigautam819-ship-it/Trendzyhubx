###### Class com.engagelab.privates.common.log.MTLogCache (com.engagelab.privates.common.log.MTLogCache)
.class public Lcom/engagelab/privates/common/log/MTLogCache;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field private static final FILE_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final FILE_STATUS_ACTIVE:Ljava/lang/String; = "_ACTIVE"

.field private static final FILE_STATUS_CLOSED:Ljava/lang/String; = "_CLOSED"

.field private static final LINE_SEPARATOR_PROPERTY:Ljava/lang/String; = "line.separator"

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_DIR_NAME:Ljava/lang/String; = "tmp_log"

.field private static final LOG_DIR_PREFIX:Ljava/lang/String; = "com_engagelab_l_r"

.field private static final LOG_FILE_EXTENSION:Ljava/lang/String; = ".log"

.field private static final LOG_FILE_PREFIX:Ljava/lang/String; = "log_"

.field private static final MAX_FILE_SIZE:J = 0x100000L

.field private static final PROCESS_TYPE_MAIN:Ljava/lang/String; = "MAIN"

.field private static final PROCESS_TYPE_SUB:Ljava/lang/String; = "SUB"

.field private static final PROCESS_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMESTAMP_FORMAT_PATTERN:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field private static volatile instance:Lcom/engagelab/privates/common/log/MTLogCache;


# instance fields
.field private final MAX_MEMORY_CACHE_SIZE:I

.field private context:Landroid/content/Context;

.field private volatile currentFileSize:J

.field private currentLogFile:Ljava/io/File;

.field private volatile currentProcessType:Ljava/lang/String;

.field private currentWriter:Ljava/io/BufferedWriter;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile isEnabled:Z

.field private volatile isEnabledAll:Z

.field private isInitLogFile:Z

.field private volatile isProcessTypeSet:Z

.field private volatile isReuseActiveFile:Z

.field private volatile isSetEnabled:Z

.field private volatile isSetEnabledAll:Z

.field private volatile isSetReuseActiveFile:Z

.field private logDirBasePath:Ljava/io/File;

.field private volatile maxTotalSize:J

.field private final memoryCacheList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/engagelab/privates/common/log/MTLogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile writeExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "MTLogCache"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->LOCK:Ljava/lang/Object;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->logDirBasePath:Ljava/io/File;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 13
    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetEnabled:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabledAll:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetEnabledAll:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabled:Z

    .line 35
    .line 36
    const-wide/32 v1, 0xa00000

    .line 37
    .line 38
    .line 39
    iput-wide v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->maxTotalSize:J

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isReuseActiveFile:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetReuseActiveFile:Z

    .line 45
    .line 46
    const-string v1, "UNKNOWN"

    .line 47
    .line 48
    iput-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentProcessType:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isProcessTypeSet:Z

    .line 51
    .line 52
    new-instance v1, Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 58
    .line 59
    const/16 v1, 0x3e8

    .line 60
    .line 61
    iput v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->MAX_MEMORY_CACHE_SIZE:I

    .line 62
    .line 63
    const-wide/16 v1, 0x0

    .line 64
    .line 65
    iput-wide v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isInitLogFile:Z

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic access$000(Lcom/engagelab/privates/common/log/MTLogCache;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->initLogFile()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/engagelab/privates/common/log/MTLogCache;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->switchToNewLogFileSync()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/engagelab/privates/common/log/MTLogCache;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->isOK()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/engagelab/privates/common/log/MTLogCache;Lcom/engagelab/privates/common/log/MTLogEntry;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/log/MTLogCache;->addToMemoryCache(Lcom/engagelab/privates/common/log/MTLogEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500(Lcom/engagelab/privates/common/log/MTLogCache;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->flushMemoryCache()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/engagelab/privates/common/log/MTLogCache;Lcom/engagelab/privates/common/log/MTLogEntry;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLogSync(Lcom/engagelab/privates/common/log/MTLogEntry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addToMemoryCache(Lcom/engagelab/privates/common/log/MTLogEntry;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x3e8

    .line 16
    .line 17
    if-le p1, v1, :cond_21

    .line 18
    .line 19
    iget-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Memory cache exceeded max size, removed oldest entry"

    .line 27
    .line 28
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_21

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    :goto_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw p1
.end method

.method private cleanupOldLogFiles()V
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_bf

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    goto/16 :goto_bf

    .line 14
    .line 15
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getAllLogFiles()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2d

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    add-long/2addr v2, v4

    .line 42
    goto :goto_18

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    goto/16 :goto_a8

    .line 45
    .line 46
    :cond_2d
    iget-wide v4, p0, Lcom/engagelab/privates/common/log/MTLogCache;->maxTotalSize:J

    .line 47
    .line 48
    cmp-long v1, v2, v4

    .line 49
    .line 50
    if-lez v1, :cond_bf

    .line 51
    .line 52
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v5, "Total log files size ("

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v5, " bytes) exceeds limit ("

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-wide v5, p0, Lcom/engagelab/privates/common/log/MTLogCache;->maxTotalSize:J

    .line 73
    .line 74
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, " bytes), cleaning up..."

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    :goto_5e
    if-ltz v1, :cond_bf

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/io/File;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_a5

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_a5

    .line 118
    .line 119
    sub-long/2addr v2, v5

    .line 120
    sget-object v7, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v9, "Deleted old log file: "

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, " (size: "

    .line 140
    .line 141
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, " bytes)"

    .line 148
    .line 149
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-wide v4, p0, Lcom/engagelab/privates/common/log/MTLogCache;->maxTotalSize:J
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a0} :catch_2a

    .line 160
    .line 161
    cmp-long v4, v2, v4

    .line 162
    .line 163
    if-gtz v4, :cond_a5

    .line 164
    .line 165
    goto :goto_bf

    .line 166
    :cond_a5
    add-int/lit8 v1, v1, -0x1

    .line 167
    .line 168
    goto :goto_5e

    .line 169
    :goto_a8
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v3, "cleanupOldLogFiles failed: "

    .line 174
    .line 175
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_bf
    :goto_bf
    return-void
.end method

.method private clearAllLogsSync()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_9
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->closeCurrentWriter()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_35

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_35

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_35

    .line 30
    .line 31
    array-length v1, v0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_20
    if-ge v2, v1, :cond_35

    .line 34
    .line 35
    aget-object v3, v0, v2

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_32

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 44
    .line 45
    .line 46
    goto :goto_32

    .line 47
    :catchall_2e
    move-exception v0

    .line 48
    goto :goto_61

    .line 49
    :catch_30
    move-exception v0

    .line 50
    goto :goto_3d

    .line 51
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_20

    .line 54
    :cond_35
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 56
    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    iput-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3c} :catch_30
    .catchall {:try_start_9 .. :try_end_3c} :catchall_2e

    .line 60
    .line 61
    goto :goto_57

    .line 62
    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "clearAllLogsSync failed: "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_2e

    .line 86
    .line 87
    .line 88
    :goto_57
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_61
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 105
    .line 106
    .line 107
    throw v0
.end method

.method private clearMemoryCacheList()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_10

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    .line 26
    throw v1
.end method

.method private closeCurrentWriter()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_23

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 6
    .line 7
    .line 8
    goto :goto_20

    .line 9
    :catch_8
    move-exception v0

    .line 10
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "closeCurrentWriter failed: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_20
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;

    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method private closeCurrentWriterAndMarkFile()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->closeCurrentWriter()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 5
    .line 6
    if-eqz v0, :cond_15

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 13
    .line 14
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/engagelab/privates/common/log/MTLogCache;->markFileAsClosed(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method private createNewWriter()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_1d

    .line 4
    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 14
    .line 15
    const-string v2, "UTF-8"

    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/BufferedWriter;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 26
    .line 27
    return-void

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    return-void

    .line 31
    :goto_1e
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "createNewWriter failed: "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private flushMemoryCache()V
    .registers 5

    .line 1
    const-string v0, "Flushing "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_11

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    goto :goto_4a

    .line 18
    :cond_11
    sget-object v2, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " cached entries to file"

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_43

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 63
    .line 64
    invoke-direct {p0, v2}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLogSync(Lcom/engagelab/privates/common/log/MTLogEntry;)V

    .line 65
    .line 66
    .line 67
    goto :goto_33

    .line 68
    :cond_43
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->memoryCacheList:Ljava/util/LinkedList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 71
    .line 72
    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_f

    .line 76
    throw v0
.end method

.method private formatLogEntry(Lcom/engagelab/privates/common/log/MTLogEntry;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    new-instance v2, Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getTimestamp()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getProcessId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getThreadId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getProcessType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getLevel()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getTag()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ": "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogEntry;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method private getAllActiveLogFiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getAllLogFiles()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_23

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {p0, v2}, Lcom/engagelab/privates/common/log/MTLogCache;->isActiveLogFile(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_d

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_d

    .line 36
    :cond_23
    return-object v1
.end method

.method private getAllLogFiles()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_45

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    goto :goto_45

    .line 14
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_19

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    array-length v2, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_20
    if-ge v3, v2, :cond_3c

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_39

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v6, ".log"

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_39

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_39
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_20

    .line 61
    :cond_3c
    new-instance v0, Lcom/engagelab/privates/common/log/MTLogCache$d;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/engagelab/privates/common/log/MTLogCache$d;-><init>(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_45
    :goto_45
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method private getCurrentProcessActiveLogFile()Ljava/io/File;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2b

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_e

    .line 13
    .line 14
    goto :goto_2b

    .line 15
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_15
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_17
    if-ge v3, v2, :cond_2b

    .line 25
    .line 26
    aget-object v4, v0, v3

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_28

    .line 33
    .line 34
    invoke-direct {p0, v4}, Lcom/engagelab/privates/common/log/MTLogCache;->isCurrentProcessActiveLogFile(Ljava/io/File;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_28

    .line 39
    .line 40
    return-object v4

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_17

    .line 44
    :cond_2b
    :goto_2b
    return-object v1
.end method

.method private getCurrentProcessType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentProcessType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getCurrentTotalSize()J
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_44

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_44

    .line 16
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getAllLogFiles()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-wide v3, v1

    .line 25
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_2c

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2a

    .line 41
    add-long/2addr v3, v5

    .line 42
    goto :goto_18

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    return-wide v3

    .line 46
    :goto_2d
    sget-object v3, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v5, "getCurrentTotalSize failed: "

    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_44
    :goto_44
    return-wide v1
.end method

.method public static getInstance()Lcom/engagelab/privates/common/log/MTLogCache;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->instance:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->LOCK:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->instance:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 9
    .line 10
    if-nez v1, :cond_15

    .line 11
    .line 12
    new-instance v1, Lcom/engagelab/privates/common/log/MTLogCache;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/engagelab/privates/common/log/MTLogCache;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->instance:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    :goto_15
    monitor-exit v0

    .line 23
    goto :goto_19

    .line 24
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    .line 25
    throw v1

    .line 26
    :cond_19
    :goto_19
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->instance:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 27
    .line 28
    return-object v0
.end method

.method private getLogPath()Ljava/io/File;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->logDirBasePath:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_3c

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "com_engagelab_l_r"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "tmp_log"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_39

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 56
    .line 57
    .line 58
    :cond_39
    iput-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->logDirBasePath:Ljava/io/File;

    .line 59
    .line 60
    goto :goto_47

    .line 61
    :cond_3c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_47

    .line 66
    .line 67
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->logDirBasePath:Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    .line 71
    .line 72
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->logDirBasePath:Ljava/io/File;

    .line 73
    .line 74
    return-object v0
.end method

.method private declared-synchronized getWriteExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->writeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_e

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->writeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    goto :goto_e

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->writeExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_c

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_c

    .line 20
    throw v0
.end method

.method private initImp()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->isOK()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getWriteExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/engagelab/privates/common/log/MTLogCache$a;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/engagelab/privates/common/log/MTLogCache$a;-><init>(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private initLogFile()V
    .registers 9

    .line 1
    const-string v0, "Active file size exceeds limit, creating new file: "

    .line 2
    .line 3
    const-string v1, "Reusing active file: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->context:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_9

    .line 8
    .line 9
    goto :goto_d

    .line 10
    :cond_9
    iget-boolean v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isInitLogFile:Z

    .line 11
    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    :goto_d
    return-void

    .line 15
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->cleanupOldLogFiles()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getCurrentProcessActiveLogFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-boolean v3, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isReuseActiveFile:Z

    .line 23
    .line 24
    if-eqz v3, :cond_7d

    .line 25
    .line 26
    if-eqz v2, :cond_7d

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_7d

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_56

    .line 38
    const-wide/32 v5, 0x100000

    .line 39
    .line 40
    .line 41
    cmp-long v5, v3, v5

    .line 42
    .line 43
    const-string v6, " bytes)"

    .line 44
    .line 45
    const-string v7, " (size: "

    .line 46
    .line 47
    if-gez v5, :cond_58

    .line 48
    .line 49
    :try_start_30
    iput-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 50
    .line 51
    iput-wide v3, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->createNewWriter()V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_8c

    .line 87
    :catch_56
    move-exception v0

    .line 88
    goto :goto_93

    .line 89
    :cond_58
    invoke-direct {p0, v2}, Lcom/engagelab/privates/common/log/MTLogCache;->markFileAsClosed(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->switchToNewLogFileSync()V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_8c

    .line 126
    :cond_7d
    if-eqz v2, :cond_82

    .line 127
    .line 128
    invoke-direct {p0, v2}, Lcom/engagelab/privates/common/log/MTLogCache;->markFileAsClosed(Ljava/io/File;)V

    .line 129
    .line 130
    .line 131
    :cond_82
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->switchToNewLogFileSync()V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    const-string v1, "Creating new log file (reuse disabled or no active file found)"

    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_8c
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->flushMemoryCache()V

    .line 142
    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isInitLogFile:Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_92} :catch_56

    .line 146
    .line 147
    return-void

    .line 148
    :goto_93
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v3, "initLogDirectory failed: "

    .line 153
    .line 154
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method private isActiveLogFile(Ljava/io/File;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_20

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    goto :goto_20

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "log_"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 22
    .line 23
    const-string v1, "_ACTIVE"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_20

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_20
    :goto_20
    return v0
.end method

.method private isClosedLogFile(Ljava/io/File;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_20

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    goto :goto_20

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "log_"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 22
    .line 23
    const-string v1, "_CLOSED"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_20

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_20
    :goto_20
    return v0
.end method

.method private isCurrentProcessActiveLogFile(Ljava/io/File;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_26

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    goto :goto_26

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "log_"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_26

    .line 22
    .line 23
    const-string v2, "_ACTIVE.log"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_26

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/log/MTLogCache;->isCurrentProcessLogFile(Ljava/io/File;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_26

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_26
    :goto_26
    return v0
.end method

.method private isCurrentProcessLogFile(Ljava/io/File;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4a

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    goto :goto_4a

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "log_"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4a

    .line 22
    .line 23
    const-string v1, ".log"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1f

    .line 30
    .line 31
    goto :goto_4a

    .line 32
    :cond_1f
    :try_start_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "_"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    array-length v2, v1

    .line 47
    const/4 v3, 0x4

    .line 48
    if-lt v2, v3, :cond_4a

    .line 49
    .line 50
    array-length v2, v1

    .line 51
    add-int/lit8 v2, v2, -0x2

    .line 52
    .line 53
    aget-object v1, v1, v2

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getCurrentProcessType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3e} :catch_3f

    .line 63
    return p1

    .line 64
    :catch_3f
    sget-object v1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, "Failed to parse process type from file name: "

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_4a
    :goto_4a
    return v0
.end method

.method private isOK()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    return v1

    .line 12
    :cond_b
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isProcessTypeSet:Z

    .line 13
    .line 14
    if-nez v0, :cond_10

    .line 15
    .line 16
    return v1

    .line 17
    :cond_10
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetReuseActiveFile:Z

    .line 18
    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return v1

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method private markFileAsClosed(Ljava/io/File;)V
    .registers 8

    .line 1
    const-string v0, "_ACTIVE"

    .line 2
    .line 3
    const-string v1, "Failed to mark file as closed: "

    .line 4
    .line 5
    const-string v2, "Marked file as closed: "

    .line 6
    .line 7
    if-eqz p1, :cond_6b

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_f

    .line 14
    .line 15
    goto :goto_6b

    .line 16
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_6b

    .line 25
    .line 26
    const-string v4, "_CLOSED"

    .line 27
    .line 28
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v4, Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4a

    .line 46
    .line 47
    sget-object p1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " -> "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_48
    move-exception p1

    .line 74
    goto :goto_54

    .line 75
    :cond_4a
    sget-object p1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_53} :catch_48

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_54
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "markFileAsClosed failed: "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_6b
    :goto_6b
    return-void
.end method

.method private switchToNewLogFileSync()V
    .registers 10

    .line 1
    const-string v0, "switchToNewLogFileSync failed: "

    .line 2
    .line 3
    const-string v1, "currentLogFile 1: "

    .line 4
    .line 5
    const-string v2, "_ACTIVE.log"

    .line 6
    .line 7
    const-string v3, "log_"

    .line 8
    .line 9
    const-string v4, "currentLogFile : "

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    if-nez v5, :cond_18

    .line 16
    .line 17
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "switchToNewLogFileSync: logDir not ready"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v6, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 26
    .line 27
    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    .line 33
    .line 34
    :try_start_21
    sget-object v6, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->closeCurrentWriterAndMarkFile()V

    .line 54
    .line 55
    .line 56
    new-instance v4, Ljava/text/SimpleDateFormat;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_39} :catch_8b
    .catchall {:try_start_21 .. :try_end_39} :catchall_89

    .line 57
    .line 58
    const-string v7, "yyyyMMdd_HHmmss"

    .line 59
    .line 60
    :try_start_3b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 65
    .line 66
    .line 67
    new-instance v7, Ljava/util/Date;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getCurrentProcessType()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, "_"

    .line 89
    .line 90
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-object v3, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 109
    .line 110
    const-wide/16 v2, 0x0

    .line 111
    .line 112
    iput-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J

    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentLogFile:Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->createNewWriter()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->cleanupOldLogFiles()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_88} :catch_8b
    .catchall {:try_start_3b .. :try_end_88} :catchall_89

    .line 135
    .line 136
    .line 137
    goto :goto_a1

    .line 138
    :catchall_89
    move-exception v0

    .line 139
    goto :goto_ab

    .line 140
    :catch_8b
    move-exception v1

    .line 141
    :try_start_8c
    sget-object v2, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_8c .. :try_end_a1} :catchall_89

    .line 160
    .line 161
    .line 162
    :goto_a1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :goto_ab
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    .line 180
    .line 181
    throw v0
.end method

.method private writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    new-instance v0, Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getCurrentProcessType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/engagelab/privates/common/log/MTLogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/engagelab/privates/common/log/MTLogCache;->addToMemoryCache(Lcom/engagelab/privates/common/log/MTLogEntry;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabled:Z

    .line 19
    .line 20
    if-nez v0, :cond_19

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->clearMemoryCacheList()Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    new-instance v0, Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getCurrentProcessType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/engagelab/privates/common/log/MTLogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getWriteExecutor()Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lcom/engagelab/privates/common/log/MTLogCache$c;

    .line 40
    .line 41
    invoke-direct {v1, p0, v0, p2, p3}, Lcom/engagelab/privates/common/log/MTLogCache$c;-><init>(Lcom/engagelab/privates/common/log/MTLogCache;Lcom/engagelab/privates/common/log/MTLogEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private writeLogSync(Lcom/engagelab/privates/common/log/MTLogEntry;)V
    .registers 8

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    const-string v1, "writeLogSync failed: "

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getLogPath()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_12

    .line 10
    .line 11
    sget-object p1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "writeLogSync: logDir not ready, entry ignored"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_1b
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;

    .line 29
    .line 30
    if-nez v2, :cond_35

    .line 31
    .line 32
    sget-object p1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "writeLogSync: currentWriter is null"

    .line 35
    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_33
    .catchall {:try_start_1b .. :try_end_26} :catchall_30

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    goto/16 :goto_ab

    .line 51
    .line 52
    :catch_33
    move-exception p1

    .line 53
    goto :goto_8c

    .line 54
    :cond_35
    :try_start_35
    iget-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J

    .line 55
    .line 56
    const-wide/32 v4, 0x100000

    .line 57
    .line 58
    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-ltz v2, :cond_61

    .line 62
    .line 63
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->switchToNewLogFileSync()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_55} :catch_33
    .catchall {:try_start_35 .. :try_end_55} :catchall_30

    .line 85
    .line 86
    if-nez v2, :cond_61

    .line 87
    .line 88
    iget-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    :try_start_61
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/log/MTLogCache;->formatLogEntry(Lcom/engagelab/privates/common/log/MTLogEntry;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentWriter:Ljava/io/BufferedWriter;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 115
    .line 116
    .line 117
    iget-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    array-length p1, p1

    .line 124
    const-string v4, "line.separator"

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    array-length v0, v0

    .line 135
    add-int/2addr p1, v0

    .line 136
    int-to-long v4, p1

    .line 137
    add-long/2addr v2, v4

    .line 138
    iput-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentFileSize:J
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8b} :catch_33
    .catchall {:try_start_61 .. :try_end_8b} :catchall_30

    .line 139
    .line 140
    goto :goto_a1

    .line 141
    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_8c .. :try_end_a1} :catchall_30

    .line 160
    .line 161
    .line 162
    :goto_a1
    iget-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :goto_ab
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->fileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    .line 180
    .line 181
    throw p1
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "D"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabledAll:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    const-string v0, "D"

    .line 6
    .line 7
    invoke-direct {p0, v0, p1, p2}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "E"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAllClosedLogFiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getAllLogFiles()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_23

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {p0, v2}, Lcom/engagelab/privates/common/log/MTLogCache;->isClosedLogFile(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_d

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_d

    .line 36
    :cond_23
    return-object v1
.end method

.method public getMaxTotalSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->maxTotalSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "I"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->initImp()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isProcessTypeSet()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isProcessTypeSet:Z

    .line 2
    .line 3
    return v0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabled:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetEnabled:Z

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->initImp()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setEnabledAll(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isEnabledAll:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetEnabledAll:Z

    .line 5
    .line 6
    return-void
.end method

.method public setMaxTotalSize(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_c

    .line 6
    .line 7
    const-wide/32 v0, 0x100000

    .line 8
    .line 9
    .line 10
    mul-long/2addr p1, v0

    .line 11
    iput-wide p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->maxTotalSize:J

    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public setProcessType(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const-string p1, "MAIN"

    .line 4
    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const-string p1, "SUB"

    .line 7
    .line 8
    :goto_7
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentProcessType:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isProcessTypeSet:Z

    .line 12
    .line 13
    sget-object p1, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Process type set to: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->currentProcessType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->initImp()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setReuseActiveFile(Z)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isReuseActiveFile:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogCache;->isSetReuseActiveFile:Z

    .line 5
    .line 6
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogCache;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Reuse active file setting changed to: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public switchToNewLogFile()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->isOK()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/engagelab/privates/common/log/MTLogCache;->getWriteExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/engagelab/privates/common/log/MTLogCache$b;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/engagelab/privates/common/log/MTLogCache$b;-><init>(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "W"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/engagelab/privates/common/log/MTLogCache;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogCache.a (com.engagelab.privates.common.log.MTLogCache$a)
.class public Lcom/engagelab/privates/common/log/MTLogCache$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/log/MTLogCache;->initImp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/log/MTLogCache;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/log/MTLogCache;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache$a;->a:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$a;->a:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogCache;->access$000(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogCache.b (com.engagelab.privates.common.log.MTLogCache$b)
.class public Lcom/engagelab/privates/common/log/MTLogCache$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/log/MTLogCache;->switchToNewLogFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/log/MTLogCache;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/log/MTLogCache;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache$b;->a:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$b;->a:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogCache;->access$000(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$b;->a:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogCache;->access$100(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogCache.c (com.engagelab.privates.common.log.MTLogCache$c)
.class public Lcom/engagelab/privates/common/log/MTLogCache$c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/log/MTLogCache;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/log/MTLogEntry;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/engagelab/privates/common/log/MTLogCache;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/log/MTLogCache;Lcom/engagelab/privates/common/log/MTLogEntry;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->d:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->a:Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->d:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogCache;->access$200(Lcom/engagelab/privates/common/log/MTLogCache;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_31

    .line 8
    .line 9
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->d:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->a:Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTLogCache;->access$300(Lcom/engagelab/privates/common/log/MTLogCache;Lcom/engagelab/privates/common/log/MTLogEntry;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/engagelab/privates/common/log/MTLogCache;->access$400()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Process type not set, log cached to memory: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " - "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->d:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogCache;->access$000(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->d:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogCache;->access$500(Lcom/engagelab/privates/common/log/MTLogCache;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->d:Lcom/engagelab/privates/common/log/MTLogCache;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogCache$c;->a:Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTLogCache;->access$600(Lcom/engagelab/privates/common/log/MTLogCache;Lcom/engagelab/privates/common/log/MTLogEntry;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogCache.d (com.engagelab.privates.common.log.MTLogCache$d)
.class public Lcom/engagelab/privates/common/log/MTLogCache$d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/log/MTLogCache;->getAllLogFiles()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/log/MTLogCache;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    cmp-long p1, v0, p1

    .line 10
    .line 11
    if-gez p1, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    if-nez p1, :cond_12

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, -0x1

    .line 20
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    check-cast p2, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/log/MTLogCache$d;->a(Ljava/io/File;Ljava/io/File;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
