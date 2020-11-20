.class public Lcom/iot/engine/ActivityService;
.super Landroid/app/Service;
.source "ActivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ActivityService$GetActivityMessagesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityService"
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/ActivityService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ActivityService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iot/engine/ActivityService;->parseActivityResult(Ljava/lang/String;)V

    return-void
.end method

.method private parseActivityResult(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 74
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 75
    .local v7, "date":Ljava/util/Date;
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "formattedDate":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v13, "jResult":Lorg/json/JSONObject;
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/ActivityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "db":LDatabase/DatabaseHandler;
    const-string v1, "status"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v11, Lorg/json/JSONArray;

    const-string v1, "result"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    .local v11, "jArrResult":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 82
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 83
    .local v12, "jData":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "created_date"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "roomname"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, LDatabase/DatabaseHandler;->insertNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 87
    .end local v10    # "i":I
    .end local v11    # "jArrResult":Lorg/json/JSONArray;
    .end local v12    # "jData":Lorg/json/JSONObject;
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "NotificationSend"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v3    # "formattedDate":Ljava/lang/String;
    .end local v7    # "date":Ljava/util/Date;
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v13    # "jResult":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/iot/engine/ActivityService;->stopSelf()V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 40
    new-instance v0, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;

    invoke-direct {v0, p0}, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;-><init>(Lcom/iot/engine/ActivityService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    const/4 v0, 0x1

    return v0
.end method
