.class public Ltyrantgit/explosionfield/ExplosionAnimator;
.super Landroid/animation/ValueAnimator;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    }
.end annotation


# static fields
.field static DEFAULT_DURATION:J = 0x0L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_VALUE:F = 1.4f

.field private static final V:F

.field private static final W:F

.field private static final X:F

.field private static final Y:F


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mContainer:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x400

    sput-wide v0, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    .line 33
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 35
    const/4 v0, 0x5

    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->X:F

    .line 36
    const/16 v0, 0x14

    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->Y:F

    .line 37
    const/4 v0, 0x2

    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->W:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "container"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/16 v8, 0x11

    .line 44
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 45
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    .line 47
    const/16 v3, 0xf

    .line 48
    .local v3, "partLen":I
    const/16 v6, 0xe1

    new-array v6, v6, [Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    iput-object v6, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    .line 49
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 50
    .local v4, "random":Ljava/util/Random;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int v5, v6, v8

    .line 51
    .local v5, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int v0, v6, v8

    .line 52
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 53
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 54
    iget-object v6, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    mul-int v7, v1, v3

    add-int/2addr v7, v2

    add-int/lit8 v8, v2, 0x1

    mul-int/2addr v8, v5

    add-int/lit8 v9, v1, 0x1

    mul-int/2addr v9, v0

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-direct {p0, v8, v4}, Ltyrantgit/explosionfield/ExplosionAnimator;->generateParticle(ILjava/util/Random;)Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    move-result-object v8

    aput-object v8, v6, v7

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "j":I
    :cond_1
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    .line 58
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {p0, v6}, Ltyrantgit/explosionfield/ExplosionAnimator;->setFloatValues([F)V

    .line 59
    sget-object v6, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v6}, Ltyrantgit/explosionfield/ExplosionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    sget-wide v6, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    invoke-virtual {p0, v6, v7}, Ltyrantgit/explosionfield/ExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 30
    sget v0, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    return v0
.end method

.method private generateParticle(ILjava/util/Random;)Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    .locals 8
    .param p1, "color"    # I
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const v6, 0x3e4ccccd    # 0.2f

    .line 64
    new-instance v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;-><init>(Ltyrantgit/explosionfield/ExplosionAnimator;Ltyrantgit/explosionfield/ExplosionAnimator$1;)V

    .line 65
    .local v2, "particle":Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    iput p1, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->color:I

    .line 66
    sget v3, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->radius:F

    .line 67
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 68
    sget v3, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    sget v4, Ltyrantgit/explosionfield/ExplosionAnimator;->X:F

    sget v5, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    .line 72
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 73
    .local v1, "nextFloat":F
    iget-object v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e3851ec    # 0.18f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    .line 74
    cmpg-float v3, v1, v6

    if-gez v3, :cond_1

    iget v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    :goto_1
    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    .line 75
    iget-object v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    const v4, 0x3fe66666    # 1.8f

    mul-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    .line 76
    cmpg-float v3, v1, v6

    if-gez v3, :cond_2

    iget v0, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    .line 77
    .local v0, "f":F
    :goto_2
    iput v0, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    .line 78
    const/high16 v3, 0x40800000    # 4.0f

    iget v4, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    mul-float/2addr v3, v4

    iget v4, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    div-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->mag:F

    .line 79
    iget v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->mag:F

    neg-float v3, v3

    iget v4, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    div-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->neg:F

    .line 80
    iget-object v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sget v4, Ltyrantgit/explosionfield/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 81
    iput v0, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCx:F

    .line 82
    iput v0, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cx:F

    .line 83
    iget-object v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sget v4, Ltyrantgit/explosionfield/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 84
    iput v0, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCy:F

    .line 85
    iput v0, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cy:F

    .line 86
    const v3, 0x3e0f5c29    # 0.14f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->life:F

    .line 87
    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->overflow:F

    .line 88
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    .line 89
    return-object v2

    .line 70
    .end local v0    # "f":F
    .end local v1    # "nextFloat":F
    :cond_0
    sget v3, Ltyrantgit/explosionfield/ExplosionAnimator;->W:F

    sget v4, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    sget v5, Ltyrantgit/explosionfield/ExplosionAnimator;->W:F

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    goto/16 :goto_0

    .line 74
    .restart local v1    # "nextFloat":F
    :cond_1
    iget v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    iget v4, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    mul-float/2addr v4, v6

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    goto/16 :goto_1

    .line 76
    :cond_2
    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    iget v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    const v4, 0x3f19999a    # 0.6f

    mul-float v0, v3, v4

    goto/16 :goto_2

    :cond_3
    iget v3, v2, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    const v4, 0x3e99999a    # 0.3f

    mul-float v0, v3, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Ltyrantgit/explosionfield/ExplosionAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :goto_0
    return v1

    .line 96
    :cond_0
    iget-object v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 97
    .local v0, "particle":Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    invoke-virtual {p0}, Ltyrantgit/explosionfield/ExplosionAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->advance(F)V

    .line 98
    iget v1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 99
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->color:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget v1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cx:F

    iget v5, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cy:F

    iget v6, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->radius:F

    iget-object v7, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 104
    .end local v0    # "particle":Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    :cond_2
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 105
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 111
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 112
    return-void
.end method
