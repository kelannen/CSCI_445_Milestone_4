.class LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;
.super Landroid/os/AsyncTask;
.source "SchedularAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/SchedularAdapter;
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
.field mPos:I

.field mScheduleId:Ljava/lang/String;

.field final synthetic this$0:LAdapter/SchedularAdapter;


# direct methods
.method public constructor <init>(LAdapter/SchedularAdapter;I)V
    .locals 1
    .param p2, "mPosition"    # I

    .prologue
    .line 222
    iput-object p1, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->mScheduleId:Ljava/lang/String;

    .line 223
    iput p2, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->mPos:I

    .line 224
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

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
    .line 237
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 238
    .local v3, "res":LSession/Constants;
    new-instance v6, LSession/SessionManager;

    iget-object v7, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v7, v7, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 239
    .local v6, "session":LSession/SessionManager;
    const-string v4, ""

    .local v4, "response":Ljava/lang/String;
    const-string v2, ""

    .line 240
    .local v2, "messageType":Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v1, p1, v7

    .line 241
    .local v1, "mList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v8, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    const-string v2, "Internet"

    .line 248
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .local v0, "jBody":Lorg/json/JSONObject;
    const-string v7, "schedule_id"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->mScheduleId:Ljava/lang/String;

    .line 250
    const-string v7, "userId"

    invoke-virtual {v6}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v7, "scheduleSwitchId"

    const-string v8, "schedule_id"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v7, "messageType"

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v7, "switchId"

    const-string v8, "SwitchID"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v7, "switchStatus"

    const-string v8, "SwitchStatus"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v7, "lockStatus"

    const-string v8, "0"

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
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

    .line 257
    .local v5, "scheduleTime":Ljava/lang/String;
    const-string v7, "scheduleDateTime"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
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

    .line 262
    .end local v0    # "jBody":Lorg/json/JSONObject;
    .end local v5    # "scheduleTime":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 244
    :cond_0
    const-string v2, "Localhub"

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-static {v3}, LAdapter/SchedularAdapter;->access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-static {v3}, LAdapter/SchedularAdapter;->access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-static {v3}, LAdapter/SchedularAdapter;->access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->cancel()V

    .line 273
    :cond_0
    if-eqz p1, :cond_2

    .line 274
    const-string v3, "SchedularAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute: result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v3, v3, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->mScheduleId:Ljava/lang/String;

    invoke-virtual {v0, v3}, LDatabase/DatabaseHandler;->deleteSchedule(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v3, v3, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->mPos:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-virtual {v3}, LAdapter/SchedularAdapter;->notifyDataSetChanged()V

    .line 282
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v3, v3, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v4, v4, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v3, v3, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v4, v4, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 229
    iget-object v0, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    iget-object v2, v2, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LAdapter/SchedularAdapter;->access$102(LAdapter/SchedularAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 230
    iget-object v0, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-static {v0}, LAdapter/SchedularAdapter;->access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Kindly wait "

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-static {v0}, LAdapter/SchedularAdapter;->access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 232
    iget-object v0, p0, LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;->this$0:LAdapter/SchedularAdapter;

    invoke-static {v0}, LAdapter/SchedularAdapter;->access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 233
    return-void
.end method
