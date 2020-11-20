.class Lcom/iot/engine/HideList$HideSwitchesAsyncTask;
.super Landroid/os/AsyncTask;
.source "HideList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/HideList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideSwitchesAsyncTask"
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
.field mapHide:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iot/engine/HideList;


# direct methods
.method public constructor <init>(Lcom/iot/engine/HideList;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "mapList"    # Ljava/util/HashMap;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->mapHide:Ljava/util/HashMap;

    .line 241
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 252
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 253
    .local v2, "request":LSession/Constants;
    new-instance v4, LSession/SessionManager;

    iget-object v5, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-direct {v4, v5}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 254
    .local v4, "session":LSession/SessionManager;
    const/4 v3, 0x0

    .line 256
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v5}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v5, "switchId"

    iget-object v6, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->mapHide:Ljava/util/HashMap;

    const-string v7, "SwitchID"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v5, "hideStatus"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v5, "userId"

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v5, "messageFrom"

    iget-object v6, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v6}, Lcom/iot/engine/HideList;->access$300(Lcom/iot/engine/HideList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v5, "Unhide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/switch/changehidestatus"

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

    invoke-virtual {v4}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 271
    .end local v1    # "jMain":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 266
    :cond_0
    iget-object v5, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    const-string v6, "Kindly check internet connection"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 278
    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v3}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v3}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v3}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 281
    :cond_0
    if-eqz p1, :cond_2

    .line 283
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "jResult":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    iget-object v4, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->mapHide:Ljava/util/HashMap;

    const-string v5, "hideStatus"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/iot/engine/HideList;->access$400(Lcom/iot/engine/HideList;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v3}, Lcom/iot/engine/HideList;->access$200(Lcom/iot/engine/HideList;)V

    .line 301
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 293
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    const-string v4, "Fail to hide operation"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    const-string v4, "Kindly try again."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 246
    iget-object v0, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    const-string v3, " Unhide appliance "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/HideList;->access$102(Lcom/iot/engine/HideList;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 247
    iget-object v0, p0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v0}, Lcom/iot/engine/HideList;->access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 248
    return-void
.end method
