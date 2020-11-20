.class Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;
.super Landroid/os/AsyncTask;
.source "ScheduleProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ScheduleProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncScheduleTask"
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
.field final synthetic this$0:Lcom/iot/engine/ScheduleProfile;


# direct methods
.method private constructor <init>(Lcom/iot/engine/ScheduleProfile;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/ScheduleProfile;Lcom/iot/engine/ScheduleProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/ScheduleProfile;
    .param p2, "x1"    # Lcom/iot/engine/ScheduleProfile$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;-><init>(Lcom/iot/engine/ScheduleProfile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 459
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v4}, Lcom/iot/engine/ScheduleProfile;->access$000(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    const-string v4, ","

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v5}, Lcom/iot/engine/ScheduleProfile;->access$800(Lcom/iot/engine/ScheduleProfile;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "weekDay":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 466
    .local v1, "jObj":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v6, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Internet"

    :goto_1
    invoke-static {v5, v4}, Lcom/iot/engine/ScheduleProfile;->access$902(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    const-string v4, "profileId"

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v5}, Lcom/iot/engine/ScheduleProfile;->access$1000(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v4, "repeatStatus"

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v5}, Lcom/iot/engine/ScheduleProfile;->access$000(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string v4, "repeatWeek"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v4, "userId"

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    iget-object v5, v5, Lcom/iot/engine/ScheduleProfile;->session:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v4, "scheduleDateTime"

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v5}, Lcom/iot/engine/ScheduleProfile;->access$1100(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v4, "messageFrom"

    iget-object v5, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v5}, Lcom/iot/engine/ScheduleProfile;->access$900(Lcom/iot/engine/ScheduleProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v4, "ScheduleProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Schdule doInBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/schedule/scheduleprofile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    iget-object v7, v7, Lcom/iot/engine/ScheduleProfile;->session:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "weekDay":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 462
    :cond_0
    const-string v3, "NA"

    .restart local v3    # "weekDay":Ljava/lang/String;
    goto/16 :goto_0

    .line 466
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "Localhub"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 478
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "weekDay":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 480
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 445
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$700(Lcom/iot/engine/ScheduleProfile;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$700(Lcom/iot/engine/ScheduleProfile;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$700(Lcom/iot/engine/ScheduleProfile;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0, p1}, Lcom/iot/engine/ScheduleProfile;->access$1200(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 448
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 449
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    const-string v3, "Add Mood Schedule "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ScheduleProfile;->access$702(Lcom/iot/engine/ScheduleProfile;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 450
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$AsyncScheduleTask;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$700(Lcom/iot/engine/ScheduleProfile;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 451
    return-void
.end method
