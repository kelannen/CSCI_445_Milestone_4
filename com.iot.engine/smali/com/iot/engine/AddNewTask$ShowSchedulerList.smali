.class Lcom/iot/engine/AddNewTask$ShowSchedulerList;
.super Landroid/os/AsyncTask;
.source "AddNewTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/AddNewTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowSchedulerList"
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
.field messageType:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/AddNewTask;


# direct methods
.method private constructor <init>(Lcom/iot/engine/AddNewTask;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->messageType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/AddNewTask;Lcom/iot/engine/AddNewTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/AddNewTask;
    .param p2, "x1"    # Lcom/iot/engine/AddNewTask$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/iot/engine/AddNewTask$ShowSchedulerList;-><init>(Lcom/iot/engine/AddNewTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 113
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 114
    .local v3, "request":LSession/Constants;
    const/4 v1, 0x0

    .line 117
    .local v1, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v0, "jMain":Lorg/json/JSONObject;
    const-string v4, "userId"

    iget-object v5, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v5, v5, Lcom/iot/engine/AddNewTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v4, "JSON BODY :"

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

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/schedule/getscheduleswitch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v6, v6, Lcom/iot/engine/AddNewTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    iget-object v4, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v4, v1}, Lcom/iot/engine/AddNewTask;->access$100(Lcom/iot/engine/AddNewTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v2, v1

    .line 126
    .end local v0    # "jMain":Lorg/json/JSONObject;
    .end local v1    # "mResponse":Ljava/lang/String;
    .local v2, "mResponse":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 125
    .end local v2    # "mResponse":Ljava/lang/String;
    .restart local v1    # "mResponse":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v1

    .line 126
    .end local v1    # "mResponse":Ljava/lang/String;
    .restart local v2    # "mResponse":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v0}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v0}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v0}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 137
    :cond_0
    if-nez p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v1, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v1}, Lcom/iot/engine/AddNewTask;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v0}, Lcom/iot/engine/AddNewTask;->setAdapter()V

    .line 141
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 106
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    const-string v3, "Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/AddNewTask;->access$002(Lcom/iot/engine/AddNewTask;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 107
    iget-object v0, p0, Lcom/iot/engine/AddNewTask$ShowSchedulerList;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-static {v0}, Lcom/iot/engine/AddNewTask;->access$000(Lcom/iot/engine/AddNewTask;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 109
    return-void
.end method
