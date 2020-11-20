.class Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;
.super Landroid/os/AsyncTask;
.source "ScheduleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ScheduleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDeleteScheduleTask"
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
.field final synthetic this$0:Lcom/iot/engine/ScheduleListActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/ScheduleListActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/ScheduleListActivity;Lcom/iot/engine/ScheduleListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/ScheduleListActivity;
    .param p2, "x1"    # Lcom/iot/engine/ScheduleListActivity$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;-><init>(Lcom/iot/engine/ScheduleListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/String;
    .locals 10
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
    .line 255
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 256
    .local v3, "res":LSession/Constants;
    new-instance v6, LSession/SessionManager;

    iget-object v7, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-direct {v6, v7}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 257
    .local v6, "session":LSession/SessionManager;
    const-string v4, ""

    .local v4, "response":Ljava/lang/String;
    const-string v2, ""

    .line 258
    .local v2, "messageType":Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v1, p1, v7

    .line 259
    .local v1, "mList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v8, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    const-string v2, "Internet"

    .line 266
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .local v0, "jBody":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    const-string v7, "schedule_id"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/iot/engine/ScheduleListActivity;->access$602(Lcom/iot/engine/ScheduleListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    const-string v7, "userId"

    invoke-virtual {v6}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v7, "scheduleSwitchId"

    const-string v8, "schedule_id"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v7, "messageType"

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v7, "switchId"

    const-string v8, "SwitchID"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v7, "switchStatus"

    const-string v8, "SwitchStatus"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v7, "lockStatus"

    const-string v8, "0"

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Schedule_dates"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "Time"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "scheduleTime":Ljava/lang/String;
    const-string v7, "scheduleDateTime"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v7, "ScheduleListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Schedule Delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/schedule/deletescheduleswitch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 281
    .end local v0    # "jBody":Lorg/json/JSONObject;
    .end local v5    # "scheduleTime":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 262
    :cond_0
    const-string v2, "Localhub"

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 286
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 288
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v2}, Lcom/iot/engine/ScheduleListActivity;->access$100(Lcom/iot/engine/ScheduleListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v2}, Lcom/iot/engine/ScheduleListActivity;->access$100(Lcom/iot/engine/ScheduleListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v2}, Lcom/iot/engine/ScheduleListActivity;->access$100(Lcom/iot/engine/ScheduleListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 292
    :cond_0
    if-eqz p1, :cond_2

    .line 293
    const-string v2, "ScheduleListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute: result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v2}, Lcom/iot/engine/ScheduleListActivity;->access$700(Lcom/iot/engine/ScheduleListActivity;)LDatabase/DatabaseHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v3}, Lcom/iot/engine/ScheduleListActivity;->access$600(Lcom/iot/engine/ScheduleListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteSchedule(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v2}, Lcom/iot/engine/ScheduleListActivity;->access$300(Lcom/iot/engine/ScheduleListActivity;)V

    .line 300
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    iget-object v3, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-virtual {v3}, Lcom/iot/engine/ScheduleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    iget-object v3, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-virtual {v3}, Lcom/iot/engine/ScheduleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 249
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ScheduleListActivity;->access$102(Lcom/iot/engine/ScheduleListActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 250
    iget-object v0, p0, Lcom/iot/engine/ScheduleListActivity$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-static {v0}, Lcom/iot/engine/ScheduleListActivity;->access$100(Lcom/iot/engine/ScheduleListActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 251
    return-void
.end method
