.class public LAdapter/MoveProfileAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MoveProfileAdapter.java"

# interfaces
.implements LSession/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/MoveProfileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field imgMove:Landroid/widget/ImageView;

.field final synthetic this$0:LAdapter/MoveProfileAdapter;

.field tvSwitchName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/MoveProfileAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/MoveProfileAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 106
    iput-object p1, p0, LAdapter/MoveProfileAdapter$MyViewHolder;->this$0:LAdapter/MoveProfileAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    const v0, 0x7f0d01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/MoveProfileAdapter$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0d01b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/MoveProfileAdapter$MyViewHolder;->imgMove:Landroid/widget/ImageView;

    .line 111
    return-void
.end method


# virtual methods
.method public onItemClear()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "MoveAdpater"

    const-string v1, "onItemClear: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, LAdapter/MoveProfileAdapter$MyViewHolder;->this$0:LAdapter/MoveProfileAdapter;

    invoke-static {v0}, LAdapter/MoveProfileAdapter;->access$100(LAdapter/MoveProfileAdapter;)LFragments/ProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, LFragments/ProfileFragment;->setAdapter()V

    .line 123
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "MoveAdpater"

    const-string v1, "onItemSelected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
