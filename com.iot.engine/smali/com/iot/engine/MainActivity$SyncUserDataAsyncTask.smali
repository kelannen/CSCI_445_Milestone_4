.class Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncUserDataAsyncTask"
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
    .line 1587
    iput-object p1, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1587
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1599
    const/4 v2, 0x0

    .line 1600
    .local v2, "mResponse":Ljava/lang/String;
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 1602
    .local v3, "req":LSession/Constants;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1603
    .local v1, "jBody":Lorg/json/JSONObject;
    const-string v5, "id"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1604
    const-string v5, "firstName"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1605
    const-string v5, "lastName"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1606
    const-string v5, "email"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1607
    const-string v5, "password"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1608
    const-string v5, "phoneNumber"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1609
    const-string v5, "userType"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1610
    const-string v5, "image"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1611
    const-string v5, "deviceId"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1612
    const-string v5, "deviceType"

    const-string v6, "ANROID"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1613
    const-string v5, "isEmailVerified"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1614
    const-string v5, "isFirstLogin"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1615
    const-string v5, "birthDate"

    iget-object v6, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getBirthDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1616
    iget-object v5, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "homeId":Ljava/lang/String;
    const-string v5, "homeid"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1619
    const-string v5, "syncShareControlData "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v5, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getAPPURL()Ljava/lang/String;

    move-result-object v4

    .line 1621
    .local v4, "session":Ljava/lang/String;
    const-string v5, "App URL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/user/syncShareControlData"

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

    iget-object v7, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v7, v7, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1627
    .end local v0    # "homeId":Ljava/lang/String;
    .end local v1    # "jBody":Lorg/json/JSONObject;
    .end local v4    # "session":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1625
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1587
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1632
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1633
    const-string v2, "syncUserControl Res "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v2, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    iget-object v2, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 1638
    :cond_0
    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1639
    iget-object v2, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2, v6}, LSession/SessionManager;->setUserSync(Z)Ljava/lang/Boolean;

    .line 1640
    new-instance v2, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v2, v3}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;-><init>(Lcom/iot/engine/MainActivity;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1647
    :goto_0
    if-eqz p1, :cond_1

    .line 1648
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1649
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1650
    iget-object v2, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LSession/SessionManager;->setUserSync(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    .end local v1    # "jMain":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 1643
    :cond_2
    new-instance v2, Lcom/iot/engine/MainActivity$AsyncRoomListTask;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v2, v3}, Lcom/iot/engine/MainActivity$AsyncRoomListTask;-><init>(Lcom/iot/engine/MainActivity;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1662
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1591
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1592
    iget-object v0, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    const-string v3, " syncing with Pongo Master "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 1593
    iget-object v0, p0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 1594
    return-void
.end method
