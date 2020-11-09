.class Lcom/iot/engine/GoRemote/AdapterLearning$1;
.super Ljava/lang/Object;
.source "AdapterLearning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoRemote/AdapterLearning;->onBindViewHolder(Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/AdapterLearning;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/AdapterLearning;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/AdapterLearning;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->this$0:Lcom/iot/engine/GoRemote/AdapterLearning;

    iput p2, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->this$0:Lcom/iot/engine/GoRemote/AdapterLearning;

    iget-object v1, v0, Lcom/iot/engine/GoRemote/AdapterLearning;->thisInstance:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    iget-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->this$0:Lcom/iot/engine/GoRemote/AdapterLearning;

    iget-object v0, v0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/GoRemote/RemoteLearningActivity;->onClickListner(Ljava/util/HashMap;)V

    .line 56
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->this$0:Lcom/iot/engine/GoRemote/AdapterLearning;

    iget v1, p0, Lcom/iot/engine/GoRemote/AdapterLearning$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/iot/engine/GoRemote/AdapterLearning;->setPosition(I)V

    .line 58
    return-void
.end method
