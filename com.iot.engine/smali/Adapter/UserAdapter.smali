.class public LAdapter/UserAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/UserAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/UserAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
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

.field private context:Landroid/content/Context;

.field private mainActivity:Lcom/iot/engine/MainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iot/engine/MainActivity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mainActivity"    # Lcom/iot/engine/MainActivity;
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
            "Lcom/iot/engine/MainActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, LAdapter/UserAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, LAdapter/UserAdapter;->arrayList:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, LAdapter/UserAdapter;->mainActivity:Lcom/iot/engine/MainActivity;

    .line 33
    return-void
.end method

.method static synthetic access$000(LAdapter/UserAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # LAdapter/UserAdapter;

    .prologue
    .line 23
    iget-object v0, p0, LAdapter/UserAdapter;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/UserAdapter;)Lcom/iot/engine/MainActivity;
    .locals 1
    .param p0, "x0"    # LAdapter/UserAdapter;

    .prologue
    .line 23
    iget-object v0, p0, LAdapter/UserAdapter;->mainActivity:Lcom/iot/engine/MainActivity;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, LAdapter/UserAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/UserAdapter$MyViewHolder;I)V
    .locals 3
    .param p1, "holder"    # LAdapter/UserAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 43
    iget-object v1, p0, LAdapter/UserAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "accName":Ljava/lang/String;
    iget-object v1, p1, LAdapter/UserAdapter$MyViewHolder;->tvAccEmail:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const-string v1, "Add new home account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p1, LAdapter/UserAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    iget-object v1, p1, LAdapter/UserAdapter$MyViewHolder;->tvAccEmail:Landroid/widget/TextView;

    new-instance v2, LAdapter/UserAdapter$1;

    invoke-direct {v2, p0, p2}, LAdapter/UserAdapter$1;-><init>(LAdapter/UserAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p1, LAdapter/UserAdapter$MyViewHolder;->tvAccEmail:Landroid/widget/TextView;

    new-instance v2, LAdapter/UserAdapter$2;

    invoke-direct {v2, p0, p2}, LAdapter/UserAdapter$2;-><init>(LAdapter/UserAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    return-void

    .line 49
    :cond_0
    iget-object v1, p1, LAdapter/UserAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, LAdapter/UserAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/UserAdapter;->onBindViewHolder(LAdapter/UserAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/UserAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/UserAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/UserAdapter$MyViewHolder;-><init>(LAdapter/UserAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, LAdapter/UserAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/UserAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
