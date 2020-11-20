.class Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;
.super Landroid/os/AsyncTask;
.source "RemoteDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/RemoteDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTowerList"
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
.field final synthetic this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoRemote/RemoteDetailsActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoRemote/RemoteDetailsActivity$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;-><init>(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 170
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 171
    .local v1, "request":LSession/Constants;
    const/4 v2, 0x0

    .line 175
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-static {v5}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    new-instance v4, LSession/SessionManager;

    iget-object v5, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-direct {v4, v5}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 177
    .local v4, "session":LSession/SessionManager;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v0, "jMain":Lorg/json/JSONObject;
    const-string v5, "userId"

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tower/getalltower"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 190
    .end local v0    # "jMain":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v4    # "session":LSession/SessionManager;
    .local v3, "response":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 184
    .end local v3    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    const-string v6, "Kindly check internet connection."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v2

    .line 190
    .end local v2    # "response":Ljava/lang/String;
    .restart local v3    # "response":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v3    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 197
    const-string v4, "TowerList :"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz p1, :cond_2

    .line 201
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    new-instance v1, Lorg/json/JSONArray;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "jArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerList:[Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerID:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 210
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 211
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    iget-object v4, v4, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerList:[Ljava/lang/String;

    const-string v5, "towerinfo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 212
    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    iget-object v4, v4, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->towerID:[Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/RemoteDetailsActivity;->access$300(Lcom/iot/engine/GoRemote/RemoteDetailsActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "i":I
    .end local v1    # "jArray":Lorg/json/JSONArray;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 225
    :cond_2
    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteDetailsActivity$AsyncTowerList;->this$0:Lcom/iot/engine/GoRemote/RemoteDetailsActivity;

    const-string v5, "Kindly try again."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 220
    :catch_0
    move-exception v4

    goto :goto_1
.end method
