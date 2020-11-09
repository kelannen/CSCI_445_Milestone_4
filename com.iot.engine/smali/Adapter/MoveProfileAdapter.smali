.class public LAdapter/MoveProfileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoveProfileAdapter.java"

# interfaces
.implements LSession/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/MoveProfileAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/MoveProfileAdapter$MyViewHolder;",
        ">;",
        "LSession/ItemTouchHelperAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveAdpater"


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

.field private db:LDatabase/DatabaseHandler;

.field private mDragStartListener:LSession/OnStartDragListener;

.field private mListChangedListener:LSession/OnCustomerListChangedListener;

.field private thisProfile:LFragments/ProfileFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;LSession/OnStartDragListener;LSession/OnCustomerListChangedListener;LFragments/ProfileFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dragLlistener"    # LSession/OnStartDragListener;
    .param p4, "listChangedListener"    # LSession/OnCustomerListChangedListener;
    .param p5, "profileFragment"    # LFragments/ProfileFragment;
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
            "LSession/OnStartDragListener;",
            "LSession/OnCustomerListChangedListener;",
            "LFragments/ProfileFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    iput-object p1, p0, LAdapter/MoveProfileAdapter;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/MoveProfileAdapter;->db:LDatabase/DatabaseHandler;

    .line 47
    iput-object p3, p0, LAdapter/MoveProfileAdapter;->mDragStartListener:LSession/OnStartDragListener;

    .line 48
    iput-object p4, p0, LAdapter/MoveProfileAdapter;->mListChangedListener:LSession/OnCustomerListChangedListener;

    .line 49
    iput-object p5, p0, LAdapter/MoveProfileAdapter;->thisProfile:LFragments/ProfileFragment;

    .line 50
    return-void
.end method

.method static synthetic access$000(LAdapter/MoveProfileAdapter;)LSession/OnStartDragListener;
    .locals 1
    .param p0, "x0"    # LAdapter/MoveProfileAdapter;

    .prologue
    .line 33
    iget-object v0, p0, LAdapter/MoveProfileAdapter;->mDragStartListener:LSession/OnStartDragListener;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/MoveProfileAdapter;)LFragments/ProfileFragment;
    .locals 1
    .param p0, "x0"    # LAdapter/MoveProfileAdapter;

    .prologue
    .line 33
    iget-object v0, p0, LAdapter/MoveProfileAdapter;->thisProfile:LFragments/ProfileFragment;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/MoveProfileAdapter$MyViewHolder;I)V
    .locals 3
    .param p1, "holder"    # LAdapter/MoveProfileAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 62
    iget-object v1, p1, LAdapter/MoveProfileAdapter$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "Mode_Name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p1, LAdapter/MoveProfileAdapter$MyViewHolder;->imgMove:Landroid/widget/ImageView;

    new-instance v1, LAdapter/MoveProfileAdapter$1;

    invoke-direct {v1, p0, p1}, LAdapter/MoveProfileAdapter$1;-><init>(LAdapter/MoveProfileAdapter;LAdapter/MoveProfileAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, LAdapter/MoveProfileAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/MoveProfileAdapter;->onBindViewHolder(LAdapter/MoveProfileAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/MoveProfileAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040076

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/MoveProfileAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/MoveProfileAdapter$MyViewHolder;-><init>(LAdapter/MoveProfileAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, LAdapter/MoveProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/MoveProfileAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onItemDismiss(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 99
    const-string v0, "MoveAdpater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onItemMove(II)V
    .locals 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 84
    const-string v2, "MoveAdpater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemMove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    iget-object v2, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-static {v2, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 88
    iget-object v2, p0, LAdapter/MoveProfileAdapter;->mListChangedListener:LSession/OnCustomerListChangedListener;

    iget-object v3, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, LSession/OnCustomerListChangedListener;->onNoteListChanged(Ljava/util/ArrayList;)V

    .line 89
    invoke-virtual {p0, p1, p2}, LAdapter/MoveProfileAdapter;->notifyItemMoved(II)V

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 91
    iget-object v3, p0, LAdapter/MoveProfileAdapter;->db:LDatabase/DatabaseHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, LAdapter/MoveProfileAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, LDatabase/DatabaseHandler;->updateProfilePosition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
