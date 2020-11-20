.class public LAdapter/HideListAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HideListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/HideListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mImgItemSwitch:Landroid/widget/ImageView;

.field mTxtItemSwitch:Landroid/widget/TextView;

.field mTxtUnhide:Landroid/widget/TextView;

.field final synthetic this$0:LAdapter/HideListAdapter;

.field txtItemRoom:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/HideListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/HideListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, LAdapter/HideListAdapter$MyViewHolder;->this$0:LAdapter/HideListAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/HideListAdapter$MyViewHolder;->mImgItemSwitch:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0d018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/HideListAdapter$MyViewHolder;->mTxtItemSwitch:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0d0155

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/HideListAdapter$MyViewHolder;->mTxtUnhide:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0d018f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/HideListAdapter$MyViewHolder;->txtItemRoom:Landroid/widget/TextView;

    .line 78
    return-void
.end method
