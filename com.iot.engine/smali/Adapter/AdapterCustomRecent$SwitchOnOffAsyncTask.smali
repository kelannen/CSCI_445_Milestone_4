.class LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;
.super Landroid/os/AsyncTask;
.source "AdapterCustomRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterCustomRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchOnOffAsyncTask"
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
.field curPosition:I

.field final synthetic this$0:LAdapter/AdapterCustomRecent;


# direct methods
.method constructor <init>(LAdapter/AdapterCustomRecent;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomRecent;

    .prologue
    .line 229
    iput-object p1, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 233
    new-instance v5, LSession/Constants;

    invoke-direct {v5}, LSession/Constants;-><init>()V

    .line 234
    .local v5, "request":LSession/Constants;
    const-string v4, ""

    .line 235
    .local v4, "messageType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 237
    .local v2, "mResponse":Ljava/lang/String;
    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v7, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    const-string v4, "Internet"

    .line 244
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->curPosition:I

    .line 245
    const/4 v6, 0x1

    aget-object v0, p1, v6

    .line 246
    .local v0, "dimmerStatus":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v7, "switchId"

    iget-object v6, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v6}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v6

    iget v8, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "SwitchID"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v6, "switchStatus"

    const/4 v7, 0x2

    aget-object v7, p1, v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v7, "dimmerValue"

    iget-object v6, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v6}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v6

    iget v8, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "DimmerValue"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v6, "userid"

    iget-object v7, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v7, v7, LAdapter/AdapterCustomRecent;->sp:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v6, "messageFrom"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v6, "Recent JSON BODY :"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/switch/changestatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v8, v8, LAdapter/AdapterCustomRecent;->sp:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 258
    .end local v0    # "dimmerStatus":Ljava/lang/String;
    .end local v1    # "jMain":Lorg/json/JSONObject;
    .end local v2    # "mResponse":Ljava/lang/String;
    .local v3, "mResponse":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 240
    .end local v3    # "mResponse":Ljava/lang/String;
    .restart local v2    # "mResponse":Ljava/lang/String;
    :cond_0
    const-string v4, "Localhub"

    goto/16 :goto_0

    .line 256
    :catch_0
    move-exception v6

    move-object v3, v2

    .line 258
    .end local v2    # "mResponse":Ljava/lang/String;
    .restart local v3    # "mResponse":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 265
    if-eqz p1, :cond_1

    .line 267
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "jResult":Lorg/json/JSONObject;
    const-string v3, "Change Status Result : "

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "jData":Lorg/json/JSONObject;
    iget-object v3, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v3}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 272
    .local v2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "SwitchStatus"

    const-string v4, "state"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v3, "Switch Info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v4, v3, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    const-string v3, "SwitchID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "state"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dimmerValue"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v4, v3, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    const-string v3, "SwitchID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "state"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dimmerValue"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, LDatabase/DatabaseHandler;->updateRecentSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v3}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v0    # "jData":Lorg/json/JSONObject;
    .end local v1    # "jResult":Lorg/json/JSONObject;
    .end local v2    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 279
    .restart local v1    # "jResult":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "Change Status Result"

    const-string v4, "Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 285
    :cond_1
    const-string v3, "ChangeStatus"

    const-string v4, "Result null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
