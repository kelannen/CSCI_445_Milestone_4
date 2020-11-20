.class public LAdapter/ProfileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/ProfileAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/ProfileAdapter$MyViewHolder;",
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

.field thisFragment:LFragments/ProfileFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;LFragments/ProfileFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "profileFragment"    # LFragments/ProfileFragment;
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
            "LFragments/ProfileFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, LAdapter/ProfileAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    .line 38
    iput-object p3, p0, LAdapter/ProfileAdapter;->thisFragment:LFragments/ProfileFragment;

    .line 39
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/ProfileAdapter$MyViewHolder;I)V
    .locals 8
    .param p1, "holder"    # LAdapter/ProfileAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v5, 0x19

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 52
    iget-object v3, p0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "Mode_Name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "modeName":Ljava/lang/String;
    iget-object v3, p0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "isSelected"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "isSelectedMode":Ljava/lang/String;
    const-string v3, "Add New Mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvMode:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvMode:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvMode:Landroid/widget/TextView;

    iget-object v4, p0, LAdapter/ProfileAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b001b

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_0
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_1
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->linear:Landroid/widget/LinearLayout;

    new-instance v4, LAdapter/ProfileAdapter$1;

    invoke-direct {v4, p0, p2}, LAdapter/ProfileAdapter$1;-><init>(LAdapter/ProfileAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->linear:Landroid/widget/LinearLayout;

    new-instance v4, LAdapter/ProfileAdapter$2;

    invoke-direct {v4, p0, v1, p2}, LAdapter/ProfileAdapter$2;-><init>(LAdapter/ProfileAdapter;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    return-void

    .line 64
    :cond_0
    iget-object v3, p0, LAdapter/ProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "off_mode"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "ON"

    .line 65
    .local v2, "onoff":Ljava/lang/String;
    :goto_2
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvMode:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    .end local v2    # "onoff":Ljava/lang/String;
    :cond_1
    const-string v2, "OFF"

    goto :goto_2

    .line 75
    :cond_2
    iget-object v3, p1, LAdapter/ProfileAdapter$MyViewHolder;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, LAdapter/ProfileAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/ProfileAdapter;->onBindViewHolder(LAdapter/ProfileAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/ProfileAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008d

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/ProfileAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/ProfileAdapter$MyViewHolder;-><init>(LAdapter/ProfileAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, LAdapter/ProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/ProfileAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
