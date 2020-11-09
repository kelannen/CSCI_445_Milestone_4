.class Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RemoteLearningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/RemoteLearningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 689
    :try_start_0
    const-string v6, "Info"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 690
    const-string v6, "Info"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "mData":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "jObj":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$400(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TV"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 693
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$600(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)LDatabase/DatabaseHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v7}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$500(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "buttonId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "buttonCode"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, LDatabase/DatabaseHandler;->updateTvRemoteCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$700(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Lcom/iot/engine/GoRemote/AdapterLearning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iot/engine/GoRemote/AdapterLearning;->getArrayListData()Ljava/util/ArrayList;

    move-result-object v3

    .line 701
    .local v3, "mMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$700(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Lcom/iot/engine/GoRemote/AdapterLearning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iot/engine/GoRemote/AdapterLearning;->getPositiion()I

    move-result v5

    .line 702
    .local v5, "position":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 703
    .local v4, "mTempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "btn_code"

    const-string v7, "buttonCode"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$700(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Lcom/iot/engine/GoRemote/AdapterLearning;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/iot/engine/GoRemote/AdapterLearning;->refreshData(Ljava/util/ArrayList;)V

    .line 709
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "mData":Ljava/lang/String;
    .end local v3    # "mMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "mTempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "position":I
    :cond_1
    :goto_1
    return-void

    .line 694
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "mData":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$400(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 695
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$600(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)LDatabase/DatabaseHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v7}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$500(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "buttonId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "buttonCode"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, LDatabase/DatabaseHandler;->updateMusicRemoteCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "mData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 696
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "mData":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$400(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 697
    iget-object v6, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$600(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)LDatabase/DatabaseHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$2;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v7}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$500(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "buttonId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "buttonCode"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, LDatabase/DatabaseHandler;->updateAcRemoteCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
