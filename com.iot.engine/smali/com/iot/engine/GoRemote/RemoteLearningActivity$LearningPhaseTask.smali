.class Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;
.super Landroid/os/AsyncTask;
.source "RemoteLearningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/RemoteLearningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LearningPhaseTask"
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
.field final synthetic this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoRemote/RemoteLearningActivity;Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoRemote/RemoteLearningActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;-><init>(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 641
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
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
    .line 651
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 653
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 654
    .local v1, "jParams":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$200(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v3, "buttonId"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const-string v5, "column_number"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v3, "towerId"

    iget-object v4, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$300(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v3, "RemoteLearningActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/remote/learnircode"

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

    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$200(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 660
    .end local v1    # "jParams":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 659
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 641
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 666
    if-eqz p1, :cond_0

    .line 667
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 644
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 645
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$102(Lcom/iot/engine/GoRemote/RemoteLearningActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 646
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$100(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 647
    return-void
.end method
