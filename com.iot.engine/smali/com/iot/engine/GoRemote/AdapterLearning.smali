.class public Lcom/iot/engine/GoRemote/AdapterLearning;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AdapterLearning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field alName:Ljava/util/ArrayList;
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

.field mPosition:I

.field thisInstance:Lcom/iot/engine/GoRemote/RemoteLearningActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 31
    .local p2, "alName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->context:Landroid/content/Context;

    .line 33
    check-cast p1, Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->thisInstance:Lcom/iot/engine/GoRemote/RemoteLearningActivity;

    .line 34
    iput-object p2, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public getArrayListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPositiion()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->mPosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iot/engine/GoRemote/AdapterLearning;->onBindViewHolder(Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "btn_name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "btnName":Ljava/lang/String;
    iget-object v1, p1, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;->tvBtnName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p1, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;->btnLearning:Landroid/widget/Button;

    new-instance v2, Lcom/iot/engine/GoRemote/AdapterLearning$1;

    invoke-direct {v2, p0, p2}, Lcom/iot/engine/GoRemote/AdapterLearning$1;-><init>(Lcom/iot/engine/GoRemote/AdapterLearning;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "btn_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p1, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;->btnLearning:Landroid/widget/Button;

    const-string v2, "Done"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p1, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;->btnLearning:Landroid/widget/Button;

    const-string v2, "Learning"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/iot/engine/GoRemote/AdapterLearning;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006c

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;

    invoke-direct {v1, v0}, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    .local v1, "viewHolder":Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;
    return-object v1
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 87
    .local p1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->alName:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0}, Lcom/iot/engine/GoRemote/AdapterLearning;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "mPos"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/iot/engine/GoRemote/AdapterLearning;->mPosition:I

    .line 70
    return-void
.end method
