.class public LAdapter/MoveAdpater;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoveAdpater.java"

# interfaces
.implements LSession/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/MoveAdpater$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/MoveAdpater$MyViewHolder;",
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

.field private switchONFF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;LSession/OnStartDragListener;LSession/OnCustomerListChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "dragLlistener"    # LSession/OnStartDragListener;
    .param p5, "listChangedListener"    # LSession/OnCustomerListChangedListener;
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "LSession/OnStartDragListener;",
            "LSession/OnCustomerListChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, LAdapter/MoveAdpater;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    .line 48
    iput-object p3, p0, LAdapter/MoveAdpater;->switchONFF:Ljava/util/ArrayList;

    .line 49
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/MoveAdpater;->db:LDatabase/DatabaseHandler;

    .line 50
    iput-object p4, p0, LAdapter/MoveAdpater;->mDragStartListener:LSession/OnStartDragListener;

    .line 51
    iput-object p5, p0, LAdapter/MoveAdpater;->mListChangedListener:LSession/OnCustomerListChangedListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(LAdapter/MoveAdpater;)LSession/OnStartDragListener;
    .locals 1
    .param p0, "x0"    # LAdapter/MoveAdpater;

    .prologue
    .line 35
    iget-object v0, p0, LAdapter/MoveAdpater;->mDragStartListener:LSession/OnStartDragListener;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/MoveAdpater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # LAdapter/MoveAdpater;

    .prologue
    .line 35
    iget-object v0, p0, LAdapter/MoveAdpater;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/MoveAdpater$MyViewHolder;I)V
    .locals 4
    .param p1, "holder"    # LAdapter/MoveAdpater$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 63
    iget-object v1, p1, LAdapter/MoveAdpater$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "SwitchName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, LAdapter/MoveAdpater$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v2, p0, LAdapter/MoveAdpater;->switchONFF:Ljava/util/ArrayList;

    iget-object v0, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "switch_image_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v0, p1, LAdapter/MoveAdpater$MyViewHolder;->imgMove:Landroid/widget/ImageView;

    new-instance v1, LAdapter/MoveAdpater$1;

    invoke-direct {v1, p0, p1}, LAdapter/MoveAdpater$1;-><init>(LAdapter/MoveAdpater;LAdapter/MoveAdpater$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, LAdapter/MoveAdpater$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/MoveAdpater;->onBindViewHolder(LAdapter/MoveAdpater$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/MoveAdpater$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040075

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/MoveAdpater$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/MoveAdpater$MyViewHolder;-><init>(LAdapter/MoveAdpater;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, LAdapter/MoveAdpater;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/MoveAdpater$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onItemDismiss(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 103
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

    .line 104
    return-void
.end method

.method public onItemMove(II)V
    .locals 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 88
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

    .line 91
    :try_start_0
    iget-object v2, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-static {v2, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 92
    iget-object v2, p0, LAdapter/MoveAdpater;->mListChangedListener:LSession/OnCustomerListChangedListener;

    iget-object v3, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, LSession/OnCustomerListChangedListener;->onNoteListChanged(Ljava/util/ArrayList;)V

    .line 93
    invoke-virtual {p0, p1, p2}, LAdapter/MoveAdpater;->notifyItemMoved(II)V

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v3, p0, LAdapter/MoveAdpater;->db:LDatabase/DatabaseHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, LAdapter/MoveAdpater;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "SwitchID"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, LDatabase/DatabaseHandler;->updateSwitchPosition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
