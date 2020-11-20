.class public Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AdapterCameraList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;",
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

.field thisInstance:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;


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
    .line 34
    .local p2, "alName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->context:Landroid/content/Context;

    .line 36
    check-cast p1, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->thisInstance:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .line 37
    iput-object p2, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->alName:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->alName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->onBindViewHolder(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->alName:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "camera_name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "cameraName":Ljava/lang/String;
    const-string v1, "@DD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->imgAddCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v1, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->tvCameraName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    iget-object v1, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->ccView:Landroid/support/v7/widget/CardView;

    new-instance v2, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$1;-><init>(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->ccView:Landroid/support/v7/widget/CardView;

    new-instance v2, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$2;-><init>(Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    return-void

    .line 61
    :cond_0
    iget-object v1, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->imgAddCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v1, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->tvCameraName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v2, p1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->tvCameraName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->alName:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "camera_name"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002d

    const/4 v4, 0x0

    .line 43
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;

    invoke-direct {v1, v0}, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    .local v1, "viewHolder":Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;
    return-object v1
.end method
