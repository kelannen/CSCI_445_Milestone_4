.class public LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FavouriteChannelDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/FavouriteChannelDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MYVIEWHOLDER"
.end annotation


# instance fields
.field cardView:Landroid/widget/LinearLayout;

.field imgAddChannel:Landroid/widget/ImageView;

.field llAddNew:Landroid/widget/LinearLayout;

.field llChannelNumber:Landroid/widget/LinearLayout;

.field tab_View:Landroid/widget/ImageView;

.field final synthetic this$0:LAdapter/FavouriteChannelDataAdapter;

.field tvChannelName:Landroid/widget/TextView;

.field tvChannelNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/FavouriteChannelDataAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/FavouriteChannelDataAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 134
    iput-object p1, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->this$0:LAdapter/FavouriteChannelDataAdapter;

    .line 136
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    const v0, 0x7f0d0147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tvChannelNumber:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0d0146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tvChannelName:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0d0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->imgAddChannel:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f0d00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->tab_View:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0d0145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->llChannelNumber:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f0d0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->llAddNew:Landroid/widget/LinearLayout;

    .line 144
    const v0, 0x7f0d0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/FavouriteChannelDataAdapter$MYVIEWHOLDER;->cardView:Landroid/widget/LinearLayout;

    .line 145
    return-void
.end method
