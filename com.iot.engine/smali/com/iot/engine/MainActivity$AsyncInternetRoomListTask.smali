.class Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncInternetRoomListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1221
    const/4 v2, 0x0

    .line 1223
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1224
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v4, v4, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1225
    const-string v3, "messageFrom"

    iget-object v4, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v4}, Lcom/iot/engine/MainActivity;->access$700(Lcom/iot/engine/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1226
    const-string v3, "Internet room request "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/getswitchbyuser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    const-string v3, "Internet room/switch-->"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1231
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask$1;

    invoke-direct {v3, p0}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask$1;-><init>(Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "jMain":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 1237
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1210
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1242
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1243
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 1247
    :cond_0
    new-instance v0, Lcom/iot/engine/MainActivity$checkUserDetails;

    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iot/engine/MainActivity$checkUserDetails;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/MainActivity$checkUserDetails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1248
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const-class v3, Lcom/iot/engine/GetProfileService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/iot/engine/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1249
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v0}, Lcom/iot/engine/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NotificationSend"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1250
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1213
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1214
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const-string v3, "Retrieving appliances status"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 1215
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 1216
    return-void
.end method
