.class Lcom/iot/engine/ActivityService$GetActivityMessagesTask;
.super Landroid/os/AsyncTask;
.source "ActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetActivityMessagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ActivityService;


# direct methods
.method constructor <init>(Lcom/iot/engine/ActivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ActivityService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->this$0:Lcom/iot/engine/ActivityService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 47
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    .line 48
    .local v0, "constants":LSession/Constants;
    new-instance v4, LSession/SessionManager;

    iget-object v5, p0, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->this$0:Lcom/iot/engine/ActivityService;

    invoke-virtual {v5}, Lcom/iot/engine/ActivityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 49
    .local v4, "session":LSession/SessionManager;
    const-string v3, ""

    .line 52
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "homeId"

    invoke-virtual {v4}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/home/getactivitylist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v5, "ActivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getactivitylist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v3, :cond_0

    .line 58
    iget-object v5, p0, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->this$0:Lcom/iot/engine/ActivityService;

    invoke-static {v5, v3}, Lcom/iot/engine/ActivityService;->access$000(Lcom/iot/engine/ActivityService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 60
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->this$0:Lcom/iot/engine/ActivityService;

    invoke-virtual {v5}, Lcom/iot/engine/ActivityService;->stopSelf()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/iot/engine/ActivityService$GetActivityMessagesTask;->this$0:Lcom/iot/engine/ActivityService;

    invoke-virtual {v0}, Lcom/iot/engine/ActivityService;->stopSelf()V

    .line 68
    return-void
.end method
