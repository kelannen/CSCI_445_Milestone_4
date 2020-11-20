.class Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "EditRemoteButtonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v2, "Info"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "Info"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "jObj":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$400(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$600(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LDatabase/DatabaseHandler;

    move-result-object v3

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$300(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "remote_id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$500(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buttonCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, LDatabase/DatabaseHandler;->updateTvRemoteCodeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$700(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 169
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$400(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$600(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LDatabase/DatabaseHandler;

    move-result-object v3

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$300(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "remote_id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$500(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buttonCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, LDatabase/DatabaseHandler;->updateMusicRemoteCodeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$400(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$600(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LDatabase/DatabaseHandler;

    move-result-object v3

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$300(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "remote_id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$2;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$500(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buttonCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, LDatabase/DatabaseHandler;->updateACRemoteCodeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
