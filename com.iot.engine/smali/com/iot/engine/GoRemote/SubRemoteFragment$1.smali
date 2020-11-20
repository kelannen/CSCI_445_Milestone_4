.class Lcom/iot/engine/GoRemote/SubRemoteFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SubRemoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/SubRemoteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/SubRemoteFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$1;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$1;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    const-string v1, "ADD"

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$000(Lcom/iot/engine/GoRemote/SubRemoteFragment;Ljava/lang/String;)V

    .line 109
    return-void
.end method
