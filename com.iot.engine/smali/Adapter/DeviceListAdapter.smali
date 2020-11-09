.class public LAdapter/DeviceListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/DeviceListAdapter$AsyncSocketWrite;,
        LAdapter/DeviceListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/DeviceListAdapter$MyViewHolder;",
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

.field sessionManager:LSession/SessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
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
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, LAdapter/DeviceListAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/DeviceListAdapter;->sessionManager:LSession/SessionManager;

    .line 41
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/DeviceListAdapter$MyViewHolder;I)V
    .locals 3
    .param p1, "holder"    # LAdapter/DeviceListAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 53
    iget-object v1, p1, LAdapter/DeviceListAdapter$MyViewHolder;->tvIP:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "IP"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, LAdapter/DeviceListAdapter$MyViewHolder;->tvMac:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "MAC"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, LAdapter/DeviceListAdapter$MyViewHolder;->cvRow:Landroid/support/v7/widget/CardView;

    new-instance v1, LAdapter/DeviceListAdapter$1;

    invoke-direct {v1, p0, p2}, LAdapter/DeviceListAdapter$1;-><init>(LAdapter/DeviceListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p1, LAdapter/DeviceListAdapter$MyViewHolder;->btnStatus:Landroid/widget/Button;

    new-instance v1, LAdapter/DeviceListAdapter$2;

    invoke-direct {v1, p0, p2}, LAdapter/DeviceListAdapter$2;-><init>(LAdapter/DeviceListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "FLAG"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, LAdapter/DeviceListAdapter$MyViewHolder;->btnStatus:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, LAdapter/DeviceListAdapter$MyViewHolder;->btnStatus:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, LAdapter/DeviceListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/DeviceListAdapter;->onBindViewHolder(LAdapter/DeviceListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/DeviceListAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04004a

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/DeviceListAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/DeviceListAdapter$MyViewHolder;-><init>(LAdapter/DeviceListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, LAdapter/DeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/DeviceListAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
