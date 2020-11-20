.class Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;
.super Landroid/os/AsyncTask;
.source "SetRouterPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/SetRouterPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncGetSSIDPASS"
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
.field final synthetic this$0:Lcom/iot/engine/SetRouterPassword;


# direct methods
.method private constructor <init>(Lcom/iot/engine/SetRouterPassword;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/SetRouterPassword;Lcom/iot/engine/SetRouterPassword$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/SetRouterPassword;
    .param p2, "x1"    # Lcom/iot/engine/SetRouterPassword$1;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;-><init>(Lcom/iot/engine/SetRouterPassword;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "response":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .local v1, "jObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "homeId"

    iget-object v4, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v4}, Lcom/iot/engine/SetRouterPassword;->access$300(Lcom/iot/engine/SetRouterPassword;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v3, "doInBackground:Request"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/user/backupconfig"

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

    iget-object v6, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v6}, Lcom/iot/engine/SetRouterPassword;->access$300(Lcom/iot/engine/SetRouterPassword;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "SetRouterPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-object v2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 215
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 246
    iget-object v2, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v2}, Lcom/iot/engine/SetRouterPassword;->access$200(Lcom/iot/engine/SetRouterPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v2}, Lcom/iot/engine/SetRouterPassword;->access$200(Lcom/iot/engine/SetRouterPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v2}, Lcom/iot/engine/SetRouterPassword;->access$200(Lcom/iot/engine/SetRouterPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 250
    :cond_0
    if-eqz p1, :cond_1

    .line 251
    const-string v2, "onPostExecute: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "jResponse":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "jResult":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    const-string v3, "secureUsername"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "securePassword"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/iot/engine/SetRouterPassword;->access$400(Lcom/iot/engine/SetRouterPassword;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v2, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;

    iget-object v3, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-direct {v2, v3}, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;-><init>(Lcom/iot/engine/SetRouterPassword;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "jResponse":Lorg/json/JSONObject;
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 218
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 219
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    const-string v3, "Set your router password "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/SetRouterPassword;->access$202(Lcom/iot/engine/SetRouterPassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 220
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v0}, Lcom/iot/engine/SetRouterPassword;->access$200(Lcom/iot/engine/SetRouterPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 221
    return-void
.end method
