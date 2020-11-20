.class public LAdapter/AdapterCustomSwitch$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterCustomSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

.field imgBackward:Landroid/widget/ImageView;

.field imgForward:Landroid/widget/ImageView;

.field imgLockImage:Landroid/widget/ImageView;

.field imgPause:Landroid/widget/ImageView;

.field imgSwitchImage:Landroid/widget/ImageView;

.field layoutDimmer:Landroid/widget/LinearLayout;

.field linearLock:Landroid/widget/LinearLayout;

.field llCurtain:Landroid/widget/LinearLayout;

.field llLinear:Landroid/widget/LinearLayout;

.field llMainScreen:Landroid/widget/LinearLayout;

.field lock:Landroid/widget/ImageView;

.field seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field final synthetic this$0:LAdapter/AdapterCustomSwitch;

.field tvSwitchName:Landroid/widget/TextView;

.field txtRangeValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/AdapterCustomSwitch;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 423
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->this$0:LAdapter/AdapterCustomSwitch;

    .line 424
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 425
    const v0, 0x7f0d01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    .line 426
    const v0, 0x7f0d018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->llLinear:Landroid/widget/LinearLayout;

    .line 427
    const v0, 0x7f0d025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    .line 428
    const v0, 0x7f0d01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->txtRangeValue:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f0d01a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    .line 430
    const v0, 0x7f0d024c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    .line 431
    const v0, 0x7f0d0114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 432
    const v0, 0x7f0d025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->lock:Landroid/widget/ImageView;

    .line 433
    const v0, 0x7f0d0112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    .line 434
    const v0, 0x7f0d025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->llMainScreen:Landroid/widget/LinearLayout;

    .line 436
    const v0, 0x7f0d025e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgForward:Landroid/widget/ImageView;

    .line 437
    const v0, 0x7f0d025f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgPause:Landroid/widget/ImageView;

    .line 438
    const v0, 0x7f0d0260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgBackward:Landroid/widget/ImageView;

    .line 440
    const v0, 0x7f0d025c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    .line 442
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 443
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

    .line 447
    const-string v0, "Select The Action"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 448
    const v0, 0x7f0d0276

    const-string v1, "Edit"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 449
    const v0, 0x7f0d027f

    const-string v1, "Move"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 450
    const v0, 0x7f0d0277

    const-string v1, "Hide"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 451
    iget-object v0, p0, LAdapter/AdapterCustomSwitch$MyViewHolder;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v0, v0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {p0}, LAdapter/AdapterCustomSwitch$MyViewHolder;->getAdapterPosition()I

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

    .line 452
    const-string v0, "Lock"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 456
    :goto_0
    const v0, 0x7f0d0279

    const-string v1, "Schedule"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 457
    return-void

    .line 454
    :cond_0
    const-string v0, "Unlock"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
