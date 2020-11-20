.class public LAdapter/UserAccountAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/UserAccountAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/UserAccountAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field instance:Lcom/iot/engine/UserAccountActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iot/engine/UserAccountActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "instance"    # Lcom/iot/engine/UserAccountActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/iot/engine/UserAccountActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/UserAccountAdapter;->arrayList:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, LAdapter/UserAccountAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, LAdapter/UserAccountAdapter;->arrayList:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, LAdapter/UserAccountAdapter;->instance:Lcom/iot/engine/UserAccountActivity;

    .line 33
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, LAdapter/UserAccountAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/UserAccountAdapter$MyViewHolder;I)V
    .locals 3
    .param p1, "holder"    # LAdapter/UserAccountAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v1, p0, LAdapter/UserAccountAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "ACCOUNT_NAME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "accName":Ljava/lang/String;
    iget-object v1, p1, LAdapter/UserAccountAdapter$MyViewHolder;->tvAccEmail:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const-string v1, "Add New Account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p1, LAdapter/UserAccountAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :goto_0
    iget-object v1, p1, LAdapter/UserAccountAdapter$MyViewHolder;->linear:Landroid/widget/LinearLayout;

    new-instance v2, LAdapter/UserAccountAdapter$1;

    invoke-direct {v2, p0, p2}, LAdapter/UserAccountAdapter$1;-><init>(LAdapter/UserAccountAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void

    .line 50
    :cond_0
    iget-object v1, p1, LAdapter/UserAccountAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, LAdapter/UserAccountAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/UserAccountAdapter;->onBindViewHolder(LAdapter/UserAccountAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/UserAccountAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/UserAccountAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/UserAccountAdapter$MyViewHolder;-><init>(LAdapter/UserAccountAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, LAdapter/UserAccountAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/UserAccountAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
