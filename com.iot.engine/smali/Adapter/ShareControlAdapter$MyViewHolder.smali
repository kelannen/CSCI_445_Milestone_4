.class public LAdapter/ShareControlAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShareControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/ShareControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field imgDelete:Landroid/widget/ImageView;

.field imgEditSharedC:Landroid/widget/ImageView;

.field profile_image:Lde/hdodenhof/circleimageview/CircleImageView;

.field final synthetic this$0:LAdapter/ShareControlAdapter;

.field username:Landroid/widget/TextView;

.field usertype:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/ShareControlAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/ShareControlAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 151
    iput-object p1, p0, LAdapter/ShareControlAdapter$MyViewHolder;->this$0:LAdapter/ShareControlAdapter;

    .line 152
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 154
    const v0, 0x7f0d01cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ShareControlAdapter$MyViewHolder;->username:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0d024e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ShareControlAdapter$MyViewHolder;->usertype:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0d024d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, LAdapter/ShareControlAdapter$MyViewHolder;->profile_image:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 157
    const v0, 0x7f0d024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/ShareControlAdapter$MyViewHolder;->imgEditSharedC:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0d0250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/ShareControlAdapter$MyViewHolder;->imgDelete:Landroid/widget/ImageView;

    .line 160
    return-void
.end method
