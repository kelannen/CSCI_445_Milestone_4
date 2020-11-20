.class Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;
.super Landroid/os/AsyncTask;
.source "CameraListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetListOfCameraInfoTask"
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
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;-><init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 240
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v0, "jParams":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v3}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v3, "messageFrom"

    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Internet"

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "CameraListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getall doInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gocam/getallcam"

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

    iget-object v5, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v5}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .end local v0    # "jParams":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 242
    .restart local v0    # "jParams":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "jParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 18
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 254
    const-string v2, "CameraListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List onPostExecute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 259
    :cond_0
    if-eqz p1, :cond_5

    .line 261
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    .local v17, "response":Lorg/json/JSONObject;
    const-string v2, "status"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    new-instance v15, Lorg/json/JSONArray;

    const-string v2, "result"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 265
    .local v15, "jArr":Lorg/json/JSONArray;
    const-string v2, "result"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LDatabase/DatabaseHandler;

    move-result-object v2

    invoke-virtual {v2}, LDatabase/DatabaseHandler;->deleteAllCameraInfo()V

    .line 267
    const-string v2, "CameraListActivity"

    const-string v3, "delete All "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 271
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 272
    .local v16, "jObj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LDatabase/DatabaseHandler;

    move-result-object v2

    const-string v3, "id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "localIP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "localPort"

    .line 273
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "internetIP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "internetPort"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "camType"

    .line 274
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "camUserName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "camPassword"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "camURL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    invoke-virtual/range {v2 .. v12}, LDatabase/DatabaseHandler;->AddUpdateCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 277
    .end local v16    # "jObj":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, LSession/SessionManager;->getCameraShortcutFlag()Ljava/lang/String;

    move-result-object v13

    .line 278
    .local v13, "cameraID":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$700(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LDatabase/DatabaseHandler;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v13, v3}, LDatabase/DatabaseHandler;->updateCameraShorcutFlagByCamId(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$800(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v13    # "cameraID":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "jArr":Lorg/json/JSONArray;
    .end local v17    # "response":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    return-void

    .line 286
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-virtual {v3}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 284
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 231
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 232
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$602(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 233
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$GetListOfCameraInfoTask;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$600(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 234
    return-void
.end method
