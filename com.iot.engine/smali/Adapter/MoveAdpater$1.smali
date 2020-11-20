.class LAdapter/MoveAdpater$1;
.super Ljava/lang/Object;
.source "MoveAdpater.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/MoveAdpater;->onBindViewHolder(LAdapter/MoveAdpater$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/MoveAdpater;

.field final synthetic val$holder:LAdapter/MoveAdpater$MyViewHolder;


# direct methods
.method constructor <init>(LAdapter/MoveAdpater;LAdapter/MoveAdpater$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/MoveAdpater;

    .prologue
    .line 68
    iput-object p1, p0, LAdapter/MoveAdpater$1;->this$0:LAdapter/MoveAdpater;

    iput-object p2, p0, LAdapter/MoveAdpater$1;->val$holder:LAdapter/MoveAdpater$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, LAdapter/MoveAdpater$1;->this$0:LAdapter/MoveAdpater;

    invoke-static {v0}, LAdapter/MoveAdpater;->access$000(LAdapter/MoveAdpater;)LSession/OnStartDragListener;

    move-result-object v0

    iget-object v1, p0, LAdapter/MoveAdpater$1;->val$holder:LAdapter/MoveAdpater$MyViewHolder;

    invoke-interface {v0, v1}, LSession/OnStartDragListener;->onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
