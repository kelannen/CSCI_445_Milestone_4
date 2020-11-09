.class LFragments/ProfileFragment$AsyncModeActivationTask;
.super Landroid/os/AsyncTask;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncModeActivationTask"
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
.field modeId:Ljava/lang/String;

.field final synthetic this$0:LFragments/ProfileFragment;


# direct methods
.method private constructor <init>(LFragments/ProfileFragment;)V
    .locals 1

    .prologue
    .line 390
    iput-object p1, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 391
    const-string v0, ""

    iput-object v0, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->modeId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LFragments/ProfileFragment;LFragments/ProfileFragment$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/ProfileFragment;
    .param p2, "x1"    # LFragments/ProfileFragment$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, LFragments/ProfileFragment$AsyncModeActivationTask;-><init>(LFragments/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/ProfileFragment$AsyncModeActivationTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "response":Ljava/lang/String;
    new-instance v2, LSession/SessionManager;

    iget-object v3, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v3}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 405
    .local v2, "sessionManager":LSession/SessionManager;
    aget-object v3, p1, v4

    iput-object v3, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->modeId:Ljava/lang/String;

    .line 407
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v0, "jObj":Lorg/json/JSONObject;
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Internet"

    :goto_0
    invoke-static {v4, v3}, LFragments/ProfileFragment;->access$1002(LFragments/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    const-string v3, "userId"

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v3, "profileId"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v3, "messageFrom"

    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1000(LFragments/ProfileFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v3, "All Switches -->"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v5}, LFragments/ProfileFragment;->access$1000(LFragments/ProfileFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/profile/profileonoff"

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

    invoke-virtual {v2}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 408
    .restart local v0    # "jObj":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 390
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/ProfileFragment$AsyncModeActivationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f060082

    const/4 v7, 0x0

    .line 426
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 428
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 432
    :cond_0
    if-eqz p1, :cond_4

    .line 433
    const-string v4, "ProfileFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1000(LFragments/ProfileFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Internet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Mood completed"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 437
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;

    move-result-object v4

    invoke-virtual {v4}, LDatabase/DatabaseHandler;->updateAllActiveFlag()V

    .line 438
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;

    move-result-object v4

    iget-object v5, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->modeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, LDatabase/DatabaseHandler;->updateActiveFlag(Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->setAdapter()V

    .line 443
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "jResult":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    new-instance v2, Lorg/json/JSONArray;

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, "jMain":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 448
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 449
    .local v1, "jArr":Lorg/json/JSONObject;
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dimmerValue"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, LDatabase/DatabaseHandler;->updateAllSwitchStatusNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "jArr":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Mood completed"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 452
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;

    move-result-object v4

    invoke-virtual {v4}, LDatabase/DatabaseHandler;->updateAllActiveFlag()V

    .line 453
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v4}, LFragments/ProfileFragment;->access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;

    move-result-object v4

    iget-object v5, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->modeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, LDatabase/DatabaseHandler;->updateActiveFlag(Ljava/lang/String;)V

    .line 454
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->setAdapter()V

    .line 455
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "refreshShortcut"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 456
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "NotificationSend"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 465
    .end local v0    # "i":I
    .end local v2    # "jMain":Lorg/json/JSONArray;
    .end local v3    # "jResult":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 458
    .restart local v3    # "jResult":Lorg/json/JSONObject;
    :cond_3
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v5}, LFragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 460
    .end local v3    # "jResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 463
    :cond_4
    iget-object v4, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v5}, LFragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 394
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 395
    iget-object v0, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v2}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Working on your mood"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, LFragments/ProfileFragment;->access$902(LFragments/ProfileFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 396
    iget-object v0, p0, LFragments/ProfileFragment$AsyncModeActivationTask;->this$0:LFragments/ProfileFragment;

    invoke-static {v0}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 397
    return-void
.end method
