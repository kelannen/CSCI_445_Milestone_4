.class Lcom/iot/engine/HideList$AsyncTaskForHideRoom;
.super Landroid/os/AsyncTask;
.source "HideList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/HideList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForHideRoom"
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
.field mRoomID:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/HideList;


# direct methods
.method private constructor <init>(Lcom/iot/engine/HideList;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/HideList;Lcom/iot/engine/HideList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/HideList;
    .param p2, "x1"    # Lcom/iot/engine/HideList$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;-><init>(Lcom/iot/engine/HideList;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "Internet"

    .line 198
    .local v2, "messageFrom":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    .line 199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v1, "jRes":Lorg/json/JSONObject;
    const-string v4, "userId"

    iget-object v5, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    iget-object v5, v5, Lcom/iot/engine/HideList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v4, "roomId"

    iget-object v5, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v4, "hideStatus"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v4, "messageFrom"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v4, "HideList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground:Unhide Response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/room/hideroom"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    iget-object v7, v7, Lcom/iot/engine/HideList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .end local v1    # "jRes":Lorg/json/JSONObject;
    .end local v2    # "messageFrom":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 197
    :cond_0
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v2}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v2}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v2}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 217
    :cond_0
    if-eqz p1, :cond_2

    .line 218
    const-string v2, "HideList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute:Unhide Result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    iget-object v2, v2, Lcom/iot/engine/HideList;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->mRoomID:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateRoomHidestatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v2}, Lcom/iot/engine/HideList;->access$200(Lcom/iot/engine/HideList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    iget-object v3, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-virtual {v3}, Lcom/iot/engine/HideList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 189
    iget-object v0, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    const-string v3, "Unhide Room "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/HideList;->access$102(Lcom/iot/engine/HideList;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 190
    iget-object v0, p0, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v0}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 191
    return-void
.end method
