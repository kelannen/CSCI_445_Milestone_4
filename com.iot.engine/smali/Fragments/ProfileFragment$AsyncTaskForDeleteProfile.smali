.class LFragments/ProfileFragment$AsyncTaskForDeleteProfile;
.super Landroid/os/AsyncTask;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForDeleteProfile"
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
.field final synthetic this$0:LFragments/ProfileFragment;


# direct methods
.method private constructor <init>(LFragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFragments/ProfileFragment;LFragments/ProfileFragment$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/ProfileFragment;
    .param p2, "x1"    # LFragments/ProfileFragment$1;

    .prologue
    .line 535
    invoke-direct {p0, p1}, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;-><init>(LFragments/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 547
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 549
    .local v0, "jObj":Lorg/json/JSONObject;
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Internet"

    :goto_0
    invoke-static {v3, v2}, LFragments/ProfileFragment;->access$1002(LFragments/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    const-string v2, "userId"

    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v3}, LFragments/ProfileFragment;->access$500(LFragments/ProfileFragment;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v2, "profileId"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v2, "messageFrom"

    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v3}, LFragments/ProfileFragment;->access$1000(LFragments/ProfileFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v2, "ProfileFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground:Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/profile/deleteprofile"

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

    iget-object v5, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v5}, LFragments/ProfileFragment;->access$500(LFragments/ProfileFragment;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 549
    .restart local v0    # "jObj":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 535
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 565
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v3}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v3}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v3}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 568
    :cond_0
    if-eqz p1, :cond_2

    .line 569
    const-string v3, "ProfileFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, "jResponse":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 575
    .local v2, "jResult":Lorg/json/JSONObject;
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v3}, LFragments/ProfileFragment;->access$1100(LFragments/ProfileFragment;)LDatabase/DatabaseHandler;

    move-result-object v3

    const-string v4, "profileId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LDatabase/DatabaseHandler;->deleteMode(Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v3}, LFragments/ProfileFragment;->setAdapter()V

    .line 578
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v3}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "refreshShortcut"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "KEY"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 579
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v3}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Profile is deleted successfully"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "jResponse":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v3}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v4}, LFragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

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
    .line 538
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 539
    iget-object v0, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v2}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Delete Mood..."

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, LFragments/ProfileFragment;->access$902(LFragments/ProfileFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 540
    iget-object v0, p0, LFragments/ProfileFragment$AsyncTaskForDeleteProfile;->this$0:LFragments/ProfileFragment;

    invoke-static {v0}, LFragments/ProfileFragment;->access$900(LFragments/ProfileFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 541
    return-void
.end method
