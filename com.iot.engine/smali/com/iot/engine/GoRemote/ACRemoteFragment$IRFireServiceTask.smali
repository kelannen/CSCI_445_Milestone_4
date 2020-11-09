.class Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;
.super Landroid/os/AsyncTask;
.source "ACRemoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/ACRemoteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRFireServiceTask"
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
.field final synthetic this$0:Lcom/iot/engine/GoRemote/ACRemoteFragment;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->this$0:Lcom/iot/engine/GoRemote/ACRemoteFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;Lcom/iot/engine/GoRemote/ACRemoteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoRemote/ACRemoteFragment;
    .param p2, "x1"    # Lcom/iot/engine/GoRemote/ACRemoteFragment$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;-><init>(Lcom/iot/engine/GoRemote/ACRemoteFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v1, "jParams":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->this$0:Lcom/iot/engine/GoRemote/ACRemoteFragment;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->access$100(Lcom/iot/engine/GoRemote/ACRemoteFragment;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v3, "irRemoteinfo"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v3, "towerId"

    iget-object v4, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->this$0:Lcom/iot/engine/GoRemote/ACRemoteFragment;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->access$200(Lcom/iot/engine/GoRemote/ACRemoteFragment;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "remote_tower_id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v3, "ACRemoteFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/remote/irfire"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->this$0:Lcom/iot/engine/GoRemote/ACRemoteFragment;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/ACRemoteFragment;->access$100(Lcom/iot/engine/GoRemote/ACRemoteFragment;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 261
    .end local v1    # "jParams":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/ACRemoteFragment$IRFireServiceTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 244
    return-void
.end method
