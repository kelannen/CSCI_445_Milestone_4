.class Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;
.super Ljava/lang/Object;
.source "EditRemoteButtonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->onClick(Landroid/view/View;)V
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
    .line 100
    iput-object p1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$100(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$100(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$100(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 107
    :cond_0
    return-void
.end method
