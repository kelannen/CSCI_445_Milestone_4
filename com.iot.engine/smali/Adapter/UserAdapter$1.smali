.class LAdapter/UserAdapter$1;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/UserAdapter;->onBindViewHolder(LAdapter/UserAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/UserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/UserAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/UserAdapter;

    .prologue
    .line 52
    iput-object p1, p0, LAdapter/UserAdapter$1;->this$0:LAdapter/UserAdapter;

    iput p2, p0, LAdapter/UserAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, LAdapter/UserAdapter$1;->this$0:LAdapter/UserAdapter;

    invoke-static {v0}, LAdapter/UserAdapter;->access$100(LAdapter/UserAdapter;)Lcom/iot/engine/MainActivity;

    move-result-object v1

    iget-object v0, p0, LAdapter/UserAdapter$1;->this$0:LAdapter/UserAdapter;

    invoke-static {v0}, LAdapter/UserAdapter;->access$000(LAdapter/UserAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, LAdapter/UserAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/MainActivity;->onClickOfView(Ljava/util/HashMap;)V

    .line 56
    return-void
.end method
