.class Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;
.super Landroid/os/AsyncTask;
.source "EditSwitchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/EditSwitchOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncEditSwitchTask"
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
.field switchName:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/EditSwitchOperation;


# direct methods
.method private constructor <init>(Lcom/iot/engine/EditSwitchOperation;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/EditSwitchOperation;Lcom/iot/engine/EditSwitchOperation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/EditSwitchOperation;
    .param p2, "x1"    # Lcom/iot/engine/EditSwitchOperation$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;-><init>(Lcom/iot/engine/EditSwitchOperation;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 164
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    .line 165
    .local v0, "constant":LSession/Constants;
    const/4 v2, 0x0

    .line 166
    .local v2, "mResponse":Ljava/lang/String;
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->switchName:Ljava/lang/String;

    .line 169
    :try_start_0
    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    const-string v3, "Internet"

    .line 176
    .local v3, "messageType":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v1, "jReqBody":Lorg/json/JSONObject;
    const-string v4, "switchId"

    iget-object v5, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v5}, Lcom/iot/engine/EditSwitchOperation;->access$200(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v4, "switchName"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v4, "userId"

    iget-object v5, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    iget-object v5, v5, Lcom/iot/engine/EditSwitchOperation;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v4, "messageFrom"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v4, "switchImageId"

    iget-object v5, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v5}, Lcom/iot/engine/EditSwitchOperation;->access$300(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v4, "Edit Operation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit Body "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/edit"

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

    iget-object v6, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    iget-object v6, v6, Lcom/iot/engine/EditSwitchOperation;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 188
    .end local v1    # "jReqBody":Lorg/json/JSONObject;
    .end local v3    # "messageType":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 173
    :cond_0
    const-string v3, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "messageType":Ljava/lang/String;
    goto/16 :goto_0

    .line 186
    .end local v3    # "messageType":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 188
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 194
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v2}, Lcom/iot/engine/EditSwitchOperation;->access$100(Lcom/iot/engine/EditSwitchOperation;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v2}, Lcom/iot/engine/EditSwitchOperation;->access$100(Lcom/iot/engine/EditSwitchOperation;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v2}, Lcom/iot/engine/EditSwitchOperation;->access$100(Lcom/iot/engine/EditSwitchOperation;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 198
    :cond_0
    if-eqz p1, :cond_2

    .line 199
    const-string v2, "Edit Operation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Edit Result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    const-string v3, "Switch updated successfully"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 204
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-direct {v0, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v2}, Lcom/iot/engine/EditSwitchOperation;->access$200(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v3}, Lcom/iot/engine/EditSwitchOperation;->access$300(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LDatabase/DatabaseHandler;->updateSwitchImageId(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v2}, Lcom/iot/engine/EditSwitchOperation;->access$200(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v3}, Lcom/iot/engine/EditSwitchOperation;->access$300(Lcom/iot/engine/EditSwitchOperation;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->switchName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, LDatabase/DatabaseHandler;->updateRecntSwitchImageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-virtual {v2}, Lcom/iot/engine/EditSwitchOperation;->onBackPressed()V

    .line 216
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 209
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    const-string v3, "Kindly try again."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 157
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 158
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    const-string v3, "Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/EditSwitchOperation;->access$102(Lcom/iot/engine/EditSwitchOperation;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 159
    iget-object v0, p0, Lcom/iot/engine/EditSwitchOperation$AsyncEditSwitchTask;->this$0:Lcom/iot/engine/EditSwitchOperation;

    invoke-static {v0}, Lcom/iot/engine/EditSwitchOperation;->access$100(Lcom/iot/engine/EditSwitchOperation;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 160
    return-void
.end method
