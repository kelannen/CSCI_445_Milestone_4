.class Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;
.super Landroid/os/AsyncTask;
.source "UserProfileNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/UserProfileNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncUserDataTask"
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
.field sessionManager:LSession/SessionManager;

.field final synthetic this$0:Lcom/iot/engine/UserProfileNew;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfileNew;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iot/engine/UserProfileNew;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 530
    new-instance v0, LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 528
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "mResponse":Ljava/lang/String;
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 546
    .local v2, "req":LSession/Constants;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 547
    .local v0, "jBody":Lorg/json/JSONObject;
    const-string v4, "id"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    const-string v4, "firstName"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v5}, Lcom/iot/engine/UserProfileNew;->access$900(Lcom/iot/engine/UserProfileNew;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string v4, "lastName"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v5}, Lcom/iot/engine/UserProfileNew;->access$1000(Lcom/iot/engine/UserProfileNew;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    const-string v4, "email"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string v4, "password"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v4, "phoneNumber"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v4, "userType"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v4, "image"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v4, "deviceId"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v4, "deviceType"

    const-string v5, "ANROID"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v4, "isEmailVerified"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    const-string v4, "isFirstLogin"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    const-string v4, "homeid"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v4, "birthDate"

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getBirthDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v4, "syncShareControlData "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":8080/user/syncShareControlData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "url":Ljava/lang/String;
    const-string v4, "URL "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 569
    .end local v0    # "jBody":Lorg/json/JSONObject;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 567
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 528
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 576
    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v2}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v2}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v2}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 580
    :cond_0
    if-eqz p1, :cond_1

    .line 581
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

    .line 584
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LSession/SessionManager;->setUserSync(Z)Ljava/lang/Boolean;

    .line 587
    const-string v2, "Local profile"

    const-string v3, "Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v1    # "jMain":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-virtual {v2}, Lcom/iot/engine/UserProfileNew;->finish()V

    .line 598
    return-void

    .line 590
    .restart local v1    # "jMain":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v2, "Local Profile"

    const-string v3, "Failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 593
    .end local v1    # "jMain":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    const-string v3, " Syncing with Pongo Master "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/UserProfileNew;->access$502(Lcom/iot/engine/UserProfileNew;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 535
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncUserDataTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v0}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 536
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 537
    return-void
.end method
