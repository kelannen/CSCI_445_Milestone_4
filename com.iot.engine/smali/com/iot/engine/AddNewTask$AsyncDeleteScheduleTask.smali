.class Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;
.super Landroid/os/AsyncTask;
.source "AddNewTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/AddNewTask;
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
.field final synthetic this$0:Lcom/iot/engine/AddNewTask;


# direct methods
.method private constructor <init>(Lcom/iot/engine/AddNewTask;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/AddNewTask;Lcom/iot/engine/AddNewTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/AddNewTask;
    .param p2, "x1"    # Lcom/iot/engine/AddNewTask$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;-><init>(Lcom/iot/engine/AddNewTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/String;
    .locals 9
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
    .line 320
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 321
    .local v2, "res":LSession/Constants;
    new-instance v5, LSession/SessionManager;

    iget-object v6, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-direct {v5, v6}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 322
    .local v5, "session":LSession/SessionManager;
    const-string v3, ""

    .line 323
    .local v3, "response":Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v1, p1, v6

    .line 326
    .local v1, "mList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 327
    .local v0, "jBody":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    const-string v6, "schedule_id"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/iot/engine/AddNewTask;->access$502(Lcom/iot/engine/AddNewTask;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    const-string v6, "userId"

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v6, "scheduleSwitchId"

    const-string v7, "schedule_id"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v6, "messageType"

    iget-object v7, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v7}, Lcom/iot/engine/AddNewTask;->access$600(Lcom/iot/engine/AddNewTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v6, "switchId"

    const-string v7, "SwitchID"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v6, "switchStatus"

    const-string v7, "SwitchStatus"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v6, "lockStatus"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Schedule_dates"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "Time"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "scheduleTime":Ljava/lang/String;
    const-string v6, "scheduleDateTime"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v6, "AddNewTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Schedule Delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/schedule/deletescheduleswitch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 341
    .end local v0    # "jBody":Lorg/json/JSONObject;
    .end local v4    # "scheduleTime":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 339
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 348
    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v2}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v2}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v2}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 352
    :cond_0
    if-eqz p1, :cond_2

    .line 353
    const-string v2, "AddNewTask"

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

    .line 355
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v2, v2, Lcom/iot/engine/AddNewTask;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v3}, Lcom/iot/engine/AddNewTask;->access$500(Lcom/iot/engine/AddNewTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteSchedule(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v2}, Lcom/iot/engine/AddNewTask;->setAdapter()V

    .line 359
    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v3, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v3}, Lcom/iot/engine/AddNewTask;->getResources()Landroid/content/res/Resources;

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

    .line 368
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v3, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v3}, Lcom/iot/engine/AddNewTask;->getResources()Landroid/content/res/Resources;

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
    .line 313
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 314
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/AddNewTask;->access$002(Lcom/iot/engine/AddNewTask;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 315
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$AsyncDeleteScheduleTask;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v0}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 316
    return-void
.end method
