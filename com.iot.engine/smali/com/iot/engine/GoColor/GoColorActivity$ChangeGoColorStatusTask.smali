.class Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;
.super Landroid/os/AsyncTask;
.source "GoColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoColor/GoColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeGoColorStatusTask"
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
.field final synthetic this$0:Lcom/iot/engine/GoColor/GoColorActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoColor/GoColorActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoColor/GoColorActivity;Lcom/iot/engine/GoColor/GoColorActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoColor/GoColorActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoColor/GoColorActivity$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;-><init>(Lcom/iot/engine/GoColor/GoColorActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, "switchId"

    iget-object v4, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-static {v4}, Lcom/iot/engine/GoColor/GoColorActivity;->access$100(Lcom/iot/engine/GoColor/GoColorActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v3, "switchStatus"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v3, "dimmerValue"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v3, "userid"

    iget-object v4, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-static {v4}, Lcom/iot/engine/GoColor/GoColorActivity;->access$200(Lcom/iot/engine/GoColor/GoColorActivity;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v4, "messageFrom"

    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Internet"

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v3, "goColor"

    iget-object v4, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-static {v4}, Lcom/iot/engine/GoColor/GoColorActivity;->access$200(Lcom/iot/engine/GoColor/GoColorActivity;)LSession/SessionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-static {v5}, Lcom/iot/engine/GoColor/GoColorActivity;->access$100(Lcom/iot/engine/GoColor/GoColorActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LSession/SessionManager;->getGoColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v3, "PongoColorActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PongoColor:Res "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "switch/changegocolor"

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

    iget-object v6, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-static {v6}, Lcom/iot/engine/GoColor/GoColorActivity;->access$200(Lcom/iot/engine/GoColor/GoColorActivity;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_1
    const-string v3, "PongoColorActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PongoColor doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v2

    .line 144
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v3, "Localhub"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 149
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 159
    if-eqz p1, :cond_0

    .line 161
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "jResponse":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "jResult":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/iot/engine/GoColor/GoColorActivity$ChangeGoColorStatusTask;->this$0:Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-static {v3}, Lcom/iot/engine/GoColor/GoColorActivity;->access$300(Lcom/iot/engine/GoColor/GoColorActivity;)LDatabase/DatabaseHandler;

    move-result-object v3

    const-string v4, "switchId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v3, v4, v5, v6}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "jResponse":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
