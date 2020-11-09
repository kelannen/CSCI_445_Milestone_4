.class public LSession/SimpleItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "SimpleItemTouchHelperCallback.java"


# instance fields
.field private final mAdapter:LSession/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(LSession/ItemTouchHelperAdapter;)V
    .locals 0
    .param p1, "adapter"    # LSession/ItemTouchHelperAdapter;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 15
    iput-object p1, p0, LSession/SimpleItemTouchHelperCallback;->mAdapter:LSession/ItemTouchHelperAdapter;

    .line 16
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    move-object v0, p2

    .line 61
    check-cast v0, LSession/ItemTouchHelperViewHolder;

    .line 62
    .local v0, "itemViewHolder":LSession/ItemTouchHelperViewHolder;
    invoke-interface {v0}, LSession/ItemTouchHelperViewHolder;->onItemClear()V

    .line 63
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 30
    const/4 v0, 0x3

    .line 31
    .local v0, "dragFlags":I
    const/16 v1, 0x30

    .line 32
    .local v1, "swipeFlags":I
    const/4 v2, 0x3

    const/16 v3, 0x30

    invoke-static {v2, v3}, LSession/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v2

    return v2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 37
    iget-object v0, p0, LSession/SimpleItemTouchHelperCallback;->mAdapter:LSession/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, LSession/ItemTouchHelperAdapter;->onItemMove(II)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 50
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, LSession/ItemTouchHelperViewHolder;

    .line 52
    .local v0, "itemViewHolder":LSession/ItemTouchHelperViewHolder;
    invoke-interface {v0}, LSession/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 55
    .end local v0    # "itemViewHolder":LSession/ItemTouchHelperViewHolder;
    :cond_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 43
    iget-object v0, p0, LSession/SimpleItemTouchHelperCallback;->mAdapter:LSession/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, LSession/ItemTouchHelperAdapter;->onItemDismiss(I)V

    .line 44
    return-void
.end method
