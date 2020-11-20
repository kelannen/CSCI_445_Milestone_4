.class public Lcom/theartofdev/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

.field private mAutoZoomEnabled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private mDegreesRotated:I

.field private final mImageInverseMatrix:Landroid/graphics/Matrix;

.field private final mImageMatrix:Landroid/graphics/Matrix;

.field private final mImagePoints:[F

.field private mImageResource:I

.field private final mImageView:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLoadedImageUri:Landroid/net/Uri;

.field private mLoadedSampleSize:I

.field private mMaxZoom:I

.field private mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

.field private mOnGetCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mOnSaveCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mOnSetImageUriCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private mRestoreCropWindowRect:Landroid/graphics/RectF;

.field private mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

.field private mShowCropOverlay:Z

.field private mShowProgressBar:Z

.field private mZoom:F

.field private mZoomOffsetX:F

.field private mZoomOffsetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 65
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    .line 75
    const/16 v5, 0x8

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    .line 102
    iput-boolean v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    .line 108
    iput-boolean v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    .line 114
    iput-boolean v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 151
    iput v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "options":Lcom/theartofdev/edmodo/cropper/CropImageOptions;
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_3

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 193
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_0

    .line 194
    const-string v5, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "options":Lcom/theartofdev/edmodo/cropper/CropImageOptions;
    check-cast v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    .line 197
    .restart local v2    # "options":Lcom/theartofdev/edmodo/cropper/CropImageOptions;
    :cond_0
    if-nez v2, :cond_2

    .line 199
    new-instance v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    .end local v2    # "options":Lcom/theartofdev/edmodo/cropper/CropImageOptions;
    invoke-direct {v2}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    .line 201
    .restart local v2    # "options":Lcom/theartofdev/edmodo/cropper/CropImageOptions;
    if-eqz p2, :cond_2

    .line 202
    sget-object v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 204
    .local v3, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    iget-boolean v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 205
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 206
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioY:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 207
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    move-result-object v5

    sget v6, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropScaleType:I

    iget-object v7, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 208
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 209
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 210
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMaxZoom:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    .line 211
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v5

    sget v6, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropShape:I

    iget-object v7, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->ordinal()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 212
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    move-result-object v5

    sget v6, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropGuidelines:I

    iget-object v7, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 213
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropSnapRadius:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    .line 214
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropTouchRadius:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    .line 215
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 216
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderLineThickness:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    .line 217
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderLineColor:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    .line 218
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 219
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerOffset:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    .line 220
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerLength:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    .line 221
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerColor:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    .line 222
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropGuidelinesThickness:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    .line 223
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropGuidelinesColor:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    .line 224
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBackgroundColor:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    .line 225
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropShowCropOverlay:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    .line 226
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropShowProgressBar:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    .line 227
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    .line 228
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropWindowWidth:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 229
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropWindowHeight:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 230
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropResultWidthPX:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 231
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMinCropResultHeightPX:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    .line 232
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMaxCropResultWidthPX:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 233
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropMaxCropResultHeightPX:I

    iget v6, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 236
    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    .line 237
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/theartofdev/edmodo/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    .line 238
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 239
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_2
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 249
    iget-object v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 250
    iget-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 251
    iget v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    .line 252
    iget-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    .line 253
    iget-boolean v5, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    .line 255
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 256
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/theartofdev/edmodo/cropper/R$layout;->crop_image_view:I

    invoke-virtual {v0, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 258
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/theartofdev/edmodo/cropper/R$id;->ImageView_image:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    .line 259
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 261
    sget v5, Lcom/theartofdev/edmodo/cropper/R$id;->CropOverlayView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 262
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    new-instance v6, Lcom/theartofdev/edmodo/cropper/CropImageView$1;

    invoke-direct {v6, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$1;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V

    invoke-virtual {v5, v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;)V

    .line 268
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V

    .line 270
    sget v5, Lcom/theartofdev/edmodo/cropper/R$id;->CropProgressBar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 271
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 272
    return-void

    .line 192
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "ta":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v5
.end method

.method static synthetic access$000(Lcom/theartofdev/edmodo/cropper/CropImageView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/theartofdev/edmodo/cropper/CropImageView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    return-void
.end method

.method private applyImageMatrix(FFZZ)V
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "center"    # Z
    .param p4, "animate"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 1341
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    cmpl-float v2, p1, v3

    if-lez v2, :cond_4

    cmpl-float v2, p2, v3

    if-lez v2, :cond_4

    .line 1343
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1346
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1347
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1350
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    if-lez v2, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1352
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1356
    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v2

    div-float v2, p1, v2

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v4

    div-float v4, p2, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1357
    .local v1, "scale":F
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    if-ne v2, v4, :cond_1

    cmpg-float v2, v1, v7

    if-ltz v2, :cond_2

    :cond_1
    cmpl-float v2, v1, v7

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eqz v2, :cond_3

    .line 1358
    :cond_2
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v5

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1359
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1363
    :cond_3
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v7}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1364
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1366
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1369
    .local v0, "cropRect":Landroid/graphics/RectF;
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    neg-float v2, v2

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    neg-float v4, v4

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1371
    if-eqz p3, :cond_7

    .line 1373
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_5

    move v2, v3

    .line 1374
    :goto_0
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 1375
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_6

    .line 1376
    :goto_1
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    .line 1384
    :goto_2
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1385
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1386
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1387
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1390
    if-eqz p4, :cond_8

    .line 1392
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setEndState([FLandroid/graphics/Matrix;)V

    .line 1393
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1399
    :goto_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateImageBounds(Z)V

    .line 1401
    .end local v0    # "cropRect":Landroid/graphics/RectF;
    .end local v1    # "scale":F
    :cond_4
    return-void

    .line 1373
    .restart local v0    # "cropRect":Landroid/graphics/RectF;
    .restart local v1    # "scale":F
    :cond_5
    div-float v2, p1, v8

    .line 1374
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v2, v4

    goto :goto_0

    .line 1375
    :cond_6
    div-float v2, p2, v8

    .line 1376
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float v3, v2, v3

    goto/16 :goto_1

    .line 1379
    :cond_7
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    neg-float v3, v3

    add-float/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 1380
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v3, v3

    add-float/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    goto/16 :goto_2

    .line 1395
    :cond_8
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_3
.end method

.method private clearImageInt()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1021
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1024
    :cond_1
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1027
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    .line 1028
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 1029
    const/4 v0, 0x1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    .line 1030
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 1031
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 1032
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 1033
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    .line 1034
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1036
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1038
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropOverlayVisibility()V

    .line 1039
    return-void
.end method

.method private static getOnMeasureSpec(III)I
    .locals 2
    .param p0, "measureSpecMode"    # I
    .param p1, "measureSpecSize"    # I
    .param p2, "desiredSize"    # I

    .prologue
    .line 1432
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p0, v1, :cond_0

    .line 1434
    move v0, p1

    .line 1443
    .local v0, "spec":I
    :goto_0
    return v0

    .line 1435
    .end local v0    # "spec":I
    :cond_0
    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_1

    .line 1437
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "spec":I
    goto :goto_0

    .line 1440
    .end local v0    # "spec":I
    :cond_1
    move v0, p2

    .restart local v0    # "spec":I
    goto :goto_0
.end method

.method private handleCropWindowChanged(ZZ)V
    .locals 13
    .param p1, "inProgress"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v12, 0x3f23d70a    # 0.64f

    const v11, 0x3f028f5c    # 0.51f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 1280
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    .line 1281
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    .line 1282
    .local v1, "height":I
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    if-lez v1, :cond_1

    .line 1284
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1285
    .local v0, "cropRect":Landroid/graphics/RectF;
    if-eqz p1, :cond_2

    .line 1286
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v9

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v9

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1287
    :cond_0
    int-to-float v4, v3

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1319
    .end local v0    # "cropRect":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void

    .line 1289
    .restart local v0    # "cropRect":Landroid/graphics/RectF;
    :cond_2
    iget-boolean v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    cmpl-float v4, v4, v10

    if-lez v4, :cond_1

    .line 1290
    :cond_3
    const/4 v2, 0x0

    .line 1292
    .local v2, "newZoom":F
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v3

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v1

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 1293
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v6, v7

    div-float/2addr v6, v12

    div-float/2addr v5, v6

    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v7, v8

    div-float/2addr v7, v12

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1295
    :cond_4
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    cmpl-float v4, v4, v10

    if-lez v4, :cond_6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v3

    const v6, 0x3f266666    # 0.65f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v1

    const v6, 0x3f266666    # 0.65f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 1296
    :cond_5
    int-to-float v4, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v5, v6

    div-float/2addr v5, v11

    div-float/2addr v4, v5

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float/2addr v6, v7

    div-float/2addr v6, v11

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1298
    :cond_6
    iget-boolean v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-nez v4, :cond_7

    .line 1299
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1302
    :cond_7
    cmpl-float v4, v2, v9

    if-lez v4, :cond_1

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_1

    .line 1303
    if-eqz p2, :cond_9

    .line 1304
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    if-nez v4, :cond_8

    .line 1306
    new-instance v4, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {v4, v5, v6}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;-><init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    iput-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    .line 1309
    :cond_8
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAnimation:Lcom/theartofdev/edmodo/cropper/CropImageAnimation;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6}, Lcom/theartofdev/edmodo/cropper/CropImageAnimation;->setStartState([FLandroid/graphics/Matrix;)V

    .line 1312
    :cond_9
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    div-float v4, v2, v4

    invoke-direct {p0, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateCropRectByZoomChange(F)V

    .line 1313
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 1315
    int-to-float v4, v3

    int-to-float v5, v1

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    goto/16 :goto_0
.end method

.method private mapImagePointsByImageMatrix()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1408
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1409
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1410
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1411
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 1412
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1413
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1414
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 1415
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1416
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1417
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 968
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 969
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageResource"    # I

    .prologue
    .line 975
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 976
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageResource"    # I
    .param p3, "imageUri"    # Landroid/net/Uri;
    .param p4, "loadSampleSize"    # I
    .param p5, "degreesRotated"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 994
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->clearImageInt()V

    .line 996
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 997
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 999
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    .line 1000
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    .line 1001
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    .line 1002
    iput p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 1004
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1006
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 1008
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropOverlayVisibility()V

    .line 1011
    :cond_1
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;II)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "loadSampleSize"    # I
    .param p4, "degreesRotated"    # I

    .prologue
    .line 982
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 983
    return-void
.end method

.method private setCropOverlayVisibility()V
    .locals 2

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setVisibility(I)V

    .line 1453
    :cond_0
    return-void

    .line 1451
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setProgressBarVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1459
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1461
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1462
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v1

    .line 1459
    goto :goto_0

    .line 1461
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private updateCropRectByZoomChange(F)V
    .locals 7
    .param p1, "zoomChange"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1326
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1327
    .local v0, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v1, v3, v4

    .line 1328
    .local v1, "xCenterOffset":F
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v2, v3, v4

    .line 1329
    .local v2, "yCenterOffset":F
    mul-float v3, v1, p1

    sub-float v3, v1, v3

    mul-float v4, v2, p1

    sub-float v4, v2, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1330
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1331
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1332
    return-void
.end method

.method private updateImageBounds(Z)V
    .locals 6
    .param p1, "clear"    # Z

    .prologue
    .line 1468
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 1471
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v3

    div-float v1, v2, v3

    .line 1472
    .local v1, "scaleFactorWidth":F
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v3

    div-float v0, v2, v3

    .line 1473
    .local v0, "scaleFactorHeight":F
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowLimits(FFFF)V

    .line 1477
    .end local v0    # "scaleFactorHeight":F
    .end local v1    # "scaleFactorWidth":F
    :cond_0
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setBounds([FII)V

    .line 1478
    return-void

    .line 1477
    :cond_1
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImagePoints:[F

    goto :goto_0
.end method


# virtual methods
.method public clearAspectRatio()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 444
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 445
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 447
    return-void
.end method

.method public clearImage()V
    .locals 2

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->clearImageInt()V

    .line 852
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 853
    return-void
.end method

.method public getAspectRatio()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 5

    .prologue
    .line 547
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 549
    .local v0, "cropWindowRect":Landroid/graphics/RectF;
    const/16 v3, 0x8

    new-array v2, v3, [F

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/RectF;->left:F

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, v0, Landroid/graphics/RectF;->left:F

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    .line 560
    .local v2, "points":[F
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 561
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 564
    aget v3, v2, v1

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_0
    return-object v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 521
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v0

    .line 526
    .local v0, "points":[F
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v1, v3, v4

    .line 527
    .local v1, "orgWidth":I
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v2, v3, v4

    .line 530
    .local v2, "orgHeight":I
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 531
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v3

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v5

    .line 530
    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v3

    .line 533
    .end local v0    # "points":[F
    .end local v1    # "orgWidth":I
    .end local v2    # "orgHeight":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImage(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 610
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImage(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .prologue
    .line 622
    const/16 v17, 0x0

    .line 623
    .local v17, "croppedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 626
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p3

    if-eq v0, v4, :cond_2

    .line 627
    :goto_0
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 629
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 630
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v8, v4, v5

    .line 631
    .local v8, "orgWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v9, v4, v5

    .line 633
    .local v9, "orgHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 635
    invoke-virtual {v10}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v11}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v12}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v12

    move/from16 v13, p1

    move/from16 v14, p2

    .line 633
    invoke-static/range {v4 .. v14}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIII)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v16

    .line 637
    .local v16, "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 643
    .end local v8    # "orgWidth":I
    .end local v9    # "orgHeight":I
    .end local v16    # "bitmapSampled":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 646
    :cond_1
    return-object v17

    .line 626
    :cond_2
    const/16 p1, 0x0

    goto :goto_0

    .line 627
    :cond_3
    const/16 p2, 0x0

    goto :goto_1

    .line 639
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 640
    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v15

    .line 639
    invoke-static/range {v10 .. v15}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->cropBitmap(Landroid/graphics/Bitmap;[FIZII)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_2
.end method

.method public getCroppedImageAsync()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImageAsync(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    .line 655
    return-void
.end method

.method public getCroppedImageAsync(II)V
    .locals 1
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 666
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImageAsync(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    .line 667
    return-void
.end method

.method public getCroppedImageAsync(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V
    .locals 7
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .prologue
    const/4 v4, 0x0

    .line 678
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnGetCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mOnCropImageCompleteListener is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->startCropWorkerTask(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 682
    return-void
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    move-result-object v0

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    return v0
.end method

.method public getRotatedDegrees()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    return v0
.end method

.method public getScaleType()Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object v0
.end method

.method public isAutoZoomEnabled()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    return v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v0

    return v0
.end method

.method public isShowCropOverlay()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    return v0
.end method

.method public isShowProgressBar()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    return v0
.end method

.method onImageCroppingAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;)V
    .locals 10
    .param p1, "result"    # Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;

    .prologue
    .line 942
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 943
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 945
    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    .line 946
    .local v8, "listener":Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;
    if-eqz v8, :cond_0

    .line 947
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;

    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v6

    iget v7, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->sampleSize:I

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;II)V

    .line 948
    .local v0, "cropResult":Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;
    invoke-interface {v8, p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;->onCropImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V

    .line 951
    .end local v0    # "cropResult":Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;
    :cond_0
    iget-boolean v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->isSave:Z

    if-eqz v1, :cond_2

    .line 952
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSaveCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;

    .line 953
    .local v9, "listener2":Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;
    if-eqz v9, :cond_1

    .line 954
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    invoke-interface {v9, p0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;->onSaveCroppedImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 962
    .end local v9    # "listener2":Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnGetCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;

    .line 958
    .local v9, "listener2":Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;
    if-eqz v9, :cond_1

    .line 959
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask$Result;->error:Ljava/lang/Exception;

    invoke-interface {v9, p0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;->onGetCroppedImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1242
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1244
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    if-lez v1, :cond_2

    .line 1246
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1247
    .local v0, "origParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1248
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1249
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1252
    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1255
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1257
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1258
    invoke-direct {p0, v3, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1259
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    .line 1260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 1268
    .end local v0    # "origParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 1263
    .restart local v0    # "origParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-direct {p0, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateImageBounds(Z)V

    goto :goto_0

    .line 1266
    .end local v0    # "origParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-direct {p0, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->updateImageBounds(Z)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1183
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1185
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1186
    .local v12, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1187
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1188
    .local v5, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1190
    .local v6, "heightSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_6

    .line 1193
    if-nez v6, :cond_0

    .line 1194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1200
    :cond_0
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1201
    .local v10, "viewToBitmapWidthRatio":D
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1204
    .local v8, "viewToBitmapHeightRatio":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 1205
    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 1207
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ge v6, v14, :cond_2

    .line 1208
    int-to-double v14, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 1212
    :cond_2
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v10, v14

    if-nez v14, :cond_3

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v8, v14

    if-eqz v14, :cond_5

    .line 1213
    :cond_3
    cmpg-double v14, v10, v8

    if-gtz v14, :cond_4

    .line 1214
    move v3, v13

    .line 1215
    .local v3, "desiredWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v10

    double-to-int v2, v14

    .line 1226
    .local v2, "desiredHeight":I
    :goto_0
    invoke-static {v12, v13, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result v7

    .line 1227
    .local v7, "width":I
    invoke-static {v5, v6, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result v4

    .line 1229
    .local v4, "height":I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    .line 1230
    move-object/from16 v0, p0

    iput v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    .line 1232
    move-object/from16 v0, p0

    iget v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLayoutHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    .line 1237
    .end local v2    # "desiredHeight":I
    .end local v3    # "desiredWidth":I
    .end local v4    # "height":I
    .end local v7    # "width":I
    .end local v8    # "viewToBitmapHeightRatio":D
    .end local v10    # "viewToBitmapWidthRatio":D
    :goto_1
    return-void

    .line 1217
    .restart local v8    # "viewToBitmapHeightRatio":D
    .restart local v10    # "viewToBitmapWidthRatio":D
    :cond_4
    move v2, v6

    .line 1218
    .restart local v2    # "desiredHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v8

    double-to-int v3, v14

    .restart local v3    # "desiredWidth":I
    goto :goto_0

    .line 1222
    .end local v2    # "desiredHeight":I
    .end local v3    # "desiredWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1223
    .restart local v3    # "desiredWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .restart local v2    # "desiredHeight":I
    goto :goto_0

    .line 1235
    .end local v2    # "desiredHeight":I
    .end local v3    # "desiredWidth":I
    .end local v8    # "viewToBitmapHeightRatio":D
    .end local v10    # "viewToBitmapWidthRatio":D
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v7, 0x0

    .line 1126
    instance-of v6, p1, Landroid/os/Bundle;

    if-eqz v6, :cond_7

    move-object v1, p1

    .line 1127
    check-cast v1, Landroid/os/Bundle;

    .line 1130
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    if-nez v6, :cond_2

    .line 1132
    const-string v6, "LOADED_IMAGE_URI"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1133
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 1134
    const-string v6, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1136
    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1137
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v4, v6

    .line 1138
    .local v4, "stateBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1139
    sput-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    .line 1140
    const-string v6, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;II)V

    .line 1143
    .end local v4    # "stateBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v6, :cond_1

    .line 1144
    invoke-virtual {p0, v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    .line 1163
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v6, "DEGREES_ROTATED"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 1165
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-string v6, "INITIAL_CROP_RECT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1167
    const-string v6, "CROP_WINDOW_RECT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 1169
    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-string v7, "CROP_SHAPE"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V

    .line 1171
    const-string v6, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 1172
    const-string v6, "CROP_MAX_ZOOM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    .line 1175
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v6, "instanceState"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {p0, v6}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1179
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_2
    return-void

    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_3
    move-object v4, v7

    .line 1137
    goto :goto_0

    .line 1147
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    const-string v6, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1148
    .local v3, "resId":I
    if-lez v3, :cond_5

    .line 1149
    invoke-virtual {p0, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageResource(I)V

    goto :goto_1

    .line 1151
    :cond_5
    const-string v6, "SET_BITMAP"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 1153
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1155
    :cond_6
    const-string v6, "LOADING_IMAGE_URI"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .line 1156
    .restart local v5    # "uri":Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 1157
    invoke-virtual {p0, v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_1

    .line 1177
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "resId":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1088
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1089
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1090
    const-string v3, "LOADED_IMAGE_URI"

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1091
    const-string v3, "LOADED_IMAGE_RESOURCE"

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1092
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageResource:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 1093
    const-string v3, "SET_BITMAP"

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1095
    :cond_0
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1096
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    .line 1098
    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 1101
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    .line 1102
    .local v2, "task":Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
    if-eqz v2, :cond_2

    .line 1103
    const-string v3, "LOADING_IMAGE_URI"

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1106
    .end local v2    # "task":Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
    :cond_2
    const-string v3, "LOADED_SAMPLE_SIZE"

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1107
    const-string v3, "DEGREES_ROTATED"

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1108
    const-string v3, "INITIAL_CROP_RECT"

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1110
    sget-object v3, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1112
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1113
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1115
    const-string v3, "CROP_WINDOW_RECT"

    sget-object v4, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1116
    const-string v3, "CROP_SHAPE"

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    move-result-object v4

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v3, "CROP_AUTO_ZOOM_ENABLED"

    iget-boolean v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1118
    const-string v3, "CROP_MAX_ZOOM"

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    return-object v0
.end method

.method onSetImageUriAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V
    .locals 5
    .param p1, "result"    # Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    .prologue
    .line 922
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 923
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 925
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 926
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget v3, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->loadSampleSize:I

    iget v4, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->degreesRotated:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;II)V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

    .line 930
    .local v0, "listener":Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;
    if-eqz v0, :cond_1

    .line 931
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->error:Ljava/lang/Exception;

    invoke-interface {v0, p0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;->onSetImageUriComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 933
    :cond_1
    return-void
.end method

.method public resetCropRect()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 584
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 585
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 586
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    .line 587
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 588
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 589
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropWindowRect()V

    .line 590
    return-void
.end method

.method public rotateImage(I)V
    .locals 14
    .param p1, "degrees"    # I

    .prologue
    .line 862
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 864
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2d

    if-le p1, v5, :cond_0

    const/16 v5, 0x87

    if-lt p1, v5, :cond_1

    :cond_0
    const/16 v5, 0xd7

    if-le p1, v5, :cond_3

    const/16 v5, 0x131

    if-ge p1, v5, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 865
    .local v2, "flipAxes":Z
    :goto_0
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 866
    if-eqz v2, :cond_4

    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    .line 867
    .local v4, "halfWidth":F
    if-eqz v2, :cond_5

    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    div-float v3, v5, v6

    .line 869
    .local v3, "halfHeight":F
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 871
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x0

    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    aput v7, v5, v6

    .line 872
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x1

    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    aput v7, v5, v6

    .line 873
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 874
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 875
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 876
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 877
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 879
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 880
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    rem-int/lit16 v5, v5, 0x168

    :goto_3
    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 882
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 885
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 886
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    float-to-double v6, v5

    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v8, 0x4

    aget v5, v5, v8

    sget-object v8, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v10, 0x5

    aget v5, v5, v10

    sget-object v10, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    sub-float/2addr v5, v10

    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 887
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 889
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 891
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS:[F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 894
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v8, 0x5

    aget v5, v5, v8

    sget-object v8, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 895
    .local v0, "change":D
    float-to-double v6, v4

    mul-double/2addr v6, v0

    double-to-float v4, v6

    .line 896
    float-to-double v6, v3

    mul-double/2addr v6, v0

    double-to-float v3, v6

    .line 899
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v6, v4

    sget-object v7, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-float/2addr v7, v3

    sget-object v8, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    add-float/2addr v8, v4

    sget-object v9, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->POINTS2:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 902
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 903
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 904
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/theartofdev/edmodo/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 905
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 908
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    .line 910
    .end local v0    # "change":D
    .end local v2    # "flipAxes":Z
    .end local v3    # "halfHeight":F
    .end local v4    # "halfWidth":F
    :cond_2
    return-void

    .line 864
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 866
    .restart local v2    # "flipAxes":Z
    :cond_4
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    goto/16 :goto_1

    .line 867
    .restart local v4    # "halfWidth":F
    :cond_5
    sget-object v5, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto/16 :goto_2

    .line 880
    .restart local v3    # "halfHeight":F
    :cond_6
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    rem-int/lit16 v5, v5, 0x168

    add-int/lit16 v5, v5, 0x168

    goto/16 :goto_3
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;)V
    .locals 7
    .param p1, "saveUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 692
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    .line 693
    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 7
    .param p1, "saveUri"    # Landroid/net/Uri;
    .param p2, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "saveCompressQuality"    # I

    .prologue
    const/4 v4, 0x0

    .line 704
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    .line 705
    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;III)V
    .locals 7
    .param p1, "saveUri"    # Landroid/net/Uri;
    .param p2, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "saveCompressQuality"    # I
    .param p4, "reqWidth"    # I
    .param p5, "reqHeight"    # I

    .prologue
    .line 719
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    .line 720
    return-void
.end method

.method public saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V
    .locals 7
    .param p1, "saveUri"    # Landroid/net/Uri;
    .param p2, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "saveCompressQuality"    # I
    .param p4, "reqWidth"    # I
    .param p5, "reqHeight"    # I
    .param p6, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSaveCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mOnCropImageCompleteListener is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 737
    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->startCropWorkerTask(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 738
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 1
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 436
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 438
    return-void
.end method

.method public setAutoZoomEnabled(Z)V
    .locals 2
    .param p1, "autoZoomEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eq v0, p1, :cond_0

    .line 321
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 322
    invoke-direct {p0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 323
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 325
    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 578
    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V
    .locals 1
    .param p1, "cropShape"    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V

    .line 307
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 404
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V
    .locals 1
    .param p1, "guidelines"    # Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V

    .line 418
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 785
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 786
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 799
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 800
    invoke-static {p1, p2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v0

    .line 801
    .local v0, "result":Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 802
    .local v1, "setBitmap":Landroid/graphics/Bitmap;
    iget v2, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 806
    .end local v0    # "result":Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 807
    invoke-direct {p0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 808
    return-void

    .line 804
    .end local v1    # "setBitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v1, p1

    .restart local v1    # "setBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 816
    if-eqz p1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 818
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 819
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 821
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 831
    if-eqz p1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    move-object v0, v1

    .line 833
    .local v0, "currentTask":Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
    :goto_0
    if-eqz v0, :cond_0

    .line 835
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->cancel(Z)Z

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->clearImageInt()V

    .line 840
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 841
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    invoke-direct {v2, p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 842
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapLoadingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 843
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 845
    .end local v0    # "currentTask":Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    .line 832
    goto :goto_0
.end method

.method public setMaxCropResultSize(II)V
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMaxCropResultSize(II)V

    .line 370
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 2
    .param p1, "maxZoom"    # I

    .prologue
    const/4 v1, 0x0

    .line 348
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 349
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mMaxZoom:I

    .line 350
    invoke-direct {p0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 351
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 353
    :cond_0
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMinCropResultSize(II)V

    .line 362
    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .locals 2
    .param p1, "multiTouchEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 333
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 335
    :cond_0
    return-void
.end method

.method public setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;

    .line 754
    return-void
.end method

.method public setOnGetCroppedImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 764
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnGetCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnGetCroppedImageCompleteListener;

    .line 765
    return-void
.end method

.method public setOnSaveCroppedImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 775
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSaveCroppedImageCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSaveCroppedImageCompleteListener;

    .line 776
    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;

    .line 746
    return-void
.end method

.method public setRotatedDegrees(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 387
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    if-eq v0, p1, :cond_0

    .line 388
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->rotateImage(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 286
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mScaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoom:F

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetY:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mZoomOffsetX:F

    .line 289
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 290
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->requestLayout()V

    .line 292
    :cond_0
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .locals 1
    .param p1, "showCropOverlay"    # Z

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    if-eq v0, p1, :cond_0

    .line 495
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowCropOverlay:Z

    .line 496
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropOverlayVisibility()V

    .line 498
    :cond_0
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 1
    .param p1, "showProgressBar"    # Z

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    if-eq v0, p1, :cond_0

    .line 474
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mShowProgressBar:Z

    .line 475
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 477
    :cond_0
    return-void
.end method

.method public setSnapRadius(F)V
    .locals 1
    .param p1, "snapRadius"    # F

    .prologue
    .line 455
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 458
    :cond_0
    return-void
.end method

.method public startCropWorkerTask(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 24
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;
    .param p4, "saveUri"    # Landroid/net/Uri;
    .param p5, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p6, "saveCompressQuality"    # I

    .prologue
    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    move-object/from16 v23, v2

    .line 1059
    .local v23, "currentTask":Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
    :goto_0
    if-eqz v23, :cond_0

    .line 1061
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->cancel(Z)Z

    .line 1064
    :cond_0
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_4

    .line 1065
    :goto_1
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_5

    .line 1067
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v7, v2, v3

    .line 1068
    .local v7, "orgWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    mul-int v8, v2, v3

    .line 1069
    .local v8, "orgHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedSampleSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 1070
    :cond_1
    new-instance v18, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mLoadedImageUri:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1072
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v11

    move-object/from16 v3, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v2 .. v17}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    .line 1081
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setProgressBarVisibility()V

    .line 1084
    .end local v7    # "orgWidth":I
    .end local v8    # "orgHeight":I
    .end local v23    # "currentTask":Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
    :cond_2
    return-void

    .line 1058
    :cond_3
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1064
    .restart local v23    # "currentTask":Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;
    :cond_4
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 1065
    :cond_5
    const/16 p2, 0x0

    goto/16 :goto_2

    .line 1076
    .restart local v7    # "orgWidth":I
    .restart local v8    # "orgHeight":I
    :cond_6
    new-instance v2, Ljava/lang/ref/WeakReference;

    new-instance v9, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mDegreesRotated:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 1077
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v16

    move-object/from16 v10, p0

    move/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v22, p6

    invoke-direct/range {v9 .. v22}, Lcom/theartofdev/edmodo/cropper/BitmapCroppingWorkerTask;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    invoke-direct {v2, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->mBitmapCroppingWorkerTask:Ljava/lang/ref/WeakReference;

    goto :goto_3
.end method
