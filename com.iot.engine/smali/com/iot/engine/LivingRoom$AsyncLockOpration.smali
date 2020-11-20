.class Lcom/iot/engine/LivingRoom$AsyncLockOpration;
.super Landroid/os/AsyncTask;
.source "LivingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/LivingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLockOpration"
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
.field mapList:Ljava/util/HashMap;
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

.field final synthetic this$0:Lcom/iot/engine/LivingRoom;


# direct methods
.method public constructor <init>(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "mapList"    # Ljava/util/HashMap;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 839
    iput-object p2, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->mapList:Ljava/util/HashMap;

    .line 840
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 834
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 844
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 845
    .local v2, "request":LSession/Constants;
    new-instance v1, LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {v1, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 846
    .local v1, "manager":LSession/SessionManager;
    const/4 v3, 0x0

    .line 849
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 852
    .local v0, "jMain":Lorg/json/JSONObject;
    const-string v4, "switchId"

    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->mapList:Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    const-string v4, "lockStatus"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string v4, "userId"

    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v5}, Lcom/iot/engine/LivingRoom;->access$600(Lcom/iot/engine/LivingRoom;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    const-string v4, "messageFrom"

    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v5}, Lcom/iot/engine/LivingRoom;->access$300(Lcom/iot/engine/LivingRoom;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    const-string v4, "Lock Body-->"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/changelockstatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 867
    .end local v0    # "jMain":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 862
    :cond_0
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Kindly check internet connection."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 834
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 872
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 873
    if-eqz p1, :cond_1

    .line 874
    const-string v2, "Lock Service result:"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 880
    .local v1, "jResult":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->mapList:Ljava/util/HashMap;

    const-string v4, "lockStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/iot/engine/LivingRoom;->access$700(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 889
    .end local v0    # "jObj":Lorg/json/JSONObject;
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 882
    .restart local v0    # "jObj":Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Fail to lock the operation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 887
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Kindly try again."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
