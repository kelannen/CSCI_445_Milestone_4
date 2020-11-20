.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;
.super Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;
.source "ThumbDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final DEFAULT_SIZE_DP:I = 0xc


# instance fields
.field private mOpen:Z

.field private mRunning:Z

.field private final mSize:I

.field private opener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 1
    .param p1, "tintStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "size"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 85
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable$1;

    invoke-direct {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable$1;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    .line 51
    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mSize:I

    .line 52
    return-void
.end method

.method static synthetic access$002(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mOpen:Z

    return p1
.end method

.method static synthetic access$102(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    return p1
.end method


# virtual methods
.method public animateToNormal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mOpen:Z

    .line 80
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    .line 81
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->invalidateSelf()V

    .line 83
    return-void
.end method

.method public animateToPressed()V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    .line 76
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 66
    iget-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mOpen:Z

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 68
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 69
    .local v1, "radius":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "radius":F
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mSize:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->animateToNormal()V

    .line 102
    return-void
.end method
