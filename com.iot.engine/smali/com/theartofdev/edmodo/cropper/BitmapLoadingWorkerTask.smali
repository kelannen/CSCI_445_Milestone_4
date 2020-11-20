.class final Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapLoadingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mUri:Landroid/net/Uri;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V
    .locals 6
    .param p1, "cropImageView"    # Lcom/theartofdev/edmodo/cropper/CropImageView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    .line 58
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 63
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v4, v3

    float-to-double v0, v3

    .line 64
    .local v0, "densityAdj":D
    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v0

    double-to-int v3, v4

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mWidth:I

    .line 65
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v0

    double-to-int v3, v4

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mHeight:I

    .line 66
    return-void

    .line 63
    .end local v0    # "densityAdj":D
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mWidth:I

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mHeight:I

    .line 87
    invoke-static {v3, v4, v5, v6}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    .line 89
    .local v0, "decodeResult":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    .line 92
    invoke-static {v3, v4, v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v2

    .line 94
    .local v2, "rotateResult":Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    new-instance v3, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    iget-object v5, v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    iget v7, v2, Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;->degrees:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "decodeResult":Lcom/theartofdev/edmodo/cropper/BitmapUtils$BitmapSampled;
    .end local v2    # "rotateResult":Lcom/theartofdev/edmodo/cropper/BitmapUtils$RotateBitmapResult;
    :goto_0
    return-object v3

    .line 97
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->doInBackground([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    .prologue
    .line 110
    if-eqz p1, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "completeCalled":Z
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->mCropImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 114
    .local v1, "cropImageView":Lcom/theartofdev/edmodo/cropper/CropImageView;
    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->onSetImageUriAsyncComplete(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V

    .line 119
    .end local v1    # "cropImageView":Lcom/theartofdev/edmodo/cropper/CropImageView;
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    .end local v0    # "completeCalled":Z
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask;->onPostExecute(Lcom/theartofdev/edmodo/cropper/BitmapLoadingWorkerTask$Result;)V

    return-void
.end method
