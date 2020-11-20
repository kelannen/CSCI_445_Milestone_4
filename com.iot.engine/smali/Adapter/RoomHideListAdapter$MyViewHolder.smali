.class public LAdapter/RoomHideListAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RoomHideListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/RoomHideListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mImgItemSwitch:Landroid/widget/ImageView;

.field mTxtUnhide:Landroid/widget/TextView;

.field final synthetic this$0:LAdapter/RoomHideListAdapter;

.field txtRoomName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/RoomHideListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/RoomHideListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 68
    iput-object p1, p0, LAdapter/RoomHideListAdapter$MyViewHolder;->this$0:LAdapter/RoomHideListAdapter;

    .line 69
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 70
    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/RoomHideListAdapter$MyViewHolder;->mImgItemSwitch:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0d0154

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/RoomHideListAdapter$MyViewHolder;->txtRoomName:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0d0155

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/RoomHideListAdapter$MyViewHolder;->mTxtUnhide:Landroid/widget/TextView;

    .line 74
    return-void
.end method
