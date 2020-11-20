.class final Lcom/theartofdev/edmodo/cropper/CropImageAnimation;
.super Landroid/view/animation/Animation;
.source "CropImageAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final mAnimMatrix:[F

.field private final mAnimPoints:[F

.field private final mAnimRect:Landroid/graphics/RectF;

.field private final mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private final mEndBoundPoints:[F

.field private final mEndCropWindowRect:Landroid/graphics/RectF;

.field private final mEndImageMatrix:[F

.field private final mImageView:Landroid/widget/ImageView;

.field private final mStartBoundPoints:[F

.field private final mStartCropWindowRect:Landroid/graphics/RectF;

.field private final mStartImageMatrix:[F


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V
    .locals 3
    .param p1, "cropImageView"    # Landroid/widget/ImageView;
    .param p2, "cropOverlayView"    # Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 52
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartBoundPoints:[F

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndBoundPoints:[F

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndCropWindowRect:Landroid/graphics/RectF;

    .line 41
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartImageMatrix:[F

    .line 43
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndImageMatrix:[F

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimRect:Landroid/graphics/RectF;

    .line 47
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimPoints:[F

    .line 49
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimMatrix:[F

    .line 53
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    .line 54
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 56
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setDuration(J)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setFillAfter(Z)V

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    invoke-virtual {p0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndCropWindowRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 79
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndCropWindowRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 80
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndCropWindowRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 81
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndCropWindowRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 82
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimPoints:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimPoints:[F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartBoundPoints:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndBoundPoints:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartBoundPoints:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimPoints:[F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setBounds([FII)V

    .line 89
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimMatrix:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimMatrix:[F

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartImageMatrix:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndImageMatrix:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartImageMatrix:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 93
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mAnimMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 94
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 96
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 97
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 98
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    return-void
.end method

.method public setEndState([FLandroid/graphics/Matrix;)V
    .locals 3
    .param p1, "boundPoints"    # [F
    .param p2, "imageMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndBoundPoints:[F

    const/16 v1, 0x8

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndCropWindowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 72
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mEndImageMatrix:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 73
    return-void
.end method

.method public setStartState([FLandroid/graphics/Matrix;)V
    .locals 3
    .param p1, "boundPoints"    # [F
    .param p2, "imageMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->reset()V

    .line 64
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartBoundPoints:[F

    const/16 v1, 0x8

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartCropWindowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 66
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->mStartImageMatrix:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 67
    return-void
.end method
