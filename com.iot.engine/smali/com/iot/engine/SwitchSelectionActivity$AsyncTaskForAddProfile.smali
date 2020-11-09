.class Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;
.super Landroid/os/AsyncTask;
.source "SwitchSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/SwitchSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForAddProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/SwitchSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/SwitchSelectionActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/SwitchSelectionActivity;Lcom/iot/engine/SwitchSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/SwitchSelectionActivity;
    .param p2, "x1"    # Lcom/iot/engine/SwitchSelectionActivity$1;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;-><init>(Lcom/iot/engine/SwitchSelectionActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 264
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 265
    .local v1, "req":LSession/Constants;
    const/4 v2, 0x0

    .line 267
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v0, "jObj":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Internet"

    :goto_0
    invoke-static {v4, v3}, Lcom/iot/engine/SwitchSelectionActivity;->access$302(Lcom/iot/engine/SwitchSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v4, v4, Lcom/iot/engine/SwitchSelectionActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v3, "profileId"

    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-virtual {v4}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v3, "profileName"

    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-virtual {v4}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "Mode_Name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v3, "switchList"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v3, "dimmerValues"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v3, "switchStatus"

    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-virtual {v4}, Lcom/iot/engine/SwitchSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "off_mode"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v3, "messageFrom"

    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-static {v4}, Lcom/iot/engine/SwitchSelectionActivity;->access$300(Lcom/iot/engine/SwitchSelectionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v3, "SwitchSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground:Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/profile/editprofile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v5, v5, Lcom/iot/engine/SwitchSelectionActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 269
    .restart local v0    # "jObj":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 282
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 289
    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-static {v3}, Lcom/iot/engine/SwitchSelectionActivity;->access$200(Lcom/iot/engine/SwitchSelectionActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-static {v3}, Lcom/iot/engine/SwitchSelectionActivity;->access$200(Lcom/iot/engine/SwitchSelectionActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-static {v3}, Lcom/iot/engine/SwitchSelectionActivity;->access$200(Lcom/iot/engine/SwitchSelectionActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 292
    :cond_0
    if-eqz p1, :cond_2

    .line 293
    const-string v3, "SwitchSelectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute:Result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "jResponse":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v2, "jResult":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v3, v3, Lcom/iot/engine/SwitchSelectionActivity;->database:LDatabase/DatabaseHandler;

    const-string v4, "switchList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "profileId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dimmerValues"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LDatabase/DatabaseHandler;->updateModeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "jResponse":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-virtual {v3}, Lcom/iot/engine/SwitchSelectionActivity;->onBackPressed()V

    .line 308
    return-void

    .line 302
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    iget-object v4, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-virtual {v4}, Lcom/iot/engine/SwitchSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 257
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 258
    iget-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    const-string v3, " Adding Mood "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/SwitchSelectionActivity;->access$202(Lcom/iot/engine/SwitchSelectionActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 259
    iget-object v0, p0, Lcom/iot/engine/SwitchSelectionActivity$AsyncTaskForAddProfile;->this$0:Lcom/iot/engine/SwitchSelectionActivity;

    invoke-static {v0}, Lcom/iot/engine/SwitchSelectionActivity;->access$200(Lcom/iot/engine/SwitchSelectionActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 260
    return-void
.end method
