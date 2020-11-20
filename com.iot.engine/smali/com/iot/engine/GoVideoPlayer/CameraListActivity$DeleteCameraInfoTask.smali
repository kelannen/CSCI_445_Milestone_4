.class Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;
.super Landroid/os/AsyncTask;
.source "CameraListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCameraInfoTask"
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
.field mGoCamId:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "response":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->mGoCamId:Ljava/lang/String;

    .line 308
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 309
    .local v0, "jParams":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v2, "goCamId"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->mGoCamId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v3, "messageFrom"

    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Internet"

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gocam/deletecam"

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

    iget-object v5, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v5}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .end local v0    # "jParams":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 311
    .restart local v0    # "jParams":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v0    # "jParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 321
    const-string v1, "CameraListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete onPostExecute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v1

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v1

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 326
    :cond_0
    if-eqz p1, :cond_2

    .line 328
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "response":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-string v2, "Delete camera info successfully"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 332
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LDatabase/DatabaseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->mGoCamId:Ljava/lang/String;

    invoke-virtual {v1, v2}, LDatabase/DatabaseHandler;->deleteCameraInfo(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$800(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-virtual {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 298
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 299
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$602(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 300
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$DeleteCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 301
    return-void
.end method
