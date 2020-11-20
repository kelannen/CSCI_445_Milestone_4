.class LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;
.super Landroid/os/AsyncTask;
.source "AdapterCustomSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterCustomSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaslForCurtainStatusChange"
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
.field final synthetic this$0:LAdapter/AdapterCustomSwitch;


# direct methods
.method private constructor <init>(LAdapter/AdapterCustomSwitch;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$1;)V
    .locals 0
    .param p1, "x0"    # LAdapter/AdapterCustomSwitch;
    .param p2, "x1"    # LAdapter/AdapterCustomSwitch$1;

    .prologue
    .line 618
    invoke-direct {p0, p1}, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;-><init>(LAdapter/AdapterCustomSwitch;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 618
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 621
    const/4 v2, 0x0

    .line 623
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 624
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v3, "curtainStatus"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v3, "switchStatus"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v3, "switchId"

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v3, "userId"

    iget-object v4, p0, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v4, "messageFrom"

    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Internet"

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    const-string v3, "AdapterCustomSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curtainChange:Res "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "switch/changecurtainstatus"

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

    iget-object v6, p0, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v6, v6, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 633
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 628
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 618
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 639
    const-string v3, "AdapterCustomSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute:Result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    new-instance v1, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 645
    .local v1, "jResult":Lorg/json/JSONObject;
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    const-string v4, "switchId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v3, v4, v5, v6}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    instance-of v3, v3, Lcom/iot/engine/LivingRoom;

    if-eqz v3, :cond_1

    .line 650
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    check-cast v3, Lcom/iot/engine/LivingRoom;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iot/engine/LivingRoom;->settextCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
