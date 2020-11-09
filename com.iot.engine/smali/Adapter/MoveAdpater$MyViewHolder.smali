.class public LAdapter/MoveAdpater$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MoveAdpater.java"

# interfaces
.implements LSession/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/MoveAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field imgMove:Landroid/widget/ImageView;

.field imgSwitchImage:Landroid/widget/ImageView;

.field final synthetic this$0:LAdapter/MoveAdpater;

.field tvSwitchName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/MoveAdpater;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/MoveAdpater;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, LAdapter/MoveAdpater$MyViewHolder;->this$0:LAdapter/MoveAdpater;

    .line 111
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    const v0, 0x7f0d01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/MoveAdpater$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0d01b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/MoveAdpater$MyViewHolder;->imgMove:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0d01a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/MoveAdpater$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    .line 116
    return-void
.end method


# virtual methods
.method public onItemClear()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "MoveAdpater"

    const-string v1, "onItemClear: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, LAdapter/MoveAdpater$MyViewHolder;->this$0:LAdapter/MoveAdpater;

    invoke-static {v0}, LAdapter/MoveAdpater;->access$100(LAdapter/MoveAdpater;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/iot/engine/LivingRoom;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, LAdapter/MoveAdpater$MyViewHolder;->this$0:LAdapter/MoveAdpater;

    invoke-static {v0}, LAdapter/MoveAdpater;->access$100(LAdapter/MoveAdpater;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iot/engine/LivingRoom;

    invoke-virtual {v0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 133
    :cond_0
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "MoveAdpater"

    const-string v1, "onItemSelected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
