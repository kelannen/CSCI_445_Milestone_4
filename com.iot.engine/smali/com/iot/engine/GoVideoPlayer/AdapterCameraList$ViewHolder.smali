.class public Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdapterCameraList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoVideoPlayer/AdapterCameraList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public ccView:Landroid/support/v7/widget/CardView;

.field public imgAddCamera:Landroid/widget/ImageView;

.field public tvCameraName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    const v0, 0x7f0d00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->imgAddCamera:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0d00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->tvCameraName:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0d00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/iot/engine/GoVideoPlayer/AdapterCameraList$ViewHolder;->ccView:Landroid/support/v7/widget/CardView;

    .line 110
    return-void
.end method
