.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackOvalDrawable;
.super Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;
.source "TrackOvalDrawable.java"


# instance fields
.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackOvalDrawable;->mRectF:Landroid/graphics/RectF;

    .line 36
    return-void
.end method


# virtual methods
.method doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackOvalDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackOvalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 41
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackOvalDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 42
    return-void
.end method
