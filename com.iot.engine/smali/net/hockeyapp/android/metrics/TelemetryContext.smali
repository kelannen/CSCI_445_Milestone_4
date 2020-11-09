.class Lnet/hockeyapp/android/metrics/TelemetryContext;
.super Ljava/lang/Object;
.source "TelemetryContext.java"


# static fields
.field private static final SESSION_IS_FIRST_KEY:Ljava/lang/String; = "SESSION_IS_FIRST"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "HOCKEY_APP_TELEMETRY_CONTEXT"

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private final IKEY_LOCK:Ljava/lang/Object;

.field protected final mApplication:Lnet/hockeyapp/android/metrics/model/Application;

.field protected mContext:Landroid/content/Context;

.field protected final mDevice:Lnet/hockeyapp/android/metrics/model/Device;

.field private mInstrumentationKey:Ljava/lang/String;

.field protected final mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

.field private mPackageName:Ljava/lang/String;

.field protected final mSession:Lnet/hockeyapp/android/metrics/model/Session;

.field private mSettings:Landroid/content/SharedPreferences;

.field protected final mUser:Lnet/hockeyapp/android/metrics/model/User;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    .line 97
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Device;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Device;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    .line 98
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Session;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Session;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    .line 99
    new-instance v0, Lnet/hockeyapp/android/metrics/model/User;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/User;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    .line 100
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Application;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Application;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    .line 101
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Internal;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    .line 102
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>()V

    .line 112
    const-string v0, "HOCKEY_APP_TELEMETRY_CONTEXT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    .line 113
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->convertAppIdentifierToGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configDeviceContext()V

    .line 117
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configUserId()V

    .line 118
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configInternalContext()V

    .line 119
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configApplicationContext()V

    .line 120
    return-void
.end method


# virtual methods
.method protected configApplicationContext()V
    .locals 10

    .prologue
    .line 159
    const-string v6, "HockeyApp-Metrics"

    const-string v7, "Configuring application context"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "unknown"

    .line 163
    .local v5, "version":Ljava/lang/String;
    const-string v6, ""

    iput-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    .line 166
    :try_start_0
    iget-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 167
    .local v3, "manager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 170
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 171
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    .line 174
    :cond_0
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "appBuild":Ljava/lang/String;
    const-string v6, "%s (%S)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 179
    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    .line 183
    .end local v0    # "appBuild":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    const-string v4, "4.1.1"

    .line 184
    .local v4, "sdkVersionString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    .line 185
    return-void

    .line 176
    .end local v4    # "sdkVersionString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v6, "HockeyApp-Metrics"

    const-string v7, "Could not get application context"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAppVersion(Ljava/lang/String;)V

    throw v6
.end method

.method protected configDeviceContext()V
    .locals 3

    .prologue
    .line 201
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Configuring device context"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsVersion(Ljava/lang/String;)V

    .line 203
    const-string v1, "Android"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsName(Ljava/lang/String;)V

    .line 204
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    .line 205
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceOemName(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLocale(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setOsLanguage(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    .line 209
    sget-object v1, Lnet/hockeyapp/android/Constants;->DEVICE_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceId(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 214
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string v1, "Phone"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    .line 221
    :goto_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Emulator]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v2}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceModel(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void

    .line 217
    :cond_1
    const-string v1, "Tablet"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setDeviceType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configInternalContext()V
    .locals 3

    .prologue
    .line 276
    const-string v0, "4.1.1"

    .line 277
    .local v0, "sdkVersionString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSdkVersion(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method protected configSessionContext(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Configuring session context"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setSessionId(Ljava/lang/String;)V

    .line 140
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Setting the isNew-flag to true, as we only count new sessions"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "true"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsNewSession(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "SESSION_IS_FIRST"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string v1, "SESSION_IS_FIRST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    const-string v1, "true"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    .line 148
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "It\'s our first session, writing true to SharedPreferences."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v1, "false"

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setIsFirstSession(Ljava/lang/String;)V

    .line 151
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "It\'s not their first session, writing false to SharedPreferences."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configUserId()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "HockeyApp-Metrics"

    const-string v1, "Configuring user context"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "Using pre-supplied anonymous device identifier."

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setAnonymousUserId(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public getAnonymousUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Application;->getVer()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getContextTags()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 290
    .local v0, "contextTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Application;->addToHashMap(Ljava/util/Map;)V

    .line 292
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v2

    .line 294
    :try_start_1
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Device;->addToHashMap(Ljava/util/Map;)V

    .line 295
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v2

    .line 297
    :try_start_2
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Session;->addToHashMap(Ljava/util/Map;)V

    .line 298
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 299
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v2

    .line 300
    :try_start_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/User;->addToHashMap(Ljava/util/Map;)V

    .line 301
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 302
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v2

    .line 303
    :try_start_4
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Internal;->addToHashMap(Ljava/util/Map;)V

    .line 304
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 306
    return-object v0

    .line 292
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 295
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 298
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 301
    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    .line 304
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceOemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOemName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsFirstSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsFirst()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsNewSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getIsNew()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getLanguage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getLocale()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOs()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Device;->getScreenResolution()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Internal;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Session;->getId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected renewSessionContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;->configSessionContext(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setAnonymousUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mUser:Lnet/hockeyapp/android/metrics/model/User;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/User;->setId(Ljava/lang/String;)V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mApplication:Lnet/hockeyapp/android/metrics/model/Application;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Application;->setVer(Ljava/lang/String;)V

    .line 342
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setId(Ljava/lang/String;)V

    .line 484
    monitor-exit v1

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setModel(Ljava/lang/String;)V

    .line 438
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceOemName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceOemName"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOemName(Ljava/lang/String;)V

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setType(Ljava/lang/String;)V

    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setInstrumentationKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "instrumentationKey"    # Ljava/lang/String;

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->IKEY_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInstrumentationKey:Ljava/lang/String;

    .line 318
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFirstSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "isFirst"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsFirst(Ljava/lang/String;)V

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsNewSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "isNewSession"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setIsNew(Ljava/lang/String;)V

    .line 402
    monitor-exit v1

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "osLanguage"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLanguage(Ljava/lang/String;)V

    .line 474
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsLocale(Ljava/lang/String;)V
    .locals 2
    .param p1, "osLocale"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setLocale(Ljava/lang/String;)V

    .line 462
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 2
    .param p1, "osName"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOs(Ljava/lang/String;)V

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setOsVersion(Ljava/lang/String;)V

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenResolution(Ljava/lang/String;)V
    .locals 2
    .param p1, "screenResolution"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mDevice:Lnet/hockeyapp/android/metrics/model/Device;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Device;->setScreenResolution(Ljava/lang/String;)V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mInternal:Lnet/hockeyapp/android/metrics/model/Internal;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->setSdkVersion(Ljava/lang/String;)V

    .line 366
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mSession:Lnet/hockeyapp/android/metrics/model/Session;

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/Session;->setId(Ljava/lang/String;)V

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateScreenResolution()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Deprecation"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v10, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    .line 234
    iget-object v10, p0, Lnet/hockeyapp/android/metrics/TelemetryContext;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 236
    .local v9, "wm":Landroid/view/WindowManager;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_1

    .line 237
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 238
    .local v7, "size":Landroid/graphics/Point;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 239
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 240
    .local v8, "width":I
    iget v3, v7, Landroid/graphics/Point;->y:I

    .line 266
    .end local v7    # "size":Landroid/graphics/Point;
    .local v3, "height":I
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "resolutionString":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lnet/hockeyapp/android/metrics/TelemetryContext;->setScreenResolution(Ljava/lang/String;)V

    .line 270
    .end local v3    # "height":I
    .end local v6    # "resolutionString":Ljava/lang/String;
    .end local v8    # "width":I
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 241
    .restart local v9    # "wm":Landroid/view/WindowManager;
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xd

    if-lt v10, v11, :cond_2

    .line 246
    :try_start_0
    const-class v10, Landroid/view/Display;

    const-string v11, "getRawWidth"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 247
    .local v5, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v10, Landroid/view/Display;

    const-string v11, "getRawHeight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 248
    .local v4, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 249
    .local v1, "display":Landroid/view/Display;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 250
    .restart local v8    # "width":I
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "height":I
    goto :goto_0

    .line 251
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "height":I
    .end local v4    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v5    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v8    # "width":I
    :catch_0
    move-exception v2

    .line 252
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 253
    .restart local v7    # "size":Landroid/graphics/Point;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 254
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 255
    .restart local v8    # "width":I
    iget v3, v7, Landroid/graphics/Point;->y:I

    .line 256
    .restart local v3    # "height":I
    const-string v10, "HockeyApp-Metrics"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t determine screen resolution: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "height":I
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "width":I
    :cond_2
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 262
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 263
    .restart local v8    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .restart local v3    # "height":I
    goto/16 :goto_0
.end method
