.class public Lnet/hockeyapp/android/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "net.hockeyapp.android.SCREENSHOT"

.field private static final BROADCAST_REQUEST_CODE:I = 0x1

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x1

.field private static currentActivity:Landroid/app/Activity;

.field private static identifier:Ljava/lang/String;

.field private static lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

.field private static notificationActive:Z

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field private static requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

.field private static urlString:Ljava/lang/String;

.field private static userEmail:Ljava/lang/String;

.field private static userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 74
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    .line 79
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    .line 98
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkForAnswersAndNotify(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, "token":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 232
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v1, "net.hockeyapp.android.feedback"

    invoke-virtual {p0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "idLastMessageSend"

    const/4 v4, -0x1

    .line 214
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 216
    .local v11, "lastMessageId":I
    new-instance v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/hockeyapp/android/FeedbackManager$1;

    invoke-direct {v9, p0}, Lnet/hockeyapp/android/FeedbackManager$1;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v10}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 229
    .local v0, "sendFeedbackTask":Lnet/hockeyapp/android/tasks/SendFeedbackTask;
    invoke-virtual {v0, v12}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setShowProgressDialog(Z)V

    .line 230
    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setLastMessageId(I)V

    .line 231
    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private static endNotification()V
    .locals 3

    .prologue
    .line 417
    const/4 v1, 0x0

    sput-boolean v1, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 419
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 421
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 422
    return-void
.end method

.method public static getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-object v0
.end method

.method public static getRequireUserEmail()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method

.method public static getRequireUserName()Lnet/hockeyapp/android/objects/FeedbackUserDataElement;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    return-object v0
.end method

.method private static getURLString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/feedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "appIdentifier":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    invoke-static {p0, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    .line 122
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/FeedbackManagerListener;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    .line 145
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    .line 146
    sput-object p1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    .line 147
    sput-object p3, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    .line 149
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/FeedbackManagerListener;

    .prologue
    .line 132
    const-string v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    .line 133
    return-void
.end method

.method public static setActivityForScreenshot(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 314
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    .line 316
    sget-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->startNotification()V

    .line 319
    :cond_0
    return-void
.end method

.method public static setRequireUserEmail(Lnet/hockeyapp/android/objects/FeedbackUserDataElement;)V
    .locals 0
    .param p0, "requireUserEmail"    # Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    .prologue
    .line 286
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->requireUserEmail:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    .line 287
    return-void
.end method

.method public static setRequireUserName(Lnet/hockeyapp/android/objects/FeedbackUserDataElement;)V
    .locals 0
    .param p0, "requireUserName"    # Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    .prologue
    .line 268
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->requireUserName:Lnet/hockeyapp/android/objects/FeedbackUserDataElement;

    .line 269
    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 0
    .param p0, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 304
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->userEmail:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 0
    .param p0, "userName"    # Ljava/lang/String;

    .prologue
    .line 295
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->userName:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public static varargs showFeedbackActivity(Landroid/content/Context;Landroid/os/Bundle;[Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "attachments"    # [Landroid/net/Uri;

    .prologue
    .line 178
    if-eqz p0, :cond_3

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-virtual {v2}, Lnet/hockeyapp/android/FeedbackManagerListener;->getFeedbackActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 183
    :cond_0
    if-nez v0, :cond_1

    .line 184
    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    .line 187
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 191
    :cond_2
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    const-string v2, "url"

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v2, "initialUserName"

    sget-object v3, Lnet/hockeyapp/android/FeedbackManager;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v2, "initialUserEmail"

    sget-object v3, Lnet/hockeyapp/android/FeedbackManager;->userEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v2, "initialAttachments"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public static varargs showFeedbackActivity(Landroid/content/Context;[Landroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachments"    # [Landroid/net/Uri;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/hockeyapp/android/FeedbackManager;->showFeedbackActivity(Landroid/content/Context;Landroid/os/Bundle;[Landroid/net/Uri;)V

    .line 168
    return-void
.end method

.method private static startNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 390
    sput-boolean v9, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 392
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 394
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "ic_menu_camera"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, "iconId":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "net.hockeyapp.android.SCREENSHOT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v9, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 400
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string v6, "HockeyApp Feedback"

    const-string v7, "Take a screenshot for your feedback."

    invoke-static {v5, v4, v6, v7, v0}, Lnet/hockeyapp/android/utils/Util;->createNotification(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    .line 402
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v3, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 404
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_0

    .line 405
    new-instance v5, Lnet/hockeyapp/android/FeedbackManager$3;

    invoke-direct {v5}, Lnet/hockeyapp/android/FeedbackManager$3;-><init>()V

    sput-object v5, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 412
    :cond_0
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v6, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "net.hockeyapp.android.SCREENSHOT"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    return-void
.end method

.method public static takeScreenshot(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 342
    sget-object v8, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 343
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 344
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "filename":Ljava/lang/String;
    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v3

    .line 348
    .local v3, "dir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v5, "result":Ljava/io/File;
    const/4 v6, 0x1

    .line 350
    .local v6, "suffix":I
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    new-instance v5, Ljava/io/File;

    .end local v5    # "result":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .restart local v5    # "result":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 355
    :cond_0
    new-instance v8, Lnet/hockeyapp/android/FeedbackManager$2;

    invoke-direct {v8, v0, p0}, Lnet/hockeyapp/android/FeedbackManager$2;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    new-array v9, v11, [Ljava/io/File;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    .line 376
    invoke-virtual {v8, v9}, Lnet/hockeyapp/android/FeedbackManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 379
    new-instance v1, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManager$1;)V

    .line 380
    .local v1, "client":Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    new-instance v2, Landroid/media/MediaScannerConnection;

    sget-object v8, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-direct {v2, v8, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 381
    .local v2, "connection":Landroid/media/MediaScannerConnection;
    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->setConnection(Landroid/media/MediaScannerConnection;)V

    .line 382
    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V

    .line 384
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screenshot \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is available in gallery."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 385
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 386
    return-void
.end method

.method public static unregister()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    .line 158
    return-void
.end method

.method public static unsetCurrentActivityForScreenshot(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 327
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eq v0, p0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->endNotification()V

    .line 332
    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    goto :goto_0
.end method
