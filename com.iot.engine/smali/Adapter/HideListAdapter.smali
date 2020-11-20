.class public LAdapter/HideListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HideListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/HideListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/HideListAdapter$MyViewHolder;",
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

.field private context:Lcom/iot/engine/HideList;

.field mSwitchON:[I


# direct methods
.method public constructor <init>(Lcom/iot/engine/HideList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Lcom/iot/engine/HideList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iot/engine/HideList;",
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
    .line 34
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LAdapter/HideListAdapter;->mSwitchON:[I

    .line 35
    iput-object p1, p0, LAdapter/HideListAdapter;->context:Lcom/iot/engine/HideList;

    .line 36
    iput-object p2, p0, LAdapter/HideListAdapter;->arrayList:Ljava/util/ArrayList;

    .line 37
    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x7f020156
        0x7f02014b
        0x7f02014d
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f02015b
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
        0x7f02014c
        0x7f020155
        0x7f02014e
        0x7f0200c1
        0x7f020113
    .end array-data
.end method

.method static synthetic access$000(LAdapter/HideListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # LAdapter/HideListAdapter;

    .prologue
    .line 22
    iget-object v0, p0, LAdapter/HideListAdapter;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/HideListAdapter;)Lcom/iot/engine/HideList;
    .locals 1
    .param p0, "x0"    # LAdapter/HideListAdapter;

    .prologue
    .line 22
    iget-object v0, p0, LAdapter/HideListAdapter;->context:Lcom/iot/engine/HideList;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LAdapter/HideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/HideListAdapter$MyViewHolder;I)V
    .locals 4
    .param p1, "holder"    # LAdapter/HideListAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 47
    iget-object v2, p1, LAdapter/HideListAdapter$MyViewHolder;->mTxtItemSwitch:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/HideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "SwitchName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p1, LAdapter/HideListAdapter$MyViewHolder;->txtItemRoom:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/HideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, LAdapter/HideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "switch_image_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "mImage":Ljava/lang/String;
    iget-object v1, p1, LAdapter/HideListAdapter$MyViewHolder;->mImgItemSwitch:Landroid/widget/ImageView;

    iget-object v2, p0, LAdapter/HideListAdapter;->mSwitchON:[I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v1, p1, LAdapter/HideListAdapter$MyViewHolder;->mTxtUnhide:Landroid/widget/TextView;

    new-instance v2, LAdapter/HideListAdapter$1;

    invoke-direct {v2, p0, p2}, LAdapter/HideListAdapter$1;-><init>(LAdapter/HideListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, LAdapter/HideListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/HideListAdapter;->onBindViewHolder(LAdapter/HideListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/HideListAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040068

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/HideListAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/HideListAdapter$MyViewHolder;-><init>(LAdapter/HideListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, LAdapter/HideListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/HideListAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
