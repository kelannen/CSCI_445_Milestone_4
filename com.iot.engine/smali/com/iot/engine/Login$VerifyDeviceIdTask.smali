.class Lcom/iot/engine/Login$VerifyDeviceIdTask;
.super Landroid/os/AsyncTask;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyDeviceIdTask"
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
.field final synthetic this$0:Lcom/iot/engine/Login;


# direct methods
.method constructor <init>(Lcom/iot/engine/Login;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Login;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Login$VerifyDeviceIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 360
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 361
    .local v1, "res":LSession/Constants;
    const/4 v2, 0x0

    .line 363
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 364
    .local v0, "jmain":Lorg/json/JSONObject;
    const-string v4, "email"

    iget-object v5, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v5}, Lcom/iot/engine/Login;->access$100(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    iget-object v4, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v4, v4, Lcom/iot/engine/Login;->mDevideId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    const-string v4, "deviceId"

    iget-object v5, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v5, v5, Lcom/iot/engine/Login;->mDevideId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/user/validateUser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 378
    .end local v0    # "jmain":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .local v3, "response":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 372
    .end local v3    # "response":Ljava/lang/String;
    .restart local v0    # "jmain":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/String;
    :cond_0
    const-string v4, "shareControlOTP"

    iget-object v5, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v5, v5, Lcom/iot/engine/Login;->mSharedOTP:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v0    # "jmain":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v3, v2

    .line 378
    .end local v2    # "response":Ljava/lang/String;
    .restart local v3    # "response":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Login$VerifyDeviceIdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1500(Lcom/iot/engine/Login;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1500(Lcom/iot/engine/Login;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1500(Lcom/iot/engine/Login;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 388
    :cond_0
    if-eqz p1, :cond_3

    .line 389
    const-string v0, "validateUser Response "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 392
    .local v10, "response":Lorg/json/JSONObject;
    const-string v0, "status"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    new-instance v9, Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    .local v9, "jResult":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    const-string v1, "userType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$1102(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    const-string v1, "homeId"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LSession/SessionManager;->setHomeId(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$400(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v2}, Lcom/iot/engine/Login;->access$600(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v3}, Lcom/iot/engine/Login;->access$500(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v4}, Lcom/iot/engine/Login;->access$900(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v5}, Lcom/iot/engine/Login;->access$800(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v6}, Lcom/iot/engine/Login;->access$1100(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v7}, Lcom/iot/engine/Login;->access$1000(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, LSession/SessionManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$700(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LSession/SessionManager;->saveSecurityToken(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v1, v1, Lcom/iot/engine/Login;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, LSession/SessionManager;->savePassword(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1400(Lcom/iot/engine/Login;)V

    .line 418
    .end local v9    # "jResult":Lorg/json/JSONObject;
    .end local v10    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 406
    .restart local v10    # "response":Lorg/json/JSONObject;
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    const-string v1, "msg"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$1600(Lcom/iot/engine/Login;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    .end local v10    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-virtual {v1}, Lcom/iot/engine/Login;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 354
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 355
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    const-string v3, "Retrieving appliances status"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$1502(Lcom/iot/engine/Login;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 356
    iget-object v0, p0, Lcom/iot/engine/Login$VerifyDeviceIdTask;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1500(Lcom/iot/engine/Login;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 357
    return-void
.end method
