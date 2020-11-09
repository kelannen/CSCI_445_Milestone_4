.class Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;
.super Ljava/lang/Object;
.source "RemoteLearningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoRemote/RemoteLearningActivity;->onClickListner(Ljava/util/HashMap;)V
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
    .line 629
    iput-object p1, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$100(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$100(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/iot/engine/GoRemote/RemoteLearningActivity$1;->this$0:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->access$100(Lcom/iot/engine/GoRemote/RemoteLearningActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 636
    :cond_0
    return-void
.end method
