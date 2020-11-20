.class public LAdapter/UserAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field imgAdd:Landroid/widget/ImageView;

.field final synthetic this$0:LAdapter/UserAdapter;

.field tvAccEmail:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/UserAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/UserAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 79
    iput-object p1, p0, LAdapter/UserAdapter$MyViewHolder;->this$0:LAdapter/UserAdapter;

    .line 80
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    const v0, 0x7f0d0230

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/UserAdapter$MyViewHolder;->tvAccEmail:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0d0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/UserAdapter$MyViewHolder;->imgAdd:Landroid/widget/ImageView;

    .line 84
    return-void
.end method
