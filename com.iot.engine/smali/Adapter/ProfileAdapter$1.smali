.class LAdapter/ProfileAdapter$1;
.super Ljava/lang/Object;
.source "ProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/ProfileAdapter;->onBindViewHolder(LAdapter/ProfileAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/ProfileAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/ProfileAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/ProfileAdapter;

    .prologue
    .line 79
    iput-object p1, p0, LAdapter/ProfileAdapter$1;->this$0:LAdapter/ProfileAdapter;

    iput p2, p0, LAdapter/ProfileAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, LAdapter/ProfileAdapter$1;->this$0:LAdapter/ProfileAdapter;

    iget-object v1, v0, LAdapter/ProfileAdapter;->thisFragment:LFragments/ProfileFragment;

    iget-object v0, p0, LAdapter/ProfileAdapter$1;->this$0:LAdapter/ProfileAdapter;

    iget-object v0, v0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/ProfileAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, LFragments/ProfileFragment;->onClickListner(Ljava/util/HashMap;)V

    .line 83
    return-void
.end method
