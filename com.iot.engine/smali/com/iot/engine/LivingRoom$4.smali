.class Lcom/iot/engine/LivingRoom$4;
.super Landroid/content/BroadcastReceiver;
.source "LivingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/LivingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/LivingRoom;


# direct methods
.method constructor <init>(Lcom/iot/engine/LivingRoom;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 908
    :try_start_0
    const-string v2, "image_url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$600(Lcom/iot/engine/LivingRoom;)LSession/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, LSession/SessionManager;->getBlastFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    const-string v3, "image_url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iot/engine/LivingRoom;->access$800(Lcom/iot/engine/LivingRoom;Ljava/lang/String;)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    sget-object v2, Lcom/iot/engine/LivingRoom;->thisInstance:Lcom/iot/engine/LivingRoom;

    if-eqz v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$900(Lcom/iot/engine/LivingRoom;)LDatabase/DatabaseHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    iget-object v3, v3, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->getSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 916
    .local v1, "switchDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    iget-object v2, v2, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    invoke-virtual {v2, v1}, LAdapter/AdapterCustomSwitch;->refreshSwitchView(Ljava/util/ArrayList;)V

    .line 917
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 918
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$4;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$1000(Lcom/iot/engine/LivingRoom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    .end local v1    # "switchDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
