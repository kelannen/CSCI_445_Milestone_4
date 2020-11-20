.class LFragments/Rooms$AsyncTaskForHideRoom;
.super Landroid/os/AsyncTask;
.source "Rooms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Rooms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForHideRoom"
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
.field mRoomID:Ljava/lang/String;

.field final synthetic this$0:LFragments/Rooms;


# direct methods
.method private constructor <init>(LFragments/Rooms;)V
    .locals 1

    .prologue
    .line 806
    iput-object p1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 807
    const-string v0, ""

    iput-object v0, p0, LFragments/Rooms$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LFragments/Rooms;LFragments/Rooms$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Rooms;
    .param p2, "x1"    # LFragments/Rooms$1;

    .prologue
    .line 806
    invoke-direct {p0, p1}, LFragments/Rooms$AsyncTaskForHideRoom;-><init>(LFragments/Rooms;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 806
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Rooms$AsyncTaskForHideRoom;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 817
    const/4 v3, 0x0

    .line 819
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "Internet"

    .line 820
    .local v2, "messageFrom":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, LFragments/Rooms$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    .line 821
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 822
    .local v1, "jRes":Lorg/json/JSONObject;
    const-string v4, "userId"

    iget-object v5, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v5}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v4, "roomId"

    iget-object v5, p0, LFragments/Rooms$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v4, "hideStatus"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string v4, "messageFrom"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string v4, "Rooms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground:Hide Response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/room/hideroom"

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

    iget-object v7, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v7}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v7

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 829
    .end local v1    # "jRes":Lorg/json/JSONObject;
    .end local v2    # "messageFrom":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 819
    :cond_0
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 828
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 806
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Rooms$AsyncTaskForHideRoom;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 835
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v1}, LFragments/Rooms;->access$900(LFragments/Rooms;)Ldmax/dialog/SpotsDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v1}, LFragments/Rooms;->access$900(LFragments/Rooms;)Ldmax/dialog/SpotsDialog;

    move-result-object v1

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v1}, LFragments/Rooms;->access$900(LFragments/Rooms;)Ldmax/dialog/SpotsDialog;

    move-result-object v1

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 838
    :cond_0
    if-eqz p1, :cond_1

    .line 839
    const-string v1, "Rooms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute:Hide Result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-virtual {v1}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 841
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, LDatabase/DatabaseHandler;->updateRoomHidestatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v1}, LFragments/Rooms;->access$400(LFragments/Rooms;)V

    .line 844
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-virtual {v1}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "NotificationSend"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 848
    .end local v0    # "db":LDatabase/DatabaseHandler;
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v1, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    iget-object v1, v1, LFragments/Rooms;->context:Landroid/content/Context;

    iget-object v2, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-virtual {v2}, LFragments/Rooms;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 810
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 811
    iget-object v0, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-virtual {v2}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Hide room"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, LFragments/Rooms;->access$902(LFragments/Rooms;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 812
    iget-object v0, p0, LFragments/Rooms$AsyncTaskForHideRoom;->this$0:LFragments/Rooms;

    invoke-static {v0}, LFragments/Rooms;->access$900(LFragments/Rooms;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 813
    return-void
.end method
