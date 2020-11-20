.class LAdapter/ProfileAdapter$2;
.super Ljava/lang/Object;
.source "ProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$modeName:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/ProfileAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/ProfileAdapter;

    .prologue
    .line 86
    iput-object p1, p0, LAdapter/ProfileAdapter$2;->this$0:LAdapter/ProfileAdapter;

    iput-object p2, p0, LAdapter/ProfileAdapter$2;->val$modeName:Ljava/lang/String;

    iput p3, p0, LAdapter/ProfileAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, LAdapter/ProfileAdapter$2;->val$modeName:Ljava/lang/String;

    const-string v1, "Add New Mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, LAdapter/ProfileAdapter$2;->this$0:LAdapter/ProfileAdapter;

    iget-object v1, v0, LAdapter/ProfileAdapter;->thisFragment:LFragments/ProfileFragment;

    iget-object v0, p0, LAdapter/ProfileAdapter$2;->this$0:LAdapter/ProfileAdapter;

    iget-object v0, v0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/ProfileAdapter$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, LFragments/ProfileFragment;->OnLongClickListener(Ljava/util/HashMap;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
