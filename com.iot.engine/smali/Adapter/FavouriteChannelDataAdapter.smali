.class public LAdapter/FavouriteChannelDataAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FavouriteChannelDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;",
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

.field private db:LDatabase/DatabaseHandler;

.field private mOperation:Ljava/lang/String;

.field private mRemote:Ljava/lang/String;

.field myUri:Landroid/net/Uri;

.field private thisInstance:Lcom/iot/engine/GoRemote/SubRemoteFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/iot/engine/GoRemote/SubRemoteFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "opeartion"    # Ljava/lang/String;
    .param p4, "mRemote"    # Ljava/lang/String;
    .param p5, "thisInstance"    # Lcom/iot/engine/GoRemote/SubRemoteFragment;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iot/engine/GoRemote/SubRemoteFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, LAdapter/FavouriteChannelDataAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, LAdapter/FavouriteChannelDataAdapter;->mOperation:Ljava/lang/String;

    .line 46
    iput-object p5, p0, LAdapter/FavouriteChannelDataAdapter;->thisInstance:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    .line 47
    iput-object p4, p0, LAdapter/FavouriteChannelDataAdapter;->mRemote:Ljava/lang/String;

    .line 48
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter;->db:LDatabase/DatabaseHandler;

    .line 49
    return-void
.end method

.method static synthetic access$000(LAdapter/FavouriteChannelDataAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LAdapter/FavouriteChannelDataAdapter;

    .prologue
    .line 32
    iget-object v0, p0, LAdapter/FavouriteChannelDataAdapter;->mRemote:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/FavouriteChannelDataAdapter;)Lcom/iot/engine/GoRemote/SubRemoteFragment;
    .locals 1
    .param p0, "x0"    # LAdapter/FavouriteChannelDataAdapter;

    .prologue
    .line 32
    iget-object v0, p0, LAdapter/FavouriteChannelDataAdapter;->thisInstance:Lcom/iot/engine/GoRemote/SubRemoteFragment;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;I)V
    .locals 7
    .param p1, "holder"    # LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;
    .param p2, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 61
    iget-object v3, p0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "channelnumber"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "channelNumber":Ljava/lang/String;
    iget-object v3, p0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "channelname"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "channelName":Ljava/lang/String;
    iget-object v3, p0, LAdapter/FavouriteChannelDataAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "channelimage"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "channelImagePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, LAdapter/FavouriteChannelDataAdapter;->myUri:Landroid/net/Uri;

    .line 70
    :cond_0
    iget-object v3, p0, LAdapter/FavouriteChannelDataAdapter;->mOperation:Ljava/lang/String;

    const-string v4, "EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tab_View:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_0
    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->llAddNew:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->cardView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tab_View:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_1
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->llAddNew:Landroid/widget/LinearLayout;

    new-instance v4, LAdapter/FavouriteChannelDataAdapter$1;

    invoke-direct {v4, p0}, LAdapter/FavouriteChannelDataAdapter$1;-><init>(LAdapter/FavouriteChannelDataAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tab_View:Landroid/widget/ImageView;

    new-instance v4, LAdapter/FavouriteChannelDataAdapter$2;

    invoke-direct {v4, p0, p2}, LAdapter/FavouriteChannelDataAdapter$2;-><init>(LAdapter/FavouriteChannelDataAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->cardView:Landroid/widget/LinearLayout;

    new-instance v4, LAdapter/FavouriteChannelDataAdapter$3;

    invoke-direct {v4, p0, p2}, LAdapter/FavouriteChannelDataAdapter$3;-><init>(LAdapter/FavouriteChannelDataAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void

    .line 73
    :cond_1
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tab_View:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tvChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->llChannelNumber:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->llAddNew:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v3, p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->cardView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;

    invoke-virtual {p0, p1, p2}, LAdapter/FavouriteChannelDataAdapter;->onBindViewHolder(LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;

    invoke-direct {v1, p0, v0}, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;-><init>(LAdapter/FavouriteChannelDataAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, LAdapter/FavouriteChannelDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;

    move-result-object v0

    return-object v0
.end method
