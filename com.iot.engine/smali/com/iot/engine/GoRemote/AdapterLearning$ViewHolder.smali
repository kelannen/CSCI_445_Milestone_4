.class public Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdapterLearning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/AdapterLearning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public btnLearning:Landroid/widget/Button;

.field public tvBtnName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    const v0, 0x7f0d019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;->btnLearning:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0d019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/GoRemote/AdapterLearning$ViewHolder;->tvBtnName:Landroid/widget/TextView;

    .line 100
    return-void
.end method
