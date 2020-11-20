.class public Ltyrantgit/explosionfield/ExplosionField;
.super Landroid/view/View;
.source "ExplosionField.java"


# instance fields
.field private mExpandInset:[I

.field private mExplosions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltyrantgit/explosionfield/ExplosionAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    .line 44
    invoke-direct {p0}, Ltyrantgit/explosionfield/ExplosionField;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    .line 49
    invoke-direct {p0}, Ltyrantgit/explosionfield/ExplosionField;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    .line 54
    invoke-direct {p0}, Ltyrantgit/explosionfield/ExplosionField;->init()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Ltyrantgit/explosionfield/ExplosionField;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ltyrantgit/explosionfield/ExplosionField;

    .prologue
    .line 37
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    return-object v0
.end method

.method public static attach2Window(Landroid/app/Activity;)Ltyrantgit/explosionfield/ExplosionField;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, -0x1

    .line 119
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 120
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v0, Ltyrantgit/explosionfield/ExplosionField;

    invoke-direct {v0, p0}, Ltyrantgit/explosionfield/ExplosionField;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "explosionField":Ltyrantgit/explosionfield/ExplosionField;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    const/16 v1, 0x20

    invoke-static {v1}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0}, Ltyrantgit/explosionfield/ExplosionField;->invalidate()V

    .line 116
    return-void
.end method

.method public expandExplosionBound(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 70
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 71
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 72
    return-void
.end method

.method public explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bound"    # Landroid/graphics/Rect;
    .param p3, "startDelay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 75
    new-instance v0, Ltyrantgit/explosionfield/ExplosionAnimator;

    invoke-direct {v0, p0, p1, p2}, Ltyrantgit/explosionfield/ExplosionAnimator;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 76
    .local v0, "explosion":Ltyrantgit/explosionfield/ExplosionAnimator;
    new-instance v1, Ltyrantgit/explosionfield/ExplosionField$1;

    invoke-direct {v1, p0}, Ltyrantgit/explosionfield/ExplosionField$1;-><init>(Ltyrantgit/explosionfield/ExplosionField;)V

    invoke-virtual {v0, v1}, Ltyrantgit/explosionfield/ExplosionAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    invoke-virtual {v0, p3, p4}, Ltyrantgit/explosionfield/ExplosionAnimator;->setStartDelay(J)V

    .line 83
    invoke-virtual {v0, p5, p6}, Ltyrantgit/explosionfield/ExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 84
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0}, Ltyrantgit/explosionfield/ExplosionAnimator;->start()V

    .line 86
    return-void
.end method

.method public explode(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x96

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 89
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 91
    new-array v8, v7, [I

    .line 92
    .local v8, "location":[I
    invoke-virtual {p0, v8}, Ltyrantgit/explosionfield/ExplosionField;->getLocationOnScreen([I)V

    .line 93
    aget v1, v8, v4

    neg-int v1, v1

    aget v2, v8, v5

    neg-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 94
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    aget v1, v1, v4

    neg-int v1, v1

    iget-object v2, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    aget v2, v2, v5

    neg-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 95
    const/16 v9, 0x64

    .line 96
    .local v9, "startDelay":I
    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 97
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Ltyrantgit/explosionfield/ExplosionField$2;

    invoke-direct {v1, p0, p1}, Ltyrantgit/explosionfield/ExplosionField$2;-><init>(Ltyrantgit/explosionfield/ExplosionField;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v4, v9

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 110
    invoke-static {p1}, Ltyrantgit/explosionfield/Utils;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-long v4, v9

    sget-wide v6, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ltyrantgit/explosionfield/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V

    .line 111
    return-void

    .line 96
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltyrantgit/explosionfield/ExplosionAnimator;

    .line 65
    .local v0, "explosion":Ltyrantgit/explosionfield/ExplosionAnimator;
    invoke-virtual {v0, p1}, Ltyrantgit/explosionfield/ExplosionAnimator;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0

    .line 67
    .end local v0    # "explosion":Ltyrantgit/explosionfield/ExplosionAnimator;
    :cond_0
    return-void
.end method
