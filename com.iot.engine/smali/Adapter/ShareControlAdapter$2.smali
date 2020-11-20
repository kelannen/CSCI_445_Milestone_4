.class LAdapter/ShareControlAdapter$2;
.super Ljava/lang/Object;
.source "ShareControlAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/ShareControlAdapter;->onBindViewHolder(LAdapter/ShareControlAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/ShareControlAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/ShareControlAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/ShareControlAdapter;

    .prologue
    .line 99
    iput-object p1, p0, LAdapter/ShareControlAdapter$2;->this$0:LAdapter/ShareControlAdapter;

    iput p2, p0, LAdapter/ShareControlAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, LAdapter/ShareControlAdapter$2;->this$0:LAdapter/ShareControlAdapter;

    iget-object v0, v0, LAdapter/ShareControlAdapter;->session:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, LAdapter/ShareControlAdapter$2;->this$0:LAdapter/ShareControlAdapter;

    iget-object v0, v0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/ShareControlAdapter$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, LAdapter/ShareControlAdapter$2;->this$0:LAdapter/ShareControlAdapter;

    iget-object v0, v0, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    const-string v1, "Oops you don\'t have a permission for this"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, LAdapter/ShareControlAdapter$2;->this$0:LAdapter/ShareControlAdapter;

    iget-object v0, p0, LAdapter/ShareControlAdapter$2;->this$0:LAdapter/ShareControlAdapter;

    iget-object v0, v0, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/ShareControlAdapter$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v2, p0, LAdapter/ShareControlAdapter$2;->val$position:I

    invoke-static {v1, v0, v2}, LAdapter/ShareControlAdapter;->access$000(LAdapter/ShareControlAdapter;Ljava/util/HashMap;I)V

    goto :goto_0
.end method
