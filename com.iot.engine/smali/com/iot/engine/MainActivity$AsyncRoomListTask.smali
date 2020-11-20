.class Lcom/iot/engine/MainActivity$AsyncRoomListTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncRoomListTask"
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
    .line 1422
    iput-object p1, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1422
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1432
    const/4 v2, 0x0

    .line 1434
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1435
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v4, "userId"

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1436
    const-string v4, "messageFrom"

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v5}, Lcom/iot/engine/MainActivity;->access$700(Lcom/iot/engine/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/room/getlistbyuser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1440
    .local v3, "url":Ljava/lang/String;
    const-string v4, "Room Url"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/room/getlistbyuser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v7, v7, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v8, v8, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, LSession/Constants;->doPostRoomRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1449
    .end local v1    # "jMain":Lorg/json/JSONObject;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1445
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1422
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1454
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1456
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v5}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1457
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v5}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 1461
    :cond_0
    if-eqz p1, :cond_1

    .line 1462
    const-string v5, "Get room response : "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v1, "response":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1467
    .local v4, "status":Ljava/lang/String;
    const-string v5, "result"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1468
    .local v3, "results":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v2, "resultArray":Lorg/json/JSONArray;
    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1472
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v5, v2}, Lcom/iot/engine/MainActivity;->access$1000(Lcom/iot/engine/MainActivity;Lorg/json/JSONArray;)V

    .line 1473
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const-class v8, Lcom/iot/engine/GetSwitchByRoomService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/iot/engine/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1474
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const-class v8, Lcom/iot/engine/GetProfileService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/iot/engine/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1475
    const-string v5, "isTowerExist"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1476
    const-string v5, "isTowerExist"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1477
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, LSession/SessionManager;->setTowerFlag(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "resultArray":Lorg/json/JSONArray;
    .end local v3    # "results":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v5, Lcom/iot/engine/MainActivity$checkUserDetails;

    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/iot/engine/MainActivity$checkUserDetails;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/iot/engine/MainActivity$checkUserDetails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1493
    return-void

    .line 1479
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v2    # "resultArray":Lorg/json/JSONArray;
    .restart local v3    # "results":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, LSession/SessionManager;->setTowerFlag(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1485
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "resultArray":Lorg/json/JSONArray;
    .end local v3    # "results":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1483
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v2    # "resultArray":Lorg/json/JSONArray;
    .restart local v3    # "results":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1425
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1426
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    const-string v3, "Retrieving appliances status"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 1427
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 1428
    return-void
.end method
