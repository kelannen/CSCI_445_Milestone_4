.class LAdapter/UserAccountAdapter$1;
.super Ljava/lang/Object;
.source "UserAccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/UserAccountAdapter;->onBindViewHolder(LAdapter/UserAccountAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/UserAccountAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/UserAccountAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/UserAccountAdapter;

    .prologue
    .line 53
    iput-object p1, p0, LAdapter/UserAccountAdapter$1;->this$0:LAdapter/UserAccountAdapter;

    iput p2, p0, LAdapter/UserAccountAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, LAdapter/UserAccountAdapter$1;->this$0:LAdapter/UserAccountAdapter;

    iget-object v1, v0, LAdapter/UserAccountAdapter;->instance:Lcom/iot/engine/UserAccountActivity;

    iget-object v0, p0, LAdapter/UserAccountAdapter$1;->this$0:LAdapter/UserAccountAdapter;

    iget-object v0, v0, LAdapter/UserAccountAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/UserAccountAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/UserAccountActivity;->onClickListner(Ljava/util/HashMap;)V

    .line 57
    return-void
.end method
