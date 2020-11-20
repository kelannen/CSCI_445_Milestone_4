.class Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;
.super Landroid/os/AsyncTask;
.source "AddCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddUpdateCameraInfo"
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
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;-><init>(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v0, "jParams":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const-string v2, "goCamId"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_0
    const-string v2, "camName"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$800(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v2, "localIP"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$900(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v2, "localPort"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v2, "internetIP"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1100(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v2, "internetPort"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v2, "camUserName"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v2, "camPassword"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1400(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v2, "camType"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v3, "messageFrom"

    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Internet"

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v2, "AddCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gocam/addcam"

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

    iget-object v5, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v5}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .end local v0    # "jParams":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 277
    .restart local v0    # "jParams":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "jParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 14
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 290
    const-string v0, "AddCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add/Update onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 295
    :cond_0
    if-eqz p1, :cond_1

    .line 297
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v13, "response":Lorg/json/JSONObject;
    const-string v0, "status"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    new-instance v12, Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    .local v12, "jresult":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)LDatabase/DatabaseHandler;

    move-result-object v0

    const-string v1, "goCamId"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$800(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$900(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v4}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v5}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1100(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v6}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v7}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v8}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v9}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1400(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "camURL"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, LDatabase/DatabaseHandler;->AddUpdateCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "refreshChannelList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 309
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-virtual {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->finish()V

    .line 317
    .end local v12    # "jresult":Lorg/json/JSONObject;
    .end local v13    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 304
    .restart local v12    # "jresult":Lorg/json/JSONObject;
    .restart local v13    # "response":Lorg/json/JSONObject;
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)LDatabase/DatabaseHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$800(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$900(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v4}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v5}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1100(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v6}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1200(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v7}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$000(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v8}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1300(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v9}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$1400(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "camURL"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, LDatabase/DatabaseHandler;->AddUpdateCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v12    # "jresult":Lorg/json/JSONObject;
    .end local v13    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 314
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 311
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "response":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    const-string v1, "msg"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 256
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$502(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 257
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity$AddUpdateCameraInfo;->this$0:Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;->access$500(Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 258
    return-void
.end method
