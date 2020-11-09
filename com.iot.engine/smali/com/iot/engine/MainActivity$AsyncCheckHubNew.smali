.class Lcom/iot/engine/MainActivity$AsyncCheckHubNew;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCheckHubNew"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/MainActivity;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/MainActivity;
    .param p2, "x1"    # Lcom/iot/engine/MainActivity$1;

    .prologue
    .line 1286
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;-><init>(Lcom/iot/engine/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1286
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1296
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, ""

    .line 1300
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":8080/smart_home_local/home/verifygohub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "appUrl":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1302
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "homeId"

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1303
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, LSession/Constants;->doPostRequestForHub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1309
    .end local v0    # "appUrl":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 1305
    :catch_0
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1286
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1314
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1316
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 1320
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1321
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute:Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1327
    const-string v1, "response"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "not Present"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1328
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intRefreshTopicIntHID_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->subTopic:Ljava/lang/String;

    .line 1330
    new-instance v1, Lcom/iot/engine/MainActivity$AsyncMqttConnection;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tcp://odoo.trynoise.com:1883"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1332
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "Internet"

    invoke-static {v1, v2}, Lcom/iot/engine/MainActivity;->access$702(Lcom/iot/engine/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    sput-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    .line 1334
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "INTERNET_TEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "INTERNET_TEST"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1364
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 1336
    .restart local v0    # "jObj":Lorg/json/JSONObject;
    :cond_2
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "refreshBack"

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->subTopic:Ljava/lang/String;

    .line 1337
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "Localhub"

    invoke-static {v1, v2}, Lcom/iot/engine/MainActivity;->access$702(Lcom/iot/engine/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":8080/smart_home_local/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    .line 1339
    new-instance v1, Lcom/iot/engine/MainActivity$AsyncMqttConnection;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tcp://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":1883"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1340
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "INTERNET_TEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "INTERNET_TEST"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1346
    :cond_3
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v1}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1348
    :try_start_1
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intRefreshTopicIntHID_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->subTopic:Ljava/lang/String;

    .line 1351
    new-instance v1, Lcom/iot/engine/MainActivity$AsyncMqttConnection;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tcp://odoo.trynoise.com:1883"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1353
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "Internet"

    invoke-static {v1, v2}, Lcom/iot/engine/MainActivity;->access$702(Lcom/iot/engine/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1354
    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    sput-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    .line 1355
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "INTERNET_TEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "INTERNET_TEST"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1356
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 1359
    :cond_4
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "INTERNET_TEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "INTERNET_TEST"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1360
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "Kindly check network connection."

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1289
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1290
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    const-string v3, "Connecting to Pongo Master"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 1291
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncCheckHubNew;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 1292
    return-void
.end method
