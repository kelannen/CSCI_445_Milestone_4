.class Lcom/iot/engine/GoRemote/SubRemoteFragment$2;
.super Ljava/lang/Object;
.source "SubRemoteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 809
    iput-object p1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 812
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    invoke-virtual {v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    invoke-static {v2}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$200(Lcom/iot/engine/GoRemote/SubRemoteFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 813
    iget-object v1, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$200(Lcom/iot/engine/GoRemote/SubRemoteFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$300(Lcom/iot/engine/GoRemote/SubRemoteFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "remote_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$400(Lcom/iot/engine/GoRemote/SubRemoteFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$202(Lcom/iot/engine/GoRemote/SubRemoteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/iot/engine/GoRemote/SubRemoteFragment$2;->this$0:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/SubRemoteFragment;->access$502(Lcom/iot/engine/GoRemote/SubRemoteFragment;Landroid/os/Handler;)Landroid/os/Handler;

    .line 817
    return-void
.end method
