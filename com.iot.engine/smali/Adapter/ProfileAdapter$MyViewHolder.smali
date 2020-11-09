.class public LAdapter/ProfileAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/ProfileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field imgAdd:Landroid/widget/ImageView;

.field linear:Landroid/widget/LinearLayout;

.field final synthetic this$0:LAdapter/ProfileAdapter;

.field tvActive:Landroid/widget/TextView;

.field tvMode:Landroid/widget/TextView;

.field tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/ProfileAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/ProfileAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 109
    iput-object p1, p0, LAdapter/ProfileAdapter$MyViewHolder;->this$0:LAdapter/ProfileAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    const v0, 0x7f0d020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileAdapter$MyViewHolder;->tvMode:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0d020c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileAdapter$MyViewHolder;->tvActive:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0d020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileAdapter$MyViewHolder;->tvStatus:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0d00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/ProfileAdapter$MyViewHolder;->linear:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0d0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/ProfileAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    .line 116
    return-void
.end method
