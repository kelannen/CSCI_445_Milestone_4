.class public LAdapter/RoomHideListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RoomHideListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/RoomHideListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/RoomHideListAdapter$MyViewHolder;",
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

.field myImageList:[I


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
    .line 31
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LAdapter/RoomHideListAdapter;->myImageList:[I

    .line 32
    iput-object p1, p0, LAdapter/RoomHideListAdapter;->context:Lcom/iot/engine/HideList;

    .line 33
    iput-object p2, p0, LAdapter/RoomHideListAdapter;->arrayList:Ljava/util/ArrayList;

    .line 34
    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x7f020065
        0x7f020110
        0x7f02010d
        0x7f020063
        0x7f020061
        0x7f02010f
        0x7f020199
        0x7f020194
        0x7f02010c
        0x7f020167
    .end array-data
.end method

.method static synthetic access$000(LAdapter/RoomHideListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # LAdapter/RoomHideListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, LAdapter/RoomHideListAdapter;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/RoomHideListAdapter;)Lcom/iot/engine/HideList;
    .locals 1
    .param p0, "x0"    # LAdapter/RoomHideListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, LAdapter/RoomHideListAdapter;->context:Lcom/iot/engine/HideList;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LAdapter/RoomHideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/RoomHideListAdapter$MyViewHolder;I)V
    .locals 4
    .param p1, "holder"    # LAdapter/RoomHideListAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v2, p1, LAdapter/RoomHideListAdapter$MyViewHolder;->txtRoomName:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/RoomHideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, LAdapter/RoomHideListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "RoomImageType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "mImage":Ljava/lang/String;
    iget-object v1, p1, LAdapter/RoomHideListAdapter$MyViewHolder;->mImgItemSwitch:Landroid/widget/ImageView;

    iget-object v2, p0, LAdapter/RoomHideListAdapter;->myImageList:[I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v1, p1, LAdapter/RoomHideListAdapter$MyViewHolder;->mTxtUnhide:Landroid/widget/TextView;

    new-instance v2, LAdapter/RoomHideListAdapter$1;

    invoke-direct {v2, p0, p2}, LAdapter/RoomHideListAdapter$1;-><init>(LAdapter/RoomHideListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, LAdapter/RoomHideListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/RoomHideListAdapter;->onBindViewHolder(LAdapter/RoomHideListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/RoomHideListAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005c

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/RoomHideListAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/RoomHideListAdapter$MyViewHolder;-><init>(LAdapter/RoomHideListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, LAdapter/RoomHideListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/RoomHideListAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
