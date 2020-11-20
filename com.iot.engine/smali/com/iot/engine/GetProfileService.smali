.class public Lcom/iot/engine/GetProfileService;
.super Landroid/app/Service;
.source "GetProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GetProfileService$AsyncTaskForGetProfile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetProfileService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/GetProfileService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/GetProfileService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iot/engine/GetProfileService;->parseProfileResult(Ljava/lang/String;)V

    return-void
.end method

.method private parseProfileResult(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, Lcom/iot/engine/GetProfileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v9, "jObj":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v8, Lorg/json/JSONArray;

    const-string v1, "result"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    .local v8, "jArr":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 77
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 78
    .local v10, "jsonResult":Lorg/json/JSONObject;
    const-string v1, "profileId"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profileName"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "switchList"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switchStatus"

    .line 79
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dimmerValues"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual/range {v0 .. v5}, LDatabase/DatabaseHandler;->setProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v7    # "i":I
    .end local v8    # "jArr":Lorg/json/JSONArray;
    .end local v9    # "jObj":Lorg/json/JSONObject;
    .end local v10    # "jsonResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/iot/engine/GetProfileService$AsyncTaskForGetProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/GetProfileService$AsyncTaskForGetProfile;-><init>(Lcom/iot/engine/GetProfileService;Lcom/iot/engine/GetProfileService$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/GetProfileService$AsyncTaskForGetProfile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
