.class LAdapter/HideListAdapter$1;
.super Ljava/lang/Object;
.source "HideListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/HideListAdapter;->onBindViewHolder(LAdapter/HideListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/HideListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/HideListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/HideListAdapter;

    .prologue
    .line 52
    iput-object p1, p0, LAdapter/HideListAdapter$1;->this$0:LAdapter/HideListAdapter;

    iput p2, p0, LAdapter/HideListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, LAdapter/HideListAdapter$1;->this$0:LAdapter/HideListAdapter;

    invoke-static {v0}, LAdapter/HideListAdapter;->access$100(LAdapter/HideListAdapter;)Lcom/iot/engine/HideList;

    move-result-object v1

    iget-object v0, p0, LAdapter/HideListAdapter$1;->this$0:LAdapter/HideListAdapter;

    invoke-static {v0}, LAdapter/HideListAdapter;->access$000(LAdapter/HideListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, LAdapter/HideListAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/HideList;->onClickListner(Ljava/util/HashMap;)V

    .line 57
    return-void
.end method
