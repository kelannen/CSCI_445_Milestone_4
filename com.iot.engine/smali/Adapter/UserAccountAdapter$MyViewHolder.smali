.class public LAdapter/UserAccountAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/UserAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field imgAdd:Landroid/widget/ImageView;

.field linear:Landroid/widget/LinearLayout;

.field final synthetic this$0:LAdapter/UserAccountAdapter;

.field tvAccEmail:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/UserAccountAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/UserAccountAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 73
    iput-object p1, p0, LAdapter/UserAccountAdapter$MyViewHolder;->this$0:LAdapter/UserAccountAdapter;

    .line 74
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 75
    const v0, 0x7f0d0230

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/UserAccountAdapter$MyViewHolder;->tvAccEmail:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0d0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/UserAccountAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0d00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/UserAccountAdapter$MyViewHolder;->linear:Landroid/widget/LinearLayout;

    .line 78
    return-void
.end method
