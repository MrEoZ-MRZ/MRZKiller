.class Lxcrash/NativeHandler;
.super Ljava/lang/Object;
.source "NativeHandler.java"


# static fields
.field private static final instance:Lxcrash/NativeHandler;


# instance fields
.field private anrCallback:Lxcrash/ICrashCallback;

.field private anrCheckProcessState:Z

.field private anrEnable:Z

.field private anrTimeoutMs:J

.field private crashCallback:Lxcrash/ICrashCallback;

.field private crashRethrow:Z

.field private ctx:Landroid/content/Context;

.field private initNativeLibOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lxcrash/NativeHandler;

    invoke-direct {v0}, Lxcrash/NativeHandler;-><init>()V

    sput-object v0, Lxcrash/NativeHandler;->instance:Lxcrash/NativeHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    .line 38
    iput-wide v0, p0, Lxcrash/NativeHandler;->anrTimeoutMs:J

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lxcrash/NativeHandler;->initNativeLibOk:Z

    return-void
.end method

.method private static crashCallback(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 191
    invoke-static {p3, p4}, Lxcrash/NativeHandler;->getStacktraceByThreadName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "java stacktrace"

    .line 193
    invoke-static {p0, p3, p2}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    :cond_0
    invoke-static {}, Lxcrash/Util;->getProcessMemoryInfo()Ljava/lang/String;

    move-result-object p2

    const-string p3, "memory info"

    invoke-static {p0, p3, p2}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    invoke-static {}, Lxcrash/ActivityMonitor;->getInstance()Lxcrash/ActivityMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lxcrash/ActivityMonitor;->isApplicationForeground()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "yes"

    goto :goto_0

    :cond_1
    const-string p2, "no"

    :goto_0
    const-string p3, "foreground"

    invoke-static {p0, p3, p2}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    :cond_2
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object p2

    iget-object p2, p2, Lxcrash/NativeHandler;->crashCallback:Lxcrash/ICrashCallback;

    if-eqz p2, :cond_3

    .line 207
    :try_start_0
    invoke-interface {p2, p0, p1}, Lxcrash/ICrashCallback;->onCrash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 209
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p1

    const-string p2, "xcrash"

    const-string p3, "NativeHandler native crash callback.onCrash failed"

    invoke-interface {p1, p2, p3, p0}, Lxcrash/ILogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_3
    :goto_1
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object p0

    iget-boolean p0, p0, Lxcrash/NativeHandler;->crashRethrow:Z

    if-nez p0, :cond_4

    .line 214
    invoke-static {}, Lxcrash/ActivityMonitor;->getInstance()Lxcrash/ActivityMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lxcrash/ActivityMonitor;->finishAllActivities()V

    :cond_4
    return-void
.end method

.method static getInstance()Lxcrash/NativeHandler;
    .locals 1

    .line 53
    sget-object v0, Lxcrash/NativeHandler;->instance:Lxcrash/NativeHandler;

    return-object v0
.end method

.method private static getStacktraceByThreadName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 167
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-nez p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    const-string v3, "    at "

    .line 172
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 178
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p1

    const-string v0, "xcrash"

    const-string v1, "NativeHandler getStacktraceByThreadName failed"

    invoke-interface {p1, v0, v1, p0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I
.end method

.method private static native nativeNotifyJavaCrashed()V
.end method

.method private static native nativeTestCrash(I)V
.end method

.method private static traceCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-static {}, Lxcrash/Util;->getProcessMemoryInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "memory info"

    invoke-static {p0, v1, v0}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    invoke-static {}, Lxcrash/ActivityMonitor;->getInstance()Lxcrash/ActivityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lxcrash/ActivityMonitor;->isApplicationForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "yes"

    goto :goto_0

    :cond_1
    const-string v0, "no"

    :goto_0
    const-string v1, "foreground"

    invoke-static {p0, v1, v0}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object v0

    iget-boolean v0, v0, Lxcrash/NativeHandler;->anrCheckProcessState:Z

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object v0

    iget-object v0, v0, Lxcrash/NativeHandler;->ctx:Landroid/content/Context;

    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object v1

    iget-wide v1, v1, Lxcrash/NativeHandler;->anrTimeoutMs:J

    invoke-static {v0, v1, v2}, Lxcrash/Util;->checkProcessAnrState(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lxcrash/FileManager;->recycleLogFile(Ljava/io/File;)Z

    return-void

    .line 240
    :cond_2
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lxcrash/FileManager;->maintainAnr()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 245
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".anr.xcrash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 249
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lxcrash/FileManager;->recycleLogFile(Ljava/io/File;)Z

    return-void

    .line 253
    :cond_4
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object p0

    iget-object p0, p0, Lxcrash/NativeHandler;->anrCallback:Lxcrash/ICrashCallback;

    if-eqz p0, :cond_5

    .line 256
    :try_start_0
    invoke-interface {p0, v0, p1}, Lxcrash/ICrashCallback;->onCrash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 258
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p1

    const-string v0, "xcrash"

    const-string v1, "NativeHandler ANR callback.onCrash failed"

    invoke-interface {p1, v0, v1, p0}, Lxcrash/ILogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method initialize(Landroid/content/Context;Lxcrash/ILibLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lxcrash/ICrashCallback;ZZZIIIZZLxcrash/ICrashCallback;)I
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "NativeHandler init failed"

    const/4 v3, -0x2

    const-string v4, "xcrash"

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 88
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v0

    const-string v5, "NativeHandler System.loadLibrary failed"

    invoke-interface {v0, v4, v5, v2}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    .line 93
    :cond_0
    :try_start_1
    invoke-interface {v0, v4}, Lxcrash/ILibLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    move-object/from16 v0, p1

    .line 100
    iput-object v0, v1, Lxcrash/NativeHandler;->ctx:Landroid/content/Context;

    move/from16 v3, p7

    .line 101
    iput-boolean v3, v1, Lxcrash/NativeHandler;->crashRethrow:Z

    move-object/from16 v5, p18

    .line 102
    iput-object v5, v1, Lxcrash/NativeHandler;->crashCallback:Lxcrash/ICrashCallback;

    move/from16 v15, p19

    .line 103
    iput-boolean v15, v1, Lxcrash/NativeHandler;->anrEnable:Z

    move/from16 v5, p21

    .line 104
    iput-boolean v5, v1, Lxcrash/NativeHandler;->anrCheckProcessState:Z

    move-object/from16 v5, p27

    .line 105
    iput-object v5, v1, Lxcrash/NativeHandler;->anrCallback:Lxcrash/ICrashCallback;

    if-eqz p20, :cond_1

    const-wide/16 v5, 0x3a98

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x7530

    .line 106
    :goto_1
    iput-wide v5, v1, Lxcrash/NativeHandler;->anrTimeoutMs:J

    const/16 v35, -0x3

    .line 110
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 113
    invoke-static {}, Lxcrash/Util;->getAbiList()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move/from16 v21, p11

    move/from16 v22, p12

    move/from16 v23, p13

    move/from16 v24, p14

    move/from16 v25, p15

    move/from16 v26, p16

    move-object/from16 v27, p17

    move/from16 v28, p19

    move/from16 v29, p20

    move/from16 v30, p22

    move/from16 v31, p23

    move/from16 v32, p24

    move/from16 v33, p25

    move/from16 v34, p26

    .line 110
    invoke-static/range {v5 .. v34}, Lxcrash/NativeHandler;->nativeInit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZIIIZZ)I

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v35

    :cond_2
    const/4 v0, 0x1

    .line 145
    iput-boolean v0, v1, Lxcrash/NativeHandler;->initNativeLibOk:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    return v0

    :catchall_1
    move-exception v0

    .line 148
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v3

    invoke-interface {v3, v4, v2, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v35

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 95
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v0

    const-string v5, "NativeHandler ILibLoader.loadLibrary failed"

    invoke-interface {v0, v4, v5, v2}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method notifyJavaCrashed()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lxcrash/NativeHandler;->initNativeLibOk:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxcrash/NativeHandler;->anrEnable:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lxcrash/NativeHandler;->nativeNotifyJavaCrashed()V

    :cond_0
    return-void
.end method

.method testNativeCrash(Z)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lxcrash/NativeHandler;->initNativeLibOk:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p1}, Lxcrash/NativeHandler;->nativeTestCrash(I)V

    :cond_0
    return-void
.end method
