.class public LAdapter/TryDemoSwitchAdpater$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/TryDemoSwitchAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

.field imgLockImage:Landroid/widget/ImageView;

.field imgSwitchImage:Landroid/widget/ImageView;

.field layoutDimmer:Landroid/widget/LinearLayout;

.field llCurtain:Landroid/widget/LinearLayout;

.field llLinear:Landroid/widget/LinearLayout;

.field llMainScreen:Landroid/widget/LinearLayout;

.field lock:Landroid/widget/ImageView;

.field seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field final synthetic this$0:LAdapter/TryDemoSwitchAdpater;

.field tvSwitchName:Landroid/widget/TextView;

.field txtRangeValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/TryDemoSwitchAdpater;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # LAdapter/TryDemoSwitchAdpater;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0d018d

    .line 251
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->this$0:LAdapter/TryDemoSwitchAdpater;

    .line 252
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 253
    const v0, 0x7f0d01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    .line 254
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llLinear:Landroid/widget/LinearLayout;

    .line 255
    const v0, 0x7f0d025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f0d01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->txtRangeValue:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0d01a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    .line 258
    const v0, 0x7f0d025c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f0d024c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    .line 260
    const v0, 0x7f0d0114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 261
    const v0, 0x7f0d025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->lock:Landroid/widget/ImageView;

    .line 262
    const v0, 0x7f0d0112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    .line 263
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llLinear:Landroid/widget/LinearLayout;

    .line 264
    const v0, 0x7f0d025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llMainScreen:Landroid/widget/LinearLayout;

    .line 265
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iget v1, p1, LAdapter/TryDemoSwitchAdpater;->max:I

    iget v2, p1, LAdapter/TryDemoSwitchAdpater;->min:I

    sub-int/2addr v1, v2

    iget v2, p1, LAdapter/TryDemoSwitchAdpater;->step:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 266
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v3, 0x7f0d0278

    const/4 v2, 0x0

    .line 273
    const-string v0, "Select The Action"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 274
    const v0, 0x7f0d0276

    const-string v1, "Edit"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 275
    const v0, 0x7f0d0277

    const-string v1, "Hide"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 276
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {p0}, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "Lock"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "Unlock"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
