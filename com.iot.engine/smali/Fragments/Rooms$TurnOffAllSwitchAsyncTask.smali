.class LFragments/Rooms$TurnOffAllSwitchAsyncTask;
.super Landroid/os/AsyncTask;
.source "Rooms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Rooms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurnOffAllSwitchAsyncTask"
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
.field status:Ljava/lang/String;

.field final synthetic this$0:LFragments/Rooms;


# direct methods
.method private constructor <init>(LFragments/Rooms;)V
    .locals 1

    .prologue
    .line 721
    iput-object p1, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 723
    const-string v0, ""

    iput-object v0, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->status:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LFragments/Rooms;LFragments/Rooms$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Rooms;
    .param p2, "x1"    # LFragments/Rooms$1;

    .prologue
    .line 721
    invoke-direct {p0, p1}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;-><init>(LFragments/Rooms;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 721
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 737
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 738
    .local v2, "req":LSession/Constants;
    const/4 v3, 0x0

    .line 741
    .local v3, "response":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    iput-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->status:Ljava/lang/String;

    .line 742
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-static {v4, v5, v6}, LFragments/Rooms;->access$800(LFragments/Rooms;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "mRequest":Ljava/lang/String;
    const-string v4, "Turn All Request "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/changeStatusByRoom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v5}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v1, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 748
    .end local v1    # "mRequest":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 721
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 753
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 755
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 759
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 760
    const-string v4, "Living Turn All Room "

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 763
    .local v2, "jResult":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 764
    new-instance v1, Lorg/json/JSONArray;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, "jArrResult":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 766
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 768
    .local v3, "jSwitch":Lorg/json/JSONObject;
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$300(LFragments/Rooms;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDatabase/DatabaseHandler;->isDimmerSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$300(LFragments/Rooms;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->status:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, LDatabase/DatabaseHandler;->updateAllDimmerSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_1
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$300(LFragments/Rooms;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->status:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, LDatabase/DatabaseHandler;->updateAllSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 780
    .end local v0    # "i":I
    .end local v1    # "jArrResult":Lorg/json/JSONArray;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "jSwitch":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 782
    :goto_2
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$400(LFragments/Rooms;)V

    .line 786
    :goto_3
    return-void

    .line 776
    .restart local v0    # "i":I
    .restart local v1    # "jArrResult":Lorg/json/JSONArray;
    .restart local v2    # "jResult":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-virtual {v4}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "NotificationSend"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2

    .line 778
    .end local v0    # "i":I
    .end local v1    # "jArrResult":Lorg/json/JSONArray;
    :cond_3
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    iget-object v4, v4, LFragments/Rooms;->context:Landroid/content/Context;

    const-string v5, "msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 784
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :cond_4
    iget-object v4, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    iget-object v4, v4, LFragments/Rooms;->context:Landroid/content/Context;

    iget-object v5, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-virtual {v5}, LFragments/Rooms;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 727
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 728
    iget-object v0, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-virtual {v2}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LFragments/Rooms;->access$702(LFragments/Rooms;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 729
    iget-object v0, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v0}, LFragments/Rooms;->access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Kindly wait"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v0}, LFragments/Rooms;->access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 731
    iget-object v0, p0, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->this$0:LFragments/Rooms;

    invoke-static {v0}, LFragments/Rooms;->access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 732
    return-void
.end method
