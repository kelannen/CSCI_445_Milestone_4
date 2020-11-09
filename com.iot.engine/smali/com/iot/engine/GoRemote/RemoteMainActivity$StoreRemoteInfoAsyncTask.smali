.class Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;
.super Landroid/os/AsyncTask;
.source "RemoteMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/RemoteMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreRemoteInfoAsyncTask"
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
.field final synthetic this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoRemote/RemoteMainActivity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoRemote/RemoteMainActivity;Lcom/iot/engine/GoRemote/RemoteMainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoRemote/RemoteMainActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoRemote/RemoteMainActivity$1;

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;-><init>(Lcom/iot/engine/GoRemote/RemoteMainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 468
    const/4 v5, 0x0

    .line 470
    .local v5, "response":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 471
    .local v4, "jParams":Lorg/json/JSONObject;
    const-string v6, "userId"

    iget-object v7, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v7}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$300(Lcom/iot/engine/GoRemote/RemoteMainActivity;)LSession/SessionManager;

    move-result-object v7

    invoke-virtual {v7}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string v6, "RemoteMainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get all Remote: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "remote/getallremoteinfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v9}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$300(Lcom/iot/engine/GoRemote/RemoteMainActivity;)LSession/SessionManager;

    move-result-object v9

    invoke-virtual {v9}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 475
    if-eqz v5, :cond_0

    .line 477
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    .local v3, "jMain":Lorg/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 479
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$600(Lcom/iot/engine/GoRemote/RemoteMainActivity;)LDatabase/DatabaseHandler;

    move-result-object v6

    invoke-virtual {v6}, LDatabase/DatabaseHandler;->deleteTVRemoteInfo()V

    .line 480
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$600(Lcom/iot/engine/GoRemote/RemoteMainActivity;)LDatabase/DatabaseHandler;

    move-result-object v6

    invoke-virtual {v6}, LDatabase/DatabaseHandler;->deleteACRemoteInfo()V

    .line 481
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$600(Lcom/iot/engine/GoRemote/RemoteMainActivity;)LDatabase/DatabaseHandler;

    move-result-object v6

    invoke-virtual {v6}, LDatabase/DatabaseHandler;->deleteMusicRemoteInfo()V

    .line 482
    new-instance v1, Lorg/json/JSONArray;

    const-string v6, "result"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "jArrResult":Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 484
    .local v2, "jData":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    const-string v7, "remoteCommandInfo"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$700(Lcom/iot/engine/GoRemote/RemoteMainActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    .end local v1    # "jArrResult":Lorg/json/JSONArray;
    .end local v2    # "jData":Lorg/json/JSONObject;
    .end local v3    # "jMain":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :try_start_2
    const-string v6, "RemoteMainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v4    # "jParams":Lorg/json/JSONObject;
    :goto_1
    return-object v5

    .line 486
    .restart local v4    # "jParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "jParams":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 458
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$500(Lcom/iot/engine/GoRemote/RemoteMainActivity;)V

    .line 498
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-virtual {v0}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->setRemoteAdapter()V

    .line 499
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 462
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteMainActivity$StoreRemoteInfoAsyncTask;->this$0:Lcom/iot/engine/GoRemote/RemoteMainActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/RemoteMainActivity;->access$200(Lcom/iot/engine/GoRemote/RemoteMainActivity;)V

    .line 463
    return-void
.end method
