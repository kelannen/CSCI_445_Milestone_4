.class LAdapter/MoveProfileAdapter$1;
.super Ljava/lang/Object;
.source "MoveProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/MoveProfileAdapter;->onBindViewHolder(LAdapter/MoveProfileAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/MoveProfileAdapter;

.field final synthetic val$holder:LAdapter/MoveProfileAdapter$MyViewHolder;


# direct methods
.method constructor <init>(LAdapter/MoveProfileAdapter;LAdapter/MoveProfileAdapter$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/MoveProfileAdapter;

    .prologue
    .line 64
    iput-object p1, p0, LAdapter/MoveProfileAdapter$1;->this$0:LAdapter/MoveProfileAdapter;

    iput-object p2, p0, LAdapter/MoveProfileAdapter$1;->val$holder:LAdapter/MoveProfileAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, LAdapter/MoveProfileAdapter$1;->this$0:LAdapter/MoveProfileAdapter;

    invoke-static {v0}, LAdapter/MoveProfileAdapter;->access$000(LAdapter/MoveProfileAdapter;)LSession/OnStartDragListener;

    move-result-object v0

    iget-object v1, p0, LAdapter/MoveProfileAdapter$1;->val$holder:LAdapter/MoveProfileAdapter$MyViewHolder;

    invoke-interface {v0, v1}, LSession/OnStartDragListener;->onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
