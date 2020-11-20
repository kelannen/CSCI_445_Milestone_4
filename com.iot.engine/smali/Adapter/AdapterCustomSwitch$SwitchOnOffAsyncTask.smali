.class LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;
.super Landroid/os/AsyncTask;
.source "AdapterCustomSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterCustomSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchOnOffAsyncTask"
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
.field curPosition:I

.field messageType:Ljava/lang/String;

.field switchStatus:Ljava/lang/String;

.field final synthetic this$0:LAdapter/AdapterCustomSwitch;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 480
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 476
    const-string v0, ""

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->messageType:Ljava/lang/String;

    .line 477
    const-string v0, ""

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->switchStatus:Ljava/lang/String;

    .line 481
    iput-object p2, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->view:Landroid/view/View;

    .line 482
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 474
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 492
    new-instance v4, LSession/Constants;

    invoke-direct {v4}, LSession/Constants;-><init>()V

    .line 493
    .local v4, "request":LSession/Constants;
    const/4 v2, 0x0

    .line 497
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v6, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    const-string v5, "Internet"

    iput-object v5, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->messageType:Ljava/lang/String;

    .line 503
    :goto_0
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    .line 504
    const/4 v5, 0x1

    aget-object v0, p1, v5

    .line 505
    .local v0, "dimmerValue":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, p1, v5

    iput-object v5, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->switchStatus:Ljava/lang/String;

    .line 506
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 507
    .local v1, "jMain":Lorg/json/JSONObject;
    const-string v6, "switchId"

    iget-object v5, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v5, v5, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v7, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v7, "SwitchID"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v5, "switchStatus"

    iget-object v6, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->switchStatus:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v5, "dimmerValue"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string v5, "userid"

    iget-object v6, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v6, v6, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v5, "messageFrom"

    iget-object v6, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->messageType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v5, "JSON BODY :"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/switch/changestatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v7, v7, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 522
    .end local v0    # "dimmerValue":Ljava/lang/String;
    .end local v1    # "jMain":Lorg/json/JSONObject;
    .end local v2    # "mResponse":Ljava/lang/String;
    .local v3, "mResponse":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 500
    .end local v3    # "mResponse":Ljava/lang/String;
    .restart local v2    # "mResponse":Ljava/lang/String;
    :cond_0
    const-string v5, "Localhub"

    iput-object v5, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->messageType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v5

    move-object v3, v2

    .line 522
    .end local v2    # "mResponse":Ljava/lang/String;
    .restart local v3    # "mResponse":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 474
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 527
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 529
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->messageType:Ljava/lang/String;

    const-string v4, "Internet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    iget-object v5, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->switchStatus:Ljava/lang/String;

    invoke-static {v3, v4, v5}, LAdapter/AdapterCustomSwitch;->access$500(LAdapter/AdapterCustomSwitch;ILjava/lang/String;)V

    .line 533
    :cond_0
    if-eqz p1, :cond_6

    .line 535
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, "jResult":Lorg/json/JSONObject;
    const-string v3, "Change Status Result : "

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "jData":Lorg/json/JSONObject;
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 540
    .local v2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "SwitchStatus"

    const-string v4, "state"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v3, "DimmerValue"

    const-string v4, "dimmerValue"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v3, "Switch Info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v3, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    const-string v3, "SwitchID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "state"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dimmerValue"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    const-string v5, "state"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, LAdapter/AdapterCustomSwitch;->access$500(LAdapter/AdapterCustomSwitch;ILjava/lang/String;)V

    .line 545
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v0    # "jData":Lorg/json/JSONObject;
    .end local v1    # "jResult":Lorg/json/JSONObject;
    .end local v2    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    instance-of v3, v3, Lcom/iot/engine/LivingRoom;

    if-eqz v3, :cond_1

    .line 580
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    check-cast v3, Lcom/iot/engine/LivingRoom;

    invoke-virtual {v3, v7}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 585
    :cond_1
    return-void

    .line 550
    .restart local v1    # "jResult":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 551
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Already Lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v5, v3, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v3, v4, v6}, LDatabase/DatabaseHandler;->UpdateLockFlag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-string v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 561
    :cond_3
    :goto_1
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4}, LAdapter/AdapterCustomSwitch;->notifyItemChanged(I)V

    .line 566
    :goto_2
    const-string v3, "Change Status Result"

    const-string v4, "Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 556
    .restart local v1    # "jResult":Lorg/json/JSONObject;
    :cond_4
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Already Hidden"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v5, v3, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->curPosition:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v3, v4, v6}, LDatabase/DatabaseHandler;->UpdateHideStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-string v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 564
    :cond_5
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-string v4, "Problem."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 572
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :cond_6
    const-string v3, "ChangeStatus"

    const-string v4, "Result null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 488
    return-void
.end method
