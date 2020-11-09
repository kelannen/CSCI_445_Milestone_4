.class LFragments/Tab2$AsyncScheduleTask;
.super Landroid/os/AsyncTask;
.source "Tab2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Tab2;
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
.field dimmerValue:Ljava/lang/String;

.field final synthetic this$0:LFragments/Tab2;


# direct methods
.method private constructor <init>(LFragments/Tab2;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFragments/Tab2;LFragments/Tab2$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Tab2;
    .param p2, "x1"    # LFragments/Tab2$1;

    .prologue
    .line 343
    invoke-direct {p0, p1}, LFragments/Tab2$AsyncScheduleTask;-><init>(LFragments/Tab2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Tab2$AsyncScheduleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 356
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 357
    .local v1, "res":LSession/Constants;
    const/4 v2, 0x0

    .line 358
    .local v2, "response":Ljava/lang/String;
    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    const-string v5, "Internet"

    invoke-static {v4, v5}, LFragments/Tab2;->access$402(LFragments/Tab2;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v0, "jReqBody":Lorg/json/JSONObject;
    const-string v4, "switchId"

    iget-object v5, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    iget-object v5, v5, LFragments/Tab2;->mSwitchID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v4, "switchStatus"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v4, "lockStatus"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v4, "scheduleDateTime"

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v4, "userId"

    iget-object v5, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    iget-object v5, v5, LFragments/Tab2;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v4, "messageFrom"

    iget-object v5, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v5}, LFragments/Tab2;->access$400(LFragments/Tab2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v4, "dimmerValue"

    iget-object v5, p0, LFragments/Tab2$AsyncScheduleTask;->dimmerValue:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v4, "dimmerStatus"

    iget-object v5, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v5}, LFragments/Tab2;->access$000(LFragments/Tab2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v4, "repeatStatus"

    const-string v5, "NA"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v4, "Tab2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "schedule doInBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-virtual {v4}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 379
    .local v3, "session":LSession/SessionManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/schedule/scheduleswitch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 381
    .end local v0    # "jReqBody":Lorg/json/JSONObject;
    .end local v3    # "session":LSession/SessionManager;
    :goto_1
    return-object v2

    .line 362
    :cond_0
    iget-object v4, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    const-string v5, "Localhub"

    invoke-static {v4, v5}, LFragments/Tab2;->access$402(LFragments/Tab2;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 380
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 343
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Tab2$AsyncScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v0}, LFragments/Tab2;->access$300(LFragments/Tab2;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v0}, LFragments/Tab2;->access$300(LFragments/Tab2;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 389
    :cond_0
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    iget-object v1, p0, LFragments/Tab2$AsyncScheduleTask;->dimmerValue:Ljava/lang/String;

    invoke-static {v0, p1, v1}, LFragments/Tab2;->access$500(LFragments/Tab2;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 347
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 348
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-virtual {v2}, LFragments/Tab2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LFragments/Tab2;->access$302(LFragments/Tab2;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 349
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v0}, LFragments/Tab2;->access$300(LFragments/Tab2;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Kindly wait"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v0}, LFragments/Tab2;->access$300(LFragments/Tab2;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 351
    iget-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    invoke-static {v0}, LFragments/Tab2;->access$300(LFragments/Tab2;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LFragments/Tab2$AsyncScheduleTask;->this$0:LFragments/Tab2;

    iget-object v1, v1, LFragments/Tab2;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LFragments/Tab2$AsyncScheduleTask;->dimmerValue:Ljava/lang/String;

    .line 353
    return-void
.end method
